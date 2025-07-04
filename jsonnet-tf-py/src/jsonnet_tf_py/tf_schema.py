import logging

from dataclasses import dataclass
from dataclass_wizard import JSONWizard
from typing import Optional

logger = logging.getLogger("tf-schema")

logger = logging.getLogger(__name__)

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

def to_jsonnet(obj: ProviderSchema | Schema | Block | Attribute | BlockType, name: Optional[str] = None) -> Optional[str]:
  match obj:
    case ProviderSchema():
      logger.info("ProviderSchema")
      provider = to_jsonnet(obj.provider)
      resource_schemas = ",".join([
        to_jsonnet(resource_schema, name=name)
        for name, resource_schema in obj.resource_schemas.items()
      ])
      data_source_schemas = ",".join([
        to_jsonnet(data_source_schema, name=name)
        for name, data_source_schema in obj.data_source_schemas.items()
      ])
      return "{},{},{}".format(provider, resource_schemas, data_source_schemas)
    case Schema():
      logger.info("Schema")
      return "{}".format(to_jsonnet(obj.block, name=name))
    case Block():
      logger.info("Block")
      attributes_in_new = {
        name: attribute
        for name, attribute in obj.attributes.items()
        if attribute.include_in_new()
      }
      new_fn = jsonnet_new_fn(name, attributes_in_new)
      logger.info("new fn: " + new_fn)
      attributes = ",".join([
        to_jsonnet(attribute, name=name)
        for name, attribute in obj.attributes.items()
      ])
      block_types = ",".join([
        to_jsonnet(block_type, name=name)
        for name, block_type in obj.block_types.items()
      ])
      return "{}{}".format(attributes, block_types)
    case Attribute():
      logger.info("Attribute")
      # return "todoAttribute():: {}"
      return jsonnet_attr_fns(name, obj)
    case BlockType():
      logger.info("BlockType")
      return "todoBlockType():: {}"
    case _:
      return ""

def jsonnet_new_fn(name, attributes):
  new = f"new_{name}("
  new = new + ",".join([
    attr_name
    for attr_name in attributes.keys()
  ])
  new = new + "):: {}"
  return new

def assertion(type):
  logger.info(f"assertion({type})")
  match type:
    case list():
      logger.info(f"list type: {type}")
      return assertion(type[0])
    case "string":
      return "assert std.isString(value);"
    case "number":
      return "assert std.isNumber(value);"
    case "bool":
      return "assert std.isBoolean(value);"
    case "list":
      return "assert std.isList(value);"
    case "set":
      return "assert std.isList(value);"  # set is not its own type in jsonnet
    case "map":
      return "assert std.isObject(value);"
  return ""

def jsonnet_attr_fns(name, attribute):
  _assertion = assertion(attribute.type)
  return f"""with_{name}(value):: (
    {_assertion}
    {{
      {name}: value,
    }}
  )"""

