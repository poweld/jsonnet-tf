import logging
import json
import os
import subprocess
import tempfile
import time
import tf_schema

from dataclasses import dataclass
from dataclass_wizard import JSONWizard

logger = logging.getLogger("jsonnet-tf")
artifacts_dir = f"/artifacts"

def main():
  providers_schema: tf_schema.ProvidersSchema = get_providers_schema()
  # logging.info(schemas.format_version)
  for provider, provider_schema in providers_schema.provider_schemas.items():
    # logger.info(provider_schema)
    path = provider
    provider_name = provider.split("/")[-1]
    provider_dir = f"{artifacts_dir}/{path}"
    logging.info(provider_dir)
    os.makedirs(provider_dir, exist_ok=True)
    # logger.info(provider_schema.resource_schemas.get("aws_apigatewayv2_api").block.attributes.get("api_endpoint").type)
    logger.info(provider_schema.resource_schemas.get("aws_instance"))
    schema = provider_schema.resource_schemas.get("aws_instance")
    # print("{\naws_elasticsearch_domain:: {")
    # print(tf_schema.to_jsonnet(schema, name="aws_elasticsearch_domain"))
    # print("}\n}")
    print("{")
    print(tf_schema.to_jsonnet(provider_schema, name=provider))
    print("}")

def get_providers_schema() -> tf_schema.ProvidersSchema:
  if os.path.isfile(f"{artifacts_dir}/schema.json"):
    logger.info("schema already exists, skipping download")
  else:
    with tempfile.TemporaryDirectory() as tempdir:
      # TODO retrieve providers to fetch from user (click, probably)
      main_tf = {
        "terraform": {
          "required_providers": {
            "aws": {
              "source":"hashicorp/aws",
              "version": "~> 6.3.0"
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

      subprocess.run(args=["mv", f"{tempdir}/schema.json", f"{artifacts_dir}/"])

  with open(f"{artifacts_dir}/schema.json", "r") as schemas_file:
    return tf_schema.ProvidersSchema.from_json(schemas_file.read())


if __name__ == '__main__':
  logging.root.setLevel(logging.WARN)
  logging.basicConfig()
  main()
