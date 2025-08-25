"""Data models for Terraform schema."""

from abc import ABC, abstractmethod
from dataclasses import dataclass
import logging
from typing import Any, Dict, ForwardRef, List, Optional, TypeVar, Union

from dataclass_wizard import JSONWizard

# Local imports
import utils


logger = logging.getLogger("jsonnet-tf.models")

# Forward references for type annotations
T = TypeVar("T")
Block = ForwardRef("Block")


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
    block: Block  # Forward reference
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
        params = [utils.camel_case(param) for param in params]

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

            # Add block type function code
            for name, block_type in self.block_types.items():
                block_type_fns.append(block_type.to_jsonnet(name, **kwargs))

            # Add with functions
            for name, block_type in self.block_types.items():
                conversion = auto_conversion(
                    block_type.nesting_mode, from_localvar="value", to_localvar="converted"
                )
                block_type_fns.append(jsonnet_with_fn(name, conversion))

            # Add mixin functions for lists and sets
            for name, block_type in self.block_types.items():
                if block_type.nesting_mode in ("set", "list"):
                    conversion = auto_conversion(
                        block_type.nesting_mode, from_localvar="value", to_localvar="converted"
                    )
                    block_type_fns.append(jsonnet_with_fn_mixin(name, conversion))

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


# Update ForwardRefs
BlockType.__annotations__["block"] = Block
