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

def to_jsonnet(obj: ProviderSchema | Schema | Block | Attribute | BlockType) -> Optional[str]:
  match obj:
    case ProviderSchema():
      logger.info("ProviderSchema")
    case Schema():
      logger.info("Schema")
    case Block():
      logger.info("Block")
    case Attribute():
      logger.info("Attribute")
    case BlockType():
      logger.info("BlockType")
    case _:
      return ""
