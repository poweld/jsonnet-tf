"""Jsonnet-tf main module.

This tool generates Jsonnet libraries from Terraform provider schemas.
"""

import json
import logging
import os
import subprocess
import tempfile

import _jsonnet
import click

import tf_schema


# Configure logging
logger = logging.getLogger("jsonnet-tf")

# Default artifacts directory
ARTIFACTS_DIR = "/artifacts"


def get_providers_schema(
    provider: str,
    provider_source: str,
    provider_version: str,
    terraform_version: str,
    artifacts_dir: str = ARTIFACTS_DIR,
    force: bool = False,
) -> tf_schema.ProvidersSchema:
    """Get the provider schema from Terraform.

    Args:
        provider: Provider name
        provider_source: Provider source
        provider_version: Provider version
        terraform_version: Terraform version
        artifacts_dir: Directory to store artifacts
        force: Force download even if schema exists

    Returns:
        ProvidersSchema object
    """
    schema_path = f"{artifacts_dir}/schema.json"

    # Skip download if schema exists and not forced
    if not force and os.path.isfile(schema_path):
        logger.info("Schema already exists, skipping download")
    else:
        # Create temporary directory for Terraform
        with tempfile.TemporaryDirectory() as tempdir:
            # Generate main.tf.json using jsonnet
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

            # Write main.tf.json file
            tf_json_path = f"{tempdir}/main.tf.json"
            with open(tf_json_path, "w") as main_tf_json_file:
                main_tf_json_file.write(main_tf_json)
                main_tf_json_file.flush()

            try:
                # Initialize Terraform
                subprocess.run(args=["terraform", "init"], cwd=tempdir, check=True)

                # Get provider schema
                schema_file_path = f"{tempdir}/schema.json"
                with open(schema_file_path, "w") as schema_file:
                    subprocess.run(
                        args=["terraform", "providers", "schema", "-json"],
                        cwd=tempdir,
                        stdout=schema_file,
                        check=True,
                    )
                    schema_file.flush()

                # Move schema to artifacts directory
                subprocess.run(args=["mv", schema_file_path, artifacts_dir], check=True)
            except subprocess.SubprocessError as e:
                logger.error(f"Error running Terraform: {e}")
                raise

    # Parse schema file
    try:
        with open(schema_path, "r") as schemas_file:
            schema_data = schemas_file.read()
            return tf_schema.ProvidersSchema.from_json(schema_data)
    except (json.JSONDecodeError, FileNotFoundError) as e:
        logger.error(f"Error parsing schema file: {e}")
        raise


@click.command()
@click.option("--provider", required=True, help="The provider, e.g. hashicorp/aws")
@click.option("--provider-version", required=True, help="The provider version, e.g. '~> 5.3.0'")
@click.option("--terraform-version", required=True, help="The terraform version, e.g. '>= 1.12.1'")
@click.option(
    "--force",
    is_flag=True,
    default=False,
    help="Force the downloading of the schema even if it already exists",
)
def main(provider: str, provider_version: str, terraform_version: str, force: bool) -> None:
    """Generate Jsonnet files from Terraform provider schemas."""
    try:
        provider_source = provider
        provider = provider_source.split("/")[-1]

        # Get provider schemas
        providers_schema = get_providers_schema(
            provider, provider_source, provider_version, terraform_version, ARTIFACTS_DIR, force
        )

        # Generate files for each provider
        for provider_path, provider_schema in providers_schema.provider_schemas.items():
            tf_schema.generate_provider(
                provider_path, provider_schema, provider_source, provider_version, ARTIFACTS_DIR
            )
    except Exception as e:
        logger.error(f"Error generating provider files: {e}")
        raise


if __name__ == "__main__":
    logging.root.setLevel(logging.INFO)
    logging.basicConfig()
    main()
