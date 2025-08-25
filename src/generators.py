"""Code generators for Jsonnet Terraform files."""

import logging
import os
from typing import List

from models import ProviderSchema


logger = logging.getLogger("jsonnet-tf.generators")


class JsonnetFileGenerator:
    """Generator for Jsonnet files from Terraform provider schemas.

    This class handles writing the generated Jsonnet code to files
    in the appropriate directory structure.
    """

    def __init__(self, artifacts_dir: str = "/artifacts"):
        """Initialize the generator.

        Args:
            artifacts_dir: Directory where output files will be written
        """
        self.artifacts_dir = artifacts_dir

    def generate_provider(
        self,
        provider: str,
        provider_schema: ProviderSchema,
        provider_source: str,
        provider_version: str,
    ) -> None:
        """Generate Jsonnet files for a provider.

        Args:
            provider: Provider name (e.g., "okta/okta")
            provider_schema: The provider schema object
            provider_source: Provider source (e.g., "okta/okta")
            provider_version: Provider version (e.g., "~> 5.3.0")
        """
        path = provider
        provider_dir = f"{self.artifacts_dir}/{path}"
        resource_dir = f"{provider_dir}/resource"
        data_source_dir = f"{provider_dir}/data_source"

        # Create directory structure
        self._create_directories([provider_dir, resource_dir, data_source_dir])

        # Generate provider files
        jsonnet_provider_schema = provider_schema.to_jsonnet(
            provider,
            library_name=provider,
            provider_source=provider_source,
            provider_version=provider_version,
        )

        # Write provider file
        self._write_jsonnet_file(
            f"{provider_dir}/provider.libsonnet", jsonnet_provider_schema["provider"]
        )

        # Write resource files
        for name, resource in jsonnet_provider_schema["resource_schemas"].items():
            self._write_jsonnet_file(f"{resource_dir}/{name}.libsonnet", resource)

        # Write data source files
        for name, data_source in jsonnet_provider_schema["data_source_schemas"].items():
            self._write_jsonnet_file(f"{data_source_dir}/{name}.libsonnet", data_source)

        # Format all files
        self._format_jsonnet_files(provider_dir)

    def _create_directories(self, directories: List[str]) -> None:
        """Create directories if they don't exist.

        Args:
            directories: List of directory paths to create
        """
        for directory in directories:
            os.makedirs(directory, exist_ok=True)

    def _write_jsonnet_file(self, file_path: str, content: str) -> None:
        """Write content to a Jsonnet file.

        Args:
            file_path: Path to the file
            content: Content to write
        """
        with open(file_path, "w") as f:
            f.write("{\n")
            f.write(content)
            f.write("\n}")

    def _format_jsonnet_files(self, directory: str) -> None:
        """Format all Jsonnet files in a directory using jsonnetfmt.

        Args:
            directory: Directory containing files to format
        """
        import subprocess

        try:
            # Find all Jsonnet files
            ps = subprocess.Popen(
                ["find", f"{directory}/", "-name", "*.*sonnet", "-print0"], stdout=subprocess.PIPE
            )

            # Format them with jsonnetfmt
            subprocess.check_output(
                [
                    "xargs",
                    "-0",
                    "-P",
                    "16",
                    "-I",
                    "{}",
                    "jsonnetfmt",
                    "-i",
                    "--string-style",
                    "d",
                    "{}",
                ],
                stdin=ps.stdout,
            )

            # Wait for the process to complete
            ps.wait()

            if ps.returncode != 0:
                logger.error("Error formatting Jsonnet files")
        except subprocess.SubprocessError as e:
            logger.error(f"Subprocess error formatting Jsonnet files: {e}")
