import logging

from dataclasses import dataclass
from dataclass_wizard import JSONWizard
from typing import Optional

logger = logging.getLogger("tf-schema")

@dataclass
class BlockType(JSONWizard):
  nesting_mode: str
  block: 'Block'  # Need forward reference
  min_items: int | None = None
  max_items: int | None = None

@dataclass
class Attribute(JSONWizard):
  type: str
  description: str | None = None
  required: bool | None = None
  optional: bool | None = None
  computed: bool | None = None
  sensitive: bool | None = None

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
      return "{}".format(to_jsonnet(obj.block))
    case Block():
      logger.info("Block")
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
      return "todoAttribute():: {}"
    case BlockType():
      logger.info("BlockType")
      return "todoBlockType():: {}"
    case _:
      return ""
