import logging

from abc import ABC, abstractmethod
from dataclasses import dataclass
from dataclass_wizard import JSONWizard
from typing import Optional

logger = logging.getLogger("tf-schema")

RESERVED = set(["assert", "else", "error", "false", "for", "function", "if", "import", "importstr", "importbin", "in", "local", "null", "tailstrict", "then", "self", "super", "true"])
SYMBOLS = set("{}[],.();")

class JsonnetGeneratorInterface(ABC):
  @abstractmethod
  def to_jsonnet(self, name: Optional[str] = None, **kwargs) -> Optional[str] | dict:
    """Generate the jsonnet for the Terraform object"""
    raise NotImplemetedError

@dataclass
class BlockType(JSONWizard, JsonnetGeneratorInterface):
  nesting_mode: str
  block: 'Block'  # Need forward reference
  min_items: int | None = None
  max_items: int | None = None

  def to_jsonnet(self, name: Optional[str] = None, **kwargs) -> Optional[str] | dict:
    # TODO handle min/max_items
    return self.block.to_jsonnet(name, **kwargs)

@dataclass
class Attribute(JSONWizard, JsonnetGeneratorInterface):
  type: str | list[str]
  description: str | None = None
  required: bool | None = None
  optional: bool | None = None
  computed: bool | None = None
  sensitive: bool | None = None

  def to_jsonnet(self, name: Optional[str] = None, **kwargs) -> Optional[str] | dict:
    _conversion = auto_conversion(self.type, from_localvar="value", to_localvar="converted")
    _assertion = assertion(self.type, name, "converted")
    fn_name = jsonnet_with_fn_name(name)
    _description = description(self, fn_name)
    if name in RESERVED:
      field = f'"{name}"'
    else:
      field = name
    fns = []
    if _description is not None:
      fns.append(_description)
    fns.append(f"""{fn_name}(value):: (
      {_conversion}
      {_assertion}
      {{
        {field}: converted,
      }}
    )""")
    # add mixins for lists
    match self.type:
      # the type for a list or set will be a two element list
      # the container type is the first element, the element type is the second
      case list():
        match self.type[0]:
          case "list" | "set":
            fn_name = jsonnet_with_fn_mixin_name(name)
            _description = description(self, fn_name)
            if _description is not None:
              fns.append(_description)
            fns.append(f"""{fn_name}(value):: (
              {_conversion}
              {_assertion}
              {{
                {field}+: converted,
              }}
            )""")
          case _:
            pass
      case _:
        pass

    return ",\n".join(fns)

@dataclass
class Block(JSONWizard, JsonnetGeneratorInterface):
  attributes: dict[str, Attribute] | None = None
  block_types: dict[str, BlockType] | None = None

  def to_jsonnet(self, name: Optional[str] = None, **kwargs) -> Optional[str] | dict:
    if self.attributes is not None:
      attributes_in_new = {
        name: attribute
        for name, attribute in self.attributes.items()
        if attribute.required
      }
      new_fn = jsonnet_new_fn(name, attributes_in_new)
      attributes = ",\n".join([new_fn] + [
        attribute.to_jsonnet(name, **kwargs)
        for name, attribute in self.attributes.items()
      ])
    else:
      new_fn = jsonnet_new_fn(name, {})
      attributes = new_fn
    if self.block_types is not None:
      block_type_fns = [
        block_type.to_jsonnet(name, **kwargs)
        for name, block_type in self.block_types.items()
      ] + [
        jsonnet_with_fn(name, auto_conversion(block_type.nesting_mode, from_localvar="value", to_localvar="converted"))
        for name, block_type in self.block_types.items()
      ] + [
        jsonnet_with_fn_mixin(name, auto_conversion(block_type.nesting_mode, from_localvar="value", to_localvar="converted"))
        for name, block_type in self.block_types.items()
        if self.block_types[name].nesting_mode in ["set", "list"]
      ]
      block_types = ",\n".join(block_type_fns)
      # TODO need to handle nesting_mode, which can be one of: single, list, set
      # should add mixin functions if list or set
    else:
      block_types = ""
    body_parts = ["local block = self"]
    if len(attributes) > 0:
      body_parts.append(attributes)
    if len(block_types) > 0:
      body_parts.append(block_types)
    body = ",\n".join(body_parts)
    # if the block is the main block for the library, keep it at the top level
    if name == kwargs["library_name"]:
      return body
    else:
      # if a symbol is in the key, quote it
      if any(c in SYMBOLS for c in name):
        return f"'{name}':: {{\n{body}\n}}"
      else:
        return f"{name}:: {{\n{body}\n}}"

@dataclass
class Schema(JSONWizard, JsonnetGeneratorInterface):
  version: int  # schema version, not the provider version
  block: Block

  def to_jsonnet(self, name: Optional[str] = None, **kwargs) -> Optional[str] | dict:
    return self.block.to_jsonnet(name, **kwargs)

@dataclass
class ProviderSchema(JSONWizard, JsonnetGeneratorInterface):
  provider: Schema
  resource_schemas: dict[str, Schema]
  data_source_schemas: dict[str, Schema]

  def to_jsonnet(self, name: Optional[str] = None, **kwargs) -> Optional[str] | dict:
    #provider = self.provider.to_jsonnet(name, **kwargs)
    provider_version = kwargs["provider_version"]
    provider = ",\n".join([
      f'version:: "{provider_version}"',
      self.provider.to_jsonnet(name, **kwargs)
    ])
    # TODO has to be a better way to handle the overriding of a kwarg :-/
    resource_schemas = {
      name: resource_schema.to_jsonnet(name, library_name=name, provider_version=kwargs["provider_version"])
      for name, resource_schema in self.resource_schemas.items()
    }
    data_source_schemas = {
      name: data_source_schema.to_jsonnet(name, library_name=name, provider_version=kwargs["provider_version"])
      for name, data_source_schema in self.data_source_schemas.items()
    }
    return {
      "provider": provider,
      "resource_schemas": resource_schemas,
      "data_source_schemas": data_source_schemas,
    }

@dataclass
class ProvidersSchema(JSONWizard):
  class _(JSONWizard.Meta):
    recursive_classes = True
  format_version: str
  provider_schemas: dict[str, ProviderSchema]

def jsonnet_new_fn(name, attributes):
  params = attributes.keys()
  params_str = ",".join(params)
  new_parts = [f"new({params_str}):: (", "{}"]
  for param in params:
    fn_name = jsonnet_with_fn_name(param)
    new_parts.append(f"+ block.{fn_name}({param})")
  new_parts.append(")")
  return "\n".join(new_parts)

def auto_conversion(type, from_localvar, to_localvar):
  match type:
    case list():
      # This case will be hit for both list and set types, which have two elements,
      # one for the container type, one for the element type
      return auto_conversion(type[0], from_localvar, to_localvar)
    case "list" | "set":
      return f"local {to_localvar} = if std.isArray({from_localvar}) then {from_localvar} else [{from_localvar}];"
    case _:
      return f"local {to_localvar} = {from_localvar};"

def assertion(type, name, localvar):
  error_message = f'"\\"{name}\\" expected to be of type \\"{type}\\""'
  match type:
    case list():
      # This case will be hit for both list and set types, which have two elements,
      # one for the container type, one for the element type
      return assertion(type[0], name, localvar)
    case "string":
      return f"assert std.isString({localvar}) : {error_message};"
    case "number":
      return f"assert std.isNumber({localvar}) : {error_message};"
    case "bool":
      return f"assert std.isBoolean({localvar}) : {error_message};"
    case "list":
      return f"assert std.isArray({localvar}) : {error_message};"
    case "set":
      # set is not its own type in jsonnet
      return f"assert (std.isArray({localvar}) && std.length(std.set({localvar})) == std.length({localvar})) : {error_message};"
    case "map":
      return f"assert std.isObject({localvar}) : {error_message};"
    # map is always <string, string>
    case "object":
      return f"assert std.isObject({localvar}) : {error_message};"
    case _:
      logger.warning(f'type "{type}" did not match any known type')
      return ""

def description(attribute, fn_name) -> Optional[str]:
  if attribute.description is not None:
    _description = attribute.description.replace("\n", " ").replace("\"", "'")
    return f'"#{fn_name}":: "{_description}"'
  return None

def jsonnet_with_fn_name(name) -> str:
  return f"with_{name}"

def jsonnet_with_fn_mixin_name(name) -> str:
  return f"with_{name}_mixin"

def jsonnet_with_fn(name, _conversion) -> str:
  fn_name = jsonnet_with_fn_name(name)
  return f"""{fn_name}(value):: (
    {_conversion}
    {{
      {name}: value,
    }}
  )"""

def jsonnet_with_fn_mixin(name, _conversion) -> str:
  fn_name = jsonnet_with_fn_mixin_name(name)
  return f"""{fn_name}(value):: (
    {_conversion}
    {{
      {name}+: converted,
    }}
  )"""

