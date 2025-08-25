"""Utility functions for jsonnet-tf."""

import logging
import re
from typing import Any, List, Optional, Union


logger = logging.getLogger("jsonnet-tf.utils")

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
    return camel_case(f"with_{name}")


def jsonnet_with_fn_mixin_name(name: str) -> str:
    """Generate a "with" mixin function name for a field.

    Args:
        name: The field name

    Returns:
        camelCase function name with "with_" prefix and "_mixin" suffix
    """
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
    fn_name = jsonnet_with_fn_name(name)
    return f"""{fn_name}(value):: (
    {conversion}
    {{
      {name}: value,
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
    fn_name = jsonnet_with_fn_mixin_name(name)
    return f"""{fn_name}(value):: (
    {conversion}
    {{
      {name}+: converted,
    }}
  )"""
