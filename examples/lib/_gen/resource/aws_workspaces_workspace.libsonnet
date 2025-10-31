{
  local block = self,
  new(terraformName, bundleId, directoryId, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspaces_workspace",
          type:: "resource",
          attributes:: ["bundle_id", "computer_name", "directory_id", "id", "ip_address", "region", "root_volume_encryption_enabled", "state", "tags", "tags_all", "user_name", "user_volume_encryption_enabled", "volume_encryption_key"],
        },
      },
    }
    + block.withBundleId(bundleId)
    + block.withDirectoryId(directoryId)
    + block.withUserName(userName)
  ),
  withBundleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withRootVolumeEncryptionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"root_volume_encryption_enabled" expected to be of type "bool"';
    {
      root_volume_encryption_enabled: converted,
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
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  withUserVolumeEncryptionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"user_volume_encryption_enabled" expected to be of type "bool"';
    {
      user_volume_encryption_enabled: converted,
    }
  ),
  withVolumeEncryptionKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_encryption_key" expected to be of type "string"';
    {
      volume_encryption_key: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  workspace_properties:: {
    local block = self,
    new():: (
      {}
    ),
    withComputeTypeName(value):: (
      local converted = value;
      assert std.isString(converted) : '"compute_type_name" expected to be of type "string"';
      {
        compute_type_name: converted,
      }
    ),
    withRootVolumeSizeGib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"root_volume_size_gib" expected to be of type "number"';
      {
        root_volume_size_gib: converted,
      }
    ),
    withRunningMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"running_mode" expected to be of type "string"';
      {
        running_mode: converted,
      }
    ),
    withRunningModeAutoStopTimeoutInMinutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"running_mode_auto_stop_timeout_in_minutes" expected to be of type "number"';
      {
        running_mode_auto_stop_timeout_in_minutes: converted,
      }
    ),
    withUserVolumeSizeGib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"user_volume_size_gib" expected to be of type "number"';
      {
        user_volume_size_gib: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withWorkspaceProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_properties: value,
    }
  ),
  withWorkspacePropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workspace_properties+: converted,
    }
  ),
}
