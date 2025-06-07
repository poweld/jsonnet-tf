import logging
import json
import os
import subprocess
import tempfile
import time

from typing import Any

logger = logging.getLogger("jsonnet-tf")

def main():
  schemas = get_schemas_json()
  for provider in schemas.get("provider_schemas"):
    logger.info(provider)

def get_schemas_json() -> dict[Any, Any]:
  project_dir = os.getcwd()
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
    schemas = json.load(schemas_file)
    return schemas


if __name__ == '__main__':
  logging.root.setLevel(logging.INFO)
  logging.basicConfig()
  main()
