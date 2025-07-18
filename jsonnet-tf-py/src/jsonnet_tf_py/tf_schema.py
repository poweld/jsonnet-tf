import logging

from dataclasses import dataclass
from dataclass_wizard import JSONWizard
from typing import Optional

logger = logging.getLogger("tf-schema")

logger = logging.getLogger(__name__)

RESERVED = set(["assert", "else", "error", "false", "for", "function", "if", "import", "importstr", "importbin", "in", "local", "null", "tailstrict", "then", "self", "super", "true"])

@dataclass
class BlockType(JSONWizard):
  nesting_mode: str
  block: 'Block'  # Need forward reference
  min_items: int | None = None
  max_items: int | None = None

@dataclass
class Attribute(JSONWizard):
  type: str | list[str]
  description: str | None = None
  required: bool | None = None
  optional: bool | None = None
  computed: bool | None = None
  sensitive: bool | None = None

  def include_in_new(self) -> bool:
    return self.required

@dataclass
class Block(JSONWizard):
  attributes: dict[str, Attribute] | None = None
  block_types: dict[str, BlockType] | None = None

@dataclass
class Schema(JSONWizard):
  version: int
  block: Block

@dataclass
class ProviderSchema(JSONWizard):
  provider: Schema
  resource_schemas: dict[str, Schema]
  data_source_schemas: dict[str, Schema]

@dataclass
class ProvidersSchema(JSONWizard):
  class _(JSONWizard.Meta):
    recursive_classes = True
  format_version: str
  provider_schemas: dict[str, ProviderSchema]

def to_jsonnet(obj: ProviderSchema | Schema | Block | Attribute | BlockType, name: Optional[str] = None) -> Optional[str] | dict:
  match obj:
    case ProviderSchema():
      logger.info("ProviderSchema")
      provider = to_jsonnet(obj.provider, name=f'"{name}"')
      # TODO return these resource_schemas and data_source_schemas to the caller so we can output to different files
      # TODO add "terraformObject" field, should be configurable what the key is but that can come later
      resource_schemas = {
        name: to_jsonnet(resource_schema, name=name)
        for name, resource_schema in obj.resource_schemas.items()
      }
      data_source_schemas = {
        name: to_jsonnet(data_source_schema, name=name)
        for name, data_source_schema in obj.data_source_schemas.items()
      }
      return {
        "provider": provider,
        "resource_schemas": resource_schemas,
        "data_source_schemas": data_source_schemas,
      }
    case Schema():
      logger.info("Schema")
      return to_jsonnet(obj.block, name=name)
    case Block():
      logger.info("Block")
      if obj.attributes is not None:
        attributes_in_new = {
          name: attribute
          for name, attribute in obj.attributes.items()
          if attribute.include_in_new()
        }
        new_fn = jsonnet_new_fn(name, attributes_in_new)
        logger.info("new fn: " + new_fn)
        attributes = ",\n".join([new_fn] + [
          to_jsonnet(attribute, name=name)
          for name, attribute in obj.attributes.items()
        ])
      else:
      # TODO need with_ functions for sub-block_types
        new_fn = jsonnet_new_fn(name, {})
        attributes = new_fn
      if obj.block_types is not None:
        block_types = ",\n".join([
          to_jsonnet(block_type, name=name)
          for name, block_type in obj.block_types.items()
        ] + [
          jsonnet_with_fn(name)
          for name in obj.block_types.keys()
        ])
      else:
        block_types = ""
      body_parts = ["local block = self"]
      if len(attributes) > 0:
        body_parts.append(attributes)
      if len(block_types) > 0:
        body_parts.append(block_types)
      body = ",\n".join(body_parts)
      return f"{name}:: {{\n{body}\n}}"
    case Attribute():
      logger.info("Attribute")
      return jsonnet_attr_fns(name, obj)
    case BlockType():
      # TODO needs a "new" fn, handle nesting_mode, min_items, max_items
      logger.info("BlockType")
      block = to_jsonnet(obj.block, name=name)
      # return f"{name}:: {{\n{block}\n}}"
      return block
    case _:
      return ""

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
  error_message = f'"{name} expected to be of type \\"{type}\\""'
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
    # TODO: what's the difference between map and object?
    # seems like map is always <string, string>
    # whereas object defines a custom object as the second element
    # also, objects can have depth (objects as values) whereas maps are strictly key/value with no depth
    case "object":
      return f"assert std.isObject({localvar}) : {error_message};"
    case _:
      logger.warning(f'type "{type}" did not match any known type')
      return ""

def description(attribute, fn_name):
  if attribute.description is not None:
    _description = attribute.description.replace("\n", " ").replace("\"", "'")
    return f'"#{fn_name}":: "{_description}"'
  return None 

def jsonnet_with_fn_name(name):
  return f"with_{name}"

def jsonnet_with_fn_mixin_name(name):
  return f"with_{name}_mixin"

def jsonnet_with_fn(name):
  fn_name = jsonnet_with_fn_name(name)
  return f"""{fn_name}(value):: (
    {{
      {name}: value,
    }}
  )"""

def jsonnet_attr_fns(name, attribute):
  _conversion = auto_conversion(attribute.type, from_localvar="value", to_localvar="converted")
  _assertion = assertion(attribute.type, name, "converted")
  fn_name = jsonnet_with_fn_name(name)
  _description = description(attribute, fn_name)
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
  match attribute.type:
    case list():
      match attribute.type[0]:
        case "list" | "set":
          fn_name = jsonnet_with_fn_mixin_name(name)
          _description = description(attribute, fn_name)
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

