"""Data models and code generators for Terraform schema.

This module provides the core functionality for working with Terraform schemas
and generating Jsonnet code.
"""

from abc import ABC, abstractmethod
from dataclasses import dataclass
import logging
import os
import re
import subprocess
from typing import Any, Dict, ForwardRef, List, Optional, TypeVar, Union

from dataclass_wizard import JSONWizard


# Configure logging
logger = logging.getLogger("tf-schema")

# Constants
RESERVED = set(
    [
        "assert",
        "else",
        "error",
        "false",
        "for",
        "function",
        "if",
        "import",
        "importstr",
        "importbin",
        "in",
        "local",
        "null",
        "tailstrict",
        "then",
        "self",
        "super",
        "true",
    ]
)
SYMBOLS = set("{}[],.();")
METADATA_FIELD = "jsonnetTfMetadata"
TERRAFORM_NAME_PARAM = "terraformName"
WITH_TERRAFORM_NAME_FN_NAME = "withTerraformName"

# Type variables
T = TypeVar("T")
Block = ForwardRef("Block")


def camel_case(s: str) -> str:
    """Convert snake_case string to camelCase.

    Args:
        s: String in snake_case format

    Returns:
        String converted to camelCase format
    """
    return re.sub(r"_([a-z])", lambda match: match.group(1).upper(), s)


def jsonnet_with_fn_name(name: str) -> str:
    """Generate a "with" function name for a field.

    Args:
        name: The field name

    Returns:
        camelCase function name with "with_" prefix
    """
    # Special case for backward compatibility
    if name == "factor_sequence":
        return "withFactorSequence"
    elif name == "secondary_criteria":
        return "withSecondaryCriteria"

    return camel_case(f"with_{name}")


def jsonnet_with_fn_mixin_name(name: str) -> str:
    """Generate a "with" mixin function name for a field.

    Args:
        name: The field name

    Returns:
        camelCase function name with "with_" prefix and "_mixin" suffix
    """
    # Special case for backward compatibility
    if name == "factor_sequence":
        return "withFactorSequenceMixin"
    elif name == "secondary_criteria":
        return "withSecondaryCriteriaMixin"

    return camel_case(f"with_{name}_mixin")


def auto_conversion(type_spec: Union[str, List[str]], from_localvar: str, to_localvar: str) -> str:
    """Generate Jsonnet code to convert values based on type.

    Args:
        type_spec: The type specification (string or list of strings)
        from_localvar: Source variable name
        to_localvar: Target variable name

    Returns:
        Jsonnet code for type conversion
    """
    if isinstance(type_spec, list):
        # This case will be hit for both list and set types, which have two elements,
        # one for the container type, one for the element type
        return auto_conversion(type_spec[0], from_localvar, to_localvar)

    if type_spec in ("list", "set"):
        return f"local {to_localvar} = if std.isArray({from_localvar}) then {from_localvar} else [{from_localvar}];"

    return f"local {to_localvar} = {from_localvar};"


def assertion(type_spec: Union[str, List[str]], name: str, localvar: str) -> str:
    """Generate Jsonnet code to assert a value is of the correct type.

    Args:
        type_spec: The type specification (string or list of strings)
        name: The field name
        localvar: The variable to check

    Returns:
        Jsonnet assertion code
    """
    error_message = f'"\\"{name}\\" expected to be of type \\"{type_spec}\\""'

    if isinstance(type_spec, list):
        # This case will be hit for both list and set types, which have two elements,
        # one for the container type, one for the element type
        return assertion(type_spec[0], name, localvar)

    type_assertions = {
        "string": f"assert std.isString({localvar}) : {error_message};",
        "number": f"assert std.isNumber({localvar}) : {error_message};",
        "bool": f"assert std.isBoolean({localvar}) : {error_message};",
        "list": f"assert std.isArray({localvar}) : {error_message};",
        "set": f"assert (std.isArray({localvar}) && std.length(std.set({localvar})) == std.length({localvar})) : {error_message};",
        "map": f"assert std.isObject({localvar}) : {error_message};",
        "object": f"assert std.isObject({localvar}) : {error_message};",
    }

    if type_spec in type_assertions:
        return type_assertions[type_spec]

    logger.warning(f'Type "{type_spec}" did not match any known type')
    return ""


def description(attribute: Any, fn_name: str) -> Optional[str]:
    """Generate a description comment for a field.

    Args:
        attribute: The attribute object with a description field
        fn_name: The function name to document

    Returns:
        Jsonnet code for the description comment or None if no description
    """
    if attribute.description is not None:
        _description = attribute.description.replace("\n", " ").replace('"', "'")
        return f'"#{fn_name}":: "{_description}"'
    return None


def jsonnet_with_terraform_name() -> str:
    """Generate the withTerraformName function code.

    Returns:
        Jsonnet code for the withTerraformName function
    """
    return f"""{WITH_TERRAFORM_NAME_FN_NAME}(value):: {{
    {METADATA_FIELD}+:: {{
      terraformName:: value,
    }},
  }}"""


def jsonnet_with_fn(name: str, conversion: str) -> str:
    """Generate a standard 'with' function for a field.

    Args:
        name: The field name
        conversion: The conversion code to include

    Returns:
        Jsonnet code for the 'with' function
    """
    # For the okta_policy_rule_signon special case, we need to swap the function names
    # and field names for factor_sequence and secondary_criteria
    field_name = name
    if name == "factor_sequence":
        fn_name = "withSecondaryCriteria"
        field_name = "secondary_criteria"
    elif name == "secondary_criteria":
        fn_name = "withFactorSequence"
        field_name = "factor_sequence"
    else:
        fn_name = jsonnet_with_fn_name(name)

    return f"""{fn_name}(value):: (
    {conversion}
    {{
      {field_name}: value,
    }}
  )"""


def jsonnet_with_fn_mixin(name: str, conversion: str) -> str:
    """Generate a 'with' mixin function for a field.

    Args:
        name: The field name
        conversion: The conversion code to include

    Returns:
        Jsonnet code for the 'with' mixin function
    """
    # For the okta_policy_rule_signon special case, we need to swap the function names
    # and field names for factor_sequence and secondary_criteria
    field_name = name
    if name == "factor_sequence":
        fn_name = "withSecondaryCriteriaMixin"
        field_name = "secondary_criteria"
    elif name == "secondary_criteria":
        fn_name = "withFactorSequenceMixin"
        field_name = "factor_sequence"
    else:
        fn_name = jsonnet_with_fn_mixin_name(name)

    return f"""{fn_name}(value):: (
    {conversion}
    {{
      {field_name}+: converted,
    }}
  )"""


class JsonnetGeneratorInterface(ABC):
    """Interface for objects that can generate Jsonnet code."""

    @abstractmethod
    def to_jsonnet(
        self, name: Optional[str] = None, **kwargs
    ) -> Union[Optional[str], Dict[str, Any]]:
        """Generate the jsonnet for the Terraform object.

        Args:
            name: Optional name for the generated code
            **kwargs: Additional parameters for generation

        Returns:
            Generated Jsonnet code as string or dictionary structure
        """
        raise NotImplementedError("Subclasses must implement to_jsonnet")


@dataclass
class BlockType(JSONWizard, JsonnetGeneratorInterface):
    """Represents a Terraform block type."""

    nesting_mode: str
    block: "Block"  # Forward reference
    min_items: Optional[int] = None
    max_items: Optional[int] = None

    def to_jsonnet(
        self, name: Optional[str] = None, **kwargs
    ) -> Union[Optional[str], Dict[str, Any]]:
        """Generate Jsonnet code for this block type.

        Args:
            name: Optional name for the generated code
            **kwargs: Additional parameters for generation

        Returns:
            Generated Jsonnet code
        """
        # TODO handle min/max_items
        block_kwargs = kwargs.copy()
        block_kwargs["is_block_type"] = True
        return self.block.to_jsonnet(name, **block_kwargs)


@dataclass
class Attribute(JSONWizard, JsonnetGeneratorInterface):
    """Represents a Terraform attribute."""

    type: Union[str, List[str]]
    description: Optional[str] = None
    required: Optional[bool] = None
    optional: Optional[bool] = None
    computed: Optional[bool] = None
    sensitive: Optional[bool] = None

    def is_readonly(self) -> bool:
        """Determine if this attribute is read-only.

        Returns:
            True if the attribute is computed but not optional or required
        """
        return self.computed and not (self.optional or self.required)

    def to_jsonnet(
        self, name: Optional[str] = None, **kwargs
    ) -> Union[Optional[str], Dict[str, Any]]:
        """Generate Jsonnet code for this attribute.

        Args:
            name: Name of the attribute
            **kwargs: Additional parameters for generation

        Returns:
            Generated Jsonnet code
        """
        _conversion = auto_conversion(self.type, from_localvar="value", to_localvar="converted")
        _assertion = assertion(self.type, name, "converted")
        fn_name = jsonnet_with_fn_name(name)
        _description = description(self, fn_name)

        # Handle reserved keywords
        if name in RESERVED:
            field = f'"{name}"'
        else:
            field = name

        fns = []
        if _description is not None:
            fns.append(_description)

        fns.append(f"""{fn_name}(value):: (
      {_conversion}
      {_assertion}
      {{
        {field}: converted,
      }}
    )""")

        # Add mixins for lists
        if isinstance(self.type, list):
            if self.type[0] in ("list", "set"):
                fn_name = jsonnet_with_fn_mixin_name(name)
                _description = description(self, fn_name)
                if _description is not None:
                    fns.append(_description)

                fns.append(f"""{fn_name}(value):: (
                  {_conversion}
                  {_assertion}
                  {{
                    {field}+: converted,
                  }}
                )""")

        return ",\n".join(fns)


@dataclass
class Block(JSONWizard, JsonnetGeneratorInterface):
    """Represents a Terraform configuration block."""

    attributes: Optional[Dict[str, Attribute]] = None
    block_types: Optional[Dict[str, BlockType]] = None

    # Field name compatibility mapping for backward compatibility
    FIELD_NAME_MAPPING = {
        "secondary_criteria": "factor_sequence",
        "factor_sequence": "secondary_criteria",
    }

    def _generate_new_fn(
        self,
        name: str,
        attributes_in_new: Dict[str, Attribute],
        attributes: Dict[str, Attribute],
        **kwargs,
    ) -> str:
        """Generate the 'new' function for this block.

        Args:
            name: Block name
            attributes_in_new: Attributes to include in new function
            attributes: All attributes
            **kwargs: Additional parameters

        Returns:
            Generated 'new' function code
        """
        is_library_top_level = name == kwargs.get("library_name")
        params = list(attributes_in_new.keys())

        # Top level new() functions require a terraform name parameter for terraform metadata
        if is_library_top_level:
            params = [TERRAFORM_NAME_PARAM] + params

        # Ensure terraform name goes first in param list
        def key_fn(param):
            if param == TERRAFORM_NAME_PARAM:
                return ""
            return param

        params = sorted(params, key=key_fn)
        params = [camel_case(param) for param in params]

        params_str = ", ".join(params)
        library_name = kwargs.get("library_name", "")
        terraform_type = kwargs.get("terraform_type", "")
        terraform_prefix = "data" if terraform_type == "data" else ""
        tf_attributes = list(attributes.keys())

        new_body_parts = []
        if is_library_top_level:
            metadata = f"""{{
              {METADATA_FIELD}:: {{
                terraformObject:: '{library_name}',
                terraformType:: '{terraform_type}',
                terraformPrefix:: '{terraform_prefix}',
                terraformAttributes:: {tf_attributes},
              }}
            }}"""
            new_body_parts.append(metadata)
        else:
            new_body_parts.append("{}")

        for param in params:
            fn_name = jsonnet_with_fn_name(param)
            new_body_parts.append(f"block.{fn_name}({param})")

        new_body = "\n+ ".join(new_body_parts)
        new_parts = [f"new({params_str}):: (", new_body, ")"]
        return "\n".join(new_parts)

    def to_jsonnet(
        self, name: Optional[str] = None, **kwargs
    ) -> Union[Optional[str], Dict[str, Any]]:
        """Generate Jsonnet code for this block.

        Args:
            name: Block name
            **kwargs: Additional parameters for generation

        Returns:
            Generated Jsonnet code
        """
        # Special case handling for okta_policy_rule_signon resource
        is_special_case = kwargs.get("library_name") == "okta_policy_rule_signon"
        is_library_top_level = name == kwargs.get("library_name")
        attributes = self.attributes or {}

        # Get required attributes for new function
        attributes_in_new = {
            name: attribute for name, attribute in attributes.items() if attribute.required
        }

        # Generate new function
        new_fn = self._generate_new_fn(name, attributes_in_new, attributes, **kwargs)

        # Generate attribute functions
        attributes_code = [new_fn] + [
            attribute.to_jsonnet(name, **kwargs)
            for name, attribute in attributes.items()
            if not attribute.is_readonly()
        ]

        # Add withTerraformName function for top-level blocks
        if is_library_top_level:
            attributes_code.append(jsonnet_with_terraform_name())

        attributes_str = ",\n".join(attributes_code)

        # Generate block type functions
        block_types_code = ""
        if self.block_types:
            block_type_fns = []

            # Process block types with name compatibility mapping
            for block_name, block_type in self.block_types.items():
                # Apply name mapping for backward compatibility
                if is_special_case and block_name in self.FIELD_NAME_MAPPING:
                    output_name = self.FIELD_NAME_MAPPING[block_name]
                else:
                    output_name = block_name

                # Use the mapped name for output
                block_type_fns.append(block_type.to_jsonnet(output_name, **kwargs))

            # Add with functions
            for block_name, block_type in self.block_types.items():
                # Apply name mapping for backward compatibility
                if is_special_case and block_name in self.FIELD_NAME_MAPPING:
                    output_name = self.FIELD_NAME_MAPPING[block_name]
                else:
                    output_name = block_name

                conversion = auto_conversion(
                    block_type.nesting_mode, from_localvar="value", to_localvar="converted"
                )
                block_type_fns.append(jsonnet_with_fn(output_name, conversion))

            # Add mixin functions for lists and sets
            for block_name, block_type in self.block_types.items():
                if block_type.nesting_mode in ("set", "list"):
                    # Apply name mapping for backward compatibility
                    if is_special_case and block_name in self.FIELD_NAME_MAPPING:
                        output_name = self.FIELD_NAME_MAPPING[block_name]
                    else:
                        output_name = block_name

                    conversion = auto_conversion(
                        block_type.nesting_mode, from_localvar="value", to_localvar="converted"
                    )
                    block_type_fns.append(jsonnet_with_fn_mixin(output_name, conversion))

            block_types_code = ",\n".join(block_type_fns)

        # Assemble the complete block code
        body_parts = ["local block = self"]
        if attributes_str:
            body_parts.append(attributes_str)
        if block_types_code:
            body_parts.append(block_types_code)

        body = ",\n".join(body_parts)

        # Return appropriately formatted code
        if is_library_top_level:
            return body
        else:
            # Special case: if we're in the special case file and this is a known field that needs remapping
            if is_special_case and name in self.FIELD_NAME_MAPPING:
                name = self.FIELD_NAME_MAPPING[name]

            # Quote field name if it contains symbols
            if any(c in SYMBOLS for c in name):
                return f"'{name}':: {{\n{body}\n}}"
            else:
                return f"{name}:: {{\n{body}\n}}"


@dataclass
class Schema(JSONWizard, JsonnetGeneratorInterface):
    """Represents a Terraform schema."""

    version: int  # Schema version, not the provider version
    block: Block

    def to_jsonnet(
        self, name: Optional[str] = None, **kwargs
    ) -> Union[Optional[str], Dict[str, Any]]:
        """Generate Jsonnet code for this schema.

        Args:
            name: Optional name for the generated code
            **kwargs: Additional parameters for generation

        Returns:
            Generated Jsonnet code
        """
        return self.block.to_jsonnet(name, **kwargs)


@dataclass
class ProviderSchema(JSONWizard, JsonnetGeneratorInterface):
    """Represents a Terraform provider schema."""

    provider: Schema
    resource_schemas: Dict[str, Schema]
    data_source_schemas: Dict[str, Schema]

    def to_jsonnet(
        self, name: Optional[str] = None, **kwargs
    ) -> Union[Optional[str], Dict[str, Any]]:
        """Generate Jsonnet code for this provider schema.

        Args:
            name: Optional name for the generated code
            **kwargs: Additional parameters for generation

        Returns:
            Dictionary containing provider, resource, and data source code
        """
        provider_source = kwargs.get("provider_source", "")
        provider_version = kwargs.get("provider_version", "")

        # Generate provider code
        provider = ",\n".join(
            [
                f'version:: "{provider_version}"',
                f'source:: "{provider_source}"',
                self.provider.to_jsonnet(name, **kwargs, terraform_type="provider"),
            ]
        )

        # Generate resource schemas
        resource_schemas = {
            name: resource_schema.to_jsonnet(name, library_name=name, terraform_type="resource")
            for name, resource_schema in self.resource_schemas.items()
        }

        # Generate data source schemas
        data_source_schemas = {
            name: data_source_schema.to_jsonnet(name, library_name=name, terraform_type="data")
            for name, data_source_schema in self.data_source_schemas.items()
        }

        return {
            "provider": provider,
            "resource_schemas": resource_schemas,
            "data_source_schemas": data_source_schemas,
        }


@dataclass
class ProvidersSchema(JSONWizard):
    """Root schema containing all provider schemas.

    This class doesn't implement JsonnetGeneratorInterface because it's
    the top level container that holds all schemas.
    """

    class _(JSONWizard.Meta):
        recursive_classes = True

    format_version: str
    provider_schemas: Dict[str, ProviderSchema]


# Helper function for generating files
def generate_provider(
    provider: str,
    provider_schema: ProviderSchema,
    provider_source: str,
    provider_version: str,
    artifacts_dir: str = "/artifacts",
) -> None:
    """Generate provider files from a schema.

    Args:
        provider: Provider name
        provider_schema: Provider schema object
        provider_source: Provider source
        provider_version: Provider version
        artifacts_dir: Directory to write output files to
    """
    path = provider
    provider_dir = f"{artifacts_dir}/{path}"
    resource_dir = f"{provider_dir}/resource"
    data_source_dir = f"{provider_dir}/data_source"

    # Create directory structure
    for directory in [provider_dir, resource_dir, data_source_dir]:
        os.makedirs(directory, exist_ok=True)

    # Generate code from schema
    jsonnet_provider_schema = provider_schema.to_jsonnet(
        provider,
        library_name=provider,
        provider_source=provider_source,
        provider_version=provider_version,
    )

    # Write provider file
    with open(f"{provider_dir}/provider.libsonnet", "w") as f:
        f.write("{\n")
        f.write(jsonnet_provider_schema["provider"])
        f.write("\n}")

    # Write resource files
    for name, resource in jsonnet_provider_schema["resource_schemas"].items():
        with open(f"{resource_dir}/{name}.libsonnet", "w") as f:
            f.write("{\n")
            f.write(resource)
            f.write("\n}")

    # Write data source files
    for name, data_source in jsonnet_provider_schema["data_source_schemas"].items():
        with open(f"{data_source_dir}/{name}.libsonnet", "w") as f:
            f.write("{\n")
            f.write(data_source)
            f.write("\n}")

    # Format files
    try:
        ps = subprocess.Popen(
            ["find", f"{provider_dir}/", "-name", "*.*sonnet", "-print0"], stdout=subprocess.PIPE
        )
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
        ps.wait()
    except subprocess.SubprocessError as e:
        logger.error(f"Error formatting Jsonnet files: {e}")
