import functools
import logging
import re

from abc import ABC, abstractmethod
from dataclasses import dataclass
from dataclass_wizard import JSONWizard
from typing import Optional

logger = logging.getLogger("tf-schema")

RESERVED = set(["assert", "else", "error", "false", "for", "function", "if", "import", "importstr", "importbin", "in", "local", "null", "tailstrict", "then", "self", "super", "true"])
SYMBOLS = set("{}[],.();")
METADATA_FIELD = "jsonnetTfMetadata"
TERRAFORM_NAME_PARAM = "terraformName"
WITH_TERRAFORM_NAME_FN_NAME = "withTerraformName"

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
    block_kwargs = kwargs.copy()
    block_kwargs["is_block_type"] = True
    return self.block.to_jsonnet(name, **block_kwargs)

@dataclass
class Attribute(JSONWizard, JsonnetGeneratorInterface):
  type: str | list[str]
  description: str | None = None
  required: bool | None = None
  optional: bool | None = None
  computed: bool | None = None
  sensitive: bool | None = None

  def is_readonly(self) -> bool:
    return self.computed and not (self.optional or self.required)

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
    is_library_top_level = name == kwargs["library_name"]
    attributes = self.attributes
    attributes_in_new = {
      name: attribute
      for name, attribute in attributes.items()
      if attribute.required
    }
    has_native_name = "name" in self.attributes
    new_fn = jsonnet_new_fn(name, attributes_in_new, attributes, has_native_name, **kwargs)
    attributes = [new_fn] + [
      attribute.to_jsonnet(name, **kwargs)
      for name, attribute in self.attributes.items()
      if not attribute.is_readonly()
    ]
    if is_library_top_level:
      attributes.append(jsonnet_with_terraform_name())
    attributes_str = ",\n".join(attributes)
    if self.block_types is not None:
      block_type_fns = [
        # block types
        block_type.to_jsonnet(name, **kwargs)
        for name, block_type in self.block_types.items()
      ] + [
        # with fns
        jsonnet_with_fn(name, auto_conversion(block_type.nesting_mode, from_localvar="value", to_localvar="converted"))
        for name, block_type in self.block_types.items()
      ] + [
        # with mixin fns
        jsonnet_with_fn_mixin(name, auto_conversion(block_type.nesting_mode, from_localvar="value", to_localvar="converted"))
        for name, block_type in self.block_types.items()
        if self.block_types[name].nesting_mode in ["set", "list"]
      ]
      # if is_library_top_level:
      #   block_type_fns += [jsonnet_with_terraform_name()]
      block_types = ",\n".join(block_type_fns)
    else:
      block_types = ""
    body_parts = ["local block = self"]
    if len(attributes_str) > 0:
      body_parts.append(attributes_str)
    if len(block_types) > 0:
      body_parts.append(block_types)
    body = ",\n".join(body_parts)
    # if the block is the main block for the library, keep it at the top level
    if is_library_top_level:
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
    provider_source = kwargs["provider_source"]
    provider_version = kwargs["provider_version"]
    provider = ",\n".join([
      f'version:: "{provider_version}"',
      f'source:: "{provider_source}"',
      self.provider.to_jsonnet(name, **kwargs, terraform_type="provider")
    ])
    resource_schemas = {
      name: resource_schema.to_jsonnet(name, library_name=name, terraform_type="resource")
      for name, resource_schema in self.resource_schemas.items()
    }
    data_source_schemas = {
      name: data_source_schema.to_jsonnet(name, library_name=name, terraform_type="data")
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

def jsonnet_new_fn(name, attributes_in_new, attributes, has_native_name, **kwargs):
  is_library_top_level = name == kwargs["library_name"]
  params = attributes_in_new.keys()
  # top level new() functions require a terraform name parameter for terraform metadata
  if is_library_top_level:
    params = [TERRAFORM_NAME_PARAM] + list(params)
  else:
    params = list(params)

  # ensure terraform name goes first in param list
  def key(param):
    if param == TERRAFORM_NAME_PARAM:
      return ""
    return param
  params = sorted(params, key=key)
  params = [camel_case(param) for param in params]

  params_str = ", ".join(params)
  library_name = kwargs["library_name"]
  terraform_type = kwargs["terraform_type"]
  terraform_prefix = "data" if terraform_type == "data" else ""
  tf_attributes = list(attributes.keys())

  new_body_parts = []
  if is_library_top_level:
    metadata = f"""{{
      {METADATA_FIELD}:: {{
        terraformObject:: '{library_name}',
        terraformType:: '{terraform_type}',
        terraformPrefix:: '{terraform_prefix}',
        terraformAttributes:: {tf_attributes},
      }}
    }}"""
    new_body_parts.append(metadata)
  else:
    new_body_parts.append("{}")
  if "name" in attributes.keys() and not "name" in attributes_in_new.keys():
    # force the name call even if it wasn't required since we're passing it in
    fn_name = jsonnet_with_fn_name("name")
    new_body_parts.append(f"block.{fn_name}(name)")
  for param in params:
    fn_name = jsonnet_with_fn_name(param)
    new_body_parts.append(f"block.{fn_name}({param})")

  new_body = "\n+ ".join(new_body_parts)
  # new_body = "\n".join(["{"] + new_body_parts + ["}"])
  new_parts = [f"new({params_str}):: (", new_body, ")"]
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

def camel_case(s) -> str:
  return re.sub(r'_([a-z])', lambda match: match.group(1).upper(), s)

def jsonnet_with_fn_name(name) -> str:
  return camel_case(f"with_{name}")

def jsonnet_with_fn_mixin_name(name) -> str:
  return camel_case(f"with_{name}_mixin")

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

def jsonnet_with_terraform_name() -> str:
  return f"""{WITH_TERRAFORM_NAME_FN_NAME}(value):: {{
    {METADATA_FIELD}+:: {{
      terraformName:: value,
    }},
  }}"""

