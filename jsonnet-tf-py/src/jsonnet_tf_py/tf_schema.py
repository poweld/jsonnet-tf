import logging
import os

from dataclasses import dataclass
from dataclass_wizard import JSONWizard
from typing import Any, TypedDict

logger = logging.getLogger(__name__)

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

def generate_providers_schema(project_dir) -> ProvidersSchema:
  if os.path.isfile(f"{project_dir}/schema.json"):
    logger.info("schema already exists, skipping download")
  else:
    with tempfile.TemporaryDirectory() as tempdir:
      # TODO retrieve providers to fetch from user (click, probably)
      main_tf = {
        "terraform": {
          "required_providers": {
            "aws": {
              "source":"hashicorp/aws",
              "version": "~> 5.91"
            }
          },

          "required_version": ">= 1.12.1"
        }
      }
      main_tf_json = json.dumps(main_tf)
      with open(f"{tempdir}/main.tf.json", "w") as main_tf_json_file:
        main_tf_json_file.write(main_tf_json)
        main_tf_json_file.flush()

      subprocess.run(args=["terraform", "init"], cwd=tempdir)
      with open(f"{tempdir}/schema.json", "w") as schema_file:
        subprocess.run(args=["terraform", "providers", "schema", "-json"], cwd=tempdir, stdout=schema_file)
        schema_file.flush()

      subprocess.run(args=["mv", f"{tempdir}/schema.json", f"{project_dir}/"])

  with open("schema.json", "r") as schemas_file:
    # schemas = json.load(schemas_file)
    return ProvidersSchema.from_json(schemas_file.read())
    # return schemas
