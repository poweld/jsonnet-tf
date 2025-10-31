{
  local block = self,
  new(terraformName, virtualMfaDeviceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_virtual_mfa_device",
          type:: "resource",
          attributes:: ["arn", "base_32_string_seed", "enable_date", "id", "path", "qr_code_png", "tags", "tags_all", "user_name", "virtual_mfa_device_name"],
        },
      },
    }
    + block.withVirtualMfaDeviceName(virtualMfaDeviceName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withVirtualMfaDeviceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_mfa_device_name" expected to be of type "string"';
    {
      virtual_mfa_device_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
