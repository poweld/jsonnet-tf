{
  local block = self,
  new(terraformName, engineType, instanceType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_m2_environment",
          type:: "resource",
          attributes:: ["apply_changes_during_maintenance_window", "arn", "description", "engine_type", "engine_version", "environment_id", "force_update", "id", "instance_type", "kms_key_id", "load_balancer_arn", "name", "preferred_maintenance_window", "publicly_accessible", "region", "security_group_ids", "subnet_ids", "tags", "tags_all"],
        },
      },
    }
    + block.withEngineType(engineType)
    + block.withInstanceType(instanceType)
    + block.withName(name)
  ),
  withApplyChangesDuringMaintenanceWindow(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_changes_during_maintenance_window" expected to be of type "bool"';
    {
      apply_changes_during_maintenance_window: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEngineType(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withForceUpdate(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_update" expected to be of type "bool"';
    {
      force_update: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPreferredMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
    {
      preferred_maintenance_window: converted,
    }
  ),
  withPubliclyAccessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  withSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  withSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  high_availability_config:: {
    local block = self,
    new(desiredCapacity):: (
      {}
      + block.withDesiredCapacity(desiredCapacity)
    ),
    withDesiredCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_capacity" expected to be of type "number"';
      {
        desired_capacity: converted,
      }
    ),
  },
  storage_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    efs:: {
      local block = self,
      new(fileSystemId, mountPoint):: (
        {}
        + block.withFileSystemId(fileSystemId)
        + block.withMountPoint(mountPoint)
      ),
      withFileSystemId(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
        {
          file_system_id: converted,
        }
      ),
      withMountPoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_point" expected to be of type "string"';
        {
          mount_point: converted,
        }
      ),
    },
    fsx:: {
      local block = self,
      new(fileSystemId, mountPoint):: (
        {}
        + block.withFileSystemId(fileSystemId)
        + block.withMountPoint(mountPoint)
      ),
      withFileSystemId(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
        {
          file_system_id: converted,
        }
      ),
      withMountPoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_point" expected to be of type "string"';
        {
          mount_point: converted,
        }
      ),
    },
    withEfs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        efs: value,
      }
    ),
    withFsx(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fsx: value,
      }
    ),
    withEfsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        efs+: converted,
      }
    ),
    withFsxMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fsx+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withHighAvailabilityConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      high_availability_config: value,
    }
  ),
  withStorageConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withHighAvailabilityConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      high_availability_config+: converted,
    }
  ),
  withStorageConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_configuration+: converted,
    }
  ),
}
