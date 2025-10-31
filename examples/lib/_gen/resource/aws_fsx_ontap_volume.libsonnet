{
  local block = self,
  new(terraformName, name, storageVirtualMachineId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_ontap_volume",
          type:: "resource",
          attributes:: ["arn", "bypass_snaplock_enterprise_retention", "copy_tags_to_backups", "file_system_id", "final_backup_tags", "flexcache_endpoint_type", "id", "junction_path", "name", "ontap_volume_type", "region", "security_style", "size_in_bytes", "size_in_megabytes", "skip_final_backup", "snapshot_policy", "storage_efficiency_enabled", "storage_virtual_machine_id", "tags", "tags_all", "uuid", "volume_style", "volume_type"],
        },
      },
    }
    + block.withName(name)
    + block.withStorageVirtualMachineId(storageVirtualMachineId)
  ),
  withBypassSnaplockEnterpriseRetention(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bypass_snaplock_enterprise_retention" expected to be of type "bool"';
    {
      bypass_snaplock_enterprise_retention: converted,
    }
  ),
  withCopyTagsToBackups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_backups" expected to be of type "bool"';
    {
      copy_tags_to_backups: converted,
    }
  ),
  withFinalBackupTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"final_backup_tags" expected to be of type "map"';
    {
      final_backup_tags: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withJunctionPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"junction_path" expected to be of type "string"';
    {
      junction_path: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOntapVolumeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ontap_volume_type" expected to be of type "string"';
    {
      ontap_volume_type: converted,
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
  withSecurityStyle(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_style" expected to be of type "string"';
    {
      security_style: converted,
    }
  ),
  withSizeInBytes(value):: (
    local converted = value;
    assert std.isString(converted) : '"size_in_bytes" expected to be of type "string"';
    {
      size_in_bytes: converted,
    }
  ),
  withSizeInMegabytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"size_in_megabytes" expected to be of type "number"';
    {
      size_in_megabytes: converted,
    }
  ),
  withSkipFinalBackup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_backup" expected to be of type "bool"';
    {
      skip_final_backup: converted,
    }
  ),
  withSnapshotPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_policy" expected to be of type "string"';
    {
      snapshot_policy: converted,
    }
  ),
  withStorageEfficiencyEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"storage_efficiency_enabled" expected to be of type "bool"';
    {
      storage_efficiency_enabled: converted,
    }
  ),
  withStorageVirtualMachineId(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_virtual_machine_id" expected to be of type "string"';
    {
      storage_virtual_machine_id: converted,
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
  withVolumeStyle(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_style" expected to be of type "string"';
    {
      volume_style: converted,
    }
  ),
  withVolumeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_type" expected to be of type "string"';
    {
      volume_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  aggregate_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAggregates(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"aggregates" expected to be of type "list"';
      {
        aggregates: converted,
      }
    ),
    withAggregatesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"aggregates" expected to be of type "list"';
      {
        aggregates+: converted,
      }
    ),
    withConstituentsPerAggregate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"constituents_per_aggregate" expected to be of type "number"';
      {
        constituents_per_aggregate: converted,
      }
    ),
  },
  snaplock_configuration:: {
    local block = self,
    new(snaplockType):: (
      {}
      + block.withSnaplockType(snaplockType)
    ),
    withAuditLogVolume(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"audit_log_volume" expected to be of type "bool"';
      {
        audit_log_volume: converted,
      }
    ),
    withPrivilegedDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"privileged_delete" expected to be of type "string"';
      {
        privileged_delete: converted,
      }
    ),
    withSnaplockType(value):: (
      local converted = value;
      assert std.isString(converted) : '"snaplock_type" expected to be of type "string"';
      {
        snaplock_type: converted,
      }
    ),
    withVolumeAppendModeEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"volume_append_mode_enabled" expected to be of type "bool"';
      {
        volume_append_mode_enabled: converted,
      }
    ),
    autocommit_period:: {
      local block = self,
      new():: (
        {}
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"value" expected to be of type "number"';
        {
          value: converted,
        }
      ),
    },
    retention_period:: {
      local block = self,
      new():: (
        {}
      ),
      default_retention:: {
        local block = self,
        new():: (
          {}
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      maximum_retention:: {
        local block = self,
        new():: (
          {}
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      minimum_retention:: {
        local block = self,
        new():: (
          {}
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withDefaultRetention(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_retention: value,
        }
      ),
      withMaximumRetention(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          maximum_retention: value,
        }
      ),
      withMinimumRetention(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          minimum_retention: value,
        }
      ),
      withDefaultRetentionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_retention+: converted,
        }
      ),
      withMaximumRetentionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          maximum_retention+: converted,
        }
      ),
      withMinimumRetentionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          minimum_retention+: converted,
        }
      ),
    },
    withAutocommitPeriod(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        autocommit_period: value,
      }
    ),
    withRetentionPeriod(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retention_period: value,
      }
    ),
    withAutocommitPeriodMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        autocommit_period+: converted,
      }
    ),
    withRetentionPeriodMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retention_period+: converted,
      }
    ),
  },
  tiering_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withCoolingPeriod(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cooling_period" expected to be of type "number"';
      {
        cooling_period: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
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
  withAggregateConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      aggregate_configuration: value,
    }
  ),
  withSnaplockConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snaplock_configuration: value,
    }
  ),
  withTieringPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tiering_policy: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAggregateConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      aggregate_configuration+: converted,
    }
  ),
  withSnaplockConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snaplock_configuration+: converted,
    }
  ),
  withTieringPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tiering_policy+: converted,
    }
  ),
}
