import logging
import json
import _jsonnet
import os
import subprocess
import tempfile
import time
import tf_schema

from dataclasses import dataclass
from dataclass_wizard import JSONWizard

logger = logging.getLogger("jsonnet-tf")
artifacts_dir = "/artifacts"


def generate_provider(provider, provider_schema, provider_version):
  path = provider
  provider_name = provider.split("/")[-1]
  provider_dir = f"{artifacts_dir}/{path}"
  resource_dir = f"{provider_dir}/resource"
  data_source_dir = f"{provider_dir}/data_source"
  for dir in [provider_dir, resource_dir, data_source_dir]:
    os.makedirs(dir, exist_ok=True)
  jsonnet_provider_schema = provider_schema.to_jsonnet(provider, library_name=provider, provider_version=provider_version)
  # write the provider out
  with open(f"{provider_dir}/provider.libsonnet", "w") as f:
    f.write("{\n")
    f.write(jsonnet_provider_schema["provider"])
    f.write("\n}")
  # write the resources
  for name, resource in jsonnet_provider_schema["resource_schemas"].items():
    with open(f"{resource_dir}/{name}.libsonnet", "w") as f:
      f.write("{\n")
      f.write(resource)
      f.write("\n}")
  # write the data_sources
  for name, data_source in jsonnet_provider_schema["data_source_schemas"].items():
    with open(f"{data_source_dir}/{name}.libsonnet", "w") as f:
      f.write("{\n")
      f.write(data_source)
      f.write("\n}")

def main():
  # TODO retrieve providers to fetch from user (click, probably)
  # providers = {
  #   "okta/okta": "~> 5.2.0",
  #   "hashicorp/aws": "~> 6.3.0",
  # }
  provider = "okta"
  provider_source = "okta/okta"
  provider_version = "~> 5.2.0"
  terraform_version = ">= 1.12.1"
  providers_schema = get_providers_schema(provider, provider_source, provider_version, terraform_version)
  for provider, provider_schema in providers_schema.provider_schemas.items():
    generate_provider(provider, provider_schema, provider_version)

def get_providers_schema(
  provider: str,
  provider_source: str,
  provider_version: str,
  terraform_version: str
) -> tf_schema.ProvidersSchema:
  if os.path.isfile(f"{artifacts_dir}/schema.json"):
    logger.info("schema already exists, skipping download")
  else:
    with tempfile.TemporaryDirectory() as tempdir:
      tla_vars = {
        "provider": provider,
        "provider_source": provider_source,
        "provider_version": provider_version,
        "terraform_version": terraform_version,
      }
      main_tf_json = _jsonnet.evaluate_file(
        "terraform_providers.jsonnet",
        tla_vars=tla_vars,
      )
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
  logging.root.setLevel(logging.INFO)
  logging.basicConfig()
  main()
