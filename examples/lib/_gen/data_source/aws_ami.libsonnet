{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ami",
          type:: "data",
          attributes:: ["allow_unsafe_filter", "architecture", "arn", "block_device_mappings", "boot_mode", "creation_date", "deprecation_time", "description", "ena_support", "executable_users", "hypervisor", "id", "image_id", "image_location", "image_owner_alias", "image_type", "imds_support", "include_deprecated", "kernel_id", "last_launched_time", "most_recent", "name", "name_regex", "owner_id", "owners", "platform", "platform_details", "product_codes", "public", "ramdisk_id", "region", "root_device_name", "root_device_type", "root_snapshot_id", "sriov_net_support", "state", "state_reason", "tags", "tpm_support", "uefi_data", "usage_operation", "virtualization_type"],
        },
      },
    }
  ),
  withAllowUnsafeFilter(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_unsafe_filter" expected to be of type "bool"';
    {
      allow_unsafe_filter: converted,
    }
  ),
  withExecutableUsers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"executable_users" expected to be of type "list"';
    {
      executable_users: converted,
    }
  ),
  withExecutableUsersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"executable_users" expected to be of type "list"';
    {
      executable_users+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIncludeDeprecated(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_deprecated" expected to be of type "bool"';
    {
      include_deprecated: converted,
    }
  ),
  withMostRecent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"most_recent" expected to be of type "bool"';
    {
      most_recent: converted,
    }
  ),
  withNameRegex(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_regex" expected to be of type "string"';
    {
      name_regex: converted,
    }
  ),
  withOwners(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"owners" expected to be of type "list"';
    {
      owners: converted,
    }
  ),
  withOwnersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"owners" expected to be of type "list"';
    {
      owners+: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withUefiData(value):: (
    local converted = value;
    assert std.isString(converted) : '"uefi_data" expected to be of type "string"';
    {
      uefi_data: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.withName(name)
      + block.withValues(values)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
