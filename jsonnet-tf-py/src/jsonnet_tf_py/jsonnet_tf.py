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
project_dir = os.getcwd()
output_dir = f"{project_dir}/output"

def main():
  providers_schema: tf_schema.ProvidersSchema = tf_schema.generate_providers_schema(project_dir)
  # logging.info(schemas.format_version)
  for provider, provider_schema in providers_schema.provider_schemas.items():
    # logger.info(provider_schema)
    path = provider
    provider_name = provider.split("/")[-1]
    provider_dir = f"{output_dir}/{path}"
    logging.info(provider_dir)
    os.makedirs(provider_dir, exist_ok=True)
    # logger.info(provider_schema.resource_schemas.get("aws_apigatewayv2_api").block.attributes.get("api_endpoint").type)
    for resource_type, resource_schema in provider_schema.resource_schemas.items():
      logger.info(resource_type)
    # logger.info(provider_schema.resource_schemas.get("aws_instance"))


if __name__ == '__main__':
  logging.root.setLevel(logging.INFO)
  logging.basicConfig()
  main()
