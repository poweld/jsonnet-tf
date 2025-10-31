{
  local block = self,
  new(terraformName, deploymentType, subnetIds, throughputCapacity):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_openzfs_file_system",
          type:: "resource",
          attributes:: ["arn", "automatic_backup_retention_days", "backup_id", "copy_tags_to_backups", "copy_tags_to_volumes", "daily_automatic_backup_start_time", "delete_options", "deployment_type", "dns_name", "endpoint_ip_address", "endpoint_ip_address_range", "final_backup_tags", "id", "kms_key_id", "network_interface_ids", "owner_id", "preferred_subnet_id", "region", "root_volume_id", "route_table_ids", "security_group_ids", "skip_final_backup", "storage_capacity", "storage_type", "subnet_ids", "tags", "tags_all", "throughput_capacity", "vpc_id", "weekly_maintenance_start_time"],
        },
      },
    }
    + block.withDeploymentType(deploymentType)
    + block.withSubnetIds(subnetIds)
    + block.withThroughputCapacity(throughputCapacity)
  ),
  withAutomaticBackupRetentionDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"automatic_backup_retention_days" expected to be of type "number"';
    {
      automatic_backup_retention_days: converted,
    }
  ),
  withBackupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_id" expected to be of type "string"';
    {
      backup_id: converted,
    }
  ),
  withCopyTagsToBackups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_backups" expected to be of type "bool"';
    {
      copy_tags_to_backups: converted,
    }
  ),
  withCopyTagsToVolumes(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_volumes" expected to be of type "bool"';
    {
      copy_tags_to_volumes: converted,
    }
  ),
  withDailyAutomaticBackupStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_automatic_backup_start_time" expected to be of type "string"';
    {
      daily_automatic_backup_start_time: converted,
    }
  ),
  withDeleteOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delete_options" expected to be of type "set"';
    {
      delete_options: converted,
    }
  ),
  withDeleteOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delete_options" expected to be of type "set"';
    {
      delete_options+: converted,
    }
  ),
  withDeploymentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
    {
      deployment_type: converted,
    }
  ),
  withEndpointIpAddressRange(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_ip_address_range" expected to be of type "string"';
    {
      endpoint_ip_address_range: converted,
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
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withPreferredSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_subnet_id" expected to be of type "string"';
    {
      preferred_subnet_id: converted,
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
  withRouteTableIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids: converted,
    }
  ),
  withRouteTableIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids+: converted,
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
  withSkipFinalBackup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_backup" expected to be of type "bool"';
    {
      skip_final_backup: converted,
    }
  ),
  withStorageCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity" expected to be of type "number"';
    {
      storage_capacity: converted,
    }
  ),
  withStorageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
    }
  ),
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withThroughputCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"throughput_capacity" expected to be of type "number"';
    {
      throughput_capacity: converted,
    }
  ),
  withWeeklyMaintenanceStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"weekly_maintenance_start_time" expected to be of type "string"';
    {
      weekly_maintenance_start_time: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  disk_iops_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withIops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  root_volume_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withCopyTagsToSnapshots(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"copy_tags_to_snapshots" expected to be of type "bool"';
      {
        copy_tags_to_snapshots: converted,
      }
    ),
    withDataCompressionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_compression_type" expected to be of type "string"';
      {
        data_compression_type: converted,
      }
    ),
    withReadOnly(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
      {
        read_only: converted,
      }
    ),
    withRecordSizeKib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"record_size_kib" expected to be of type "number"';
      {
        record_size_kib: converted,
      }
    ),
    nfs_exports:: {
      local block = self,
      new():: (
        {}
      ),
      client_configurations:: {
        local block = self,
        new(clients, options):: (
          {}
          + block.withClients(clients)
          + block.withOptions(options)
        ),
        withClients(value):: (
          local converted = value;
          assert std.isString(converted) : '"clients" expected to be of type "string"';
          {
            clients: converted,
          }
        ),
        withOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"options" expected to be of type "list"';
          {
            options: converted,
          }
        ),
        withOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"options" expected to be of type "list"';
          {
            options+: converted,
          }
        ),
      },
      withClientConfigurations(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_configurations: value,
        }
      ),
      withClientConfigurationsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_configurations+: converted,
        }
      ),
    },
    user_and_group_quotas:: {
      local block = self,
      new(id, storageCapacityQuotaGib, type):: (
        {}
        + block.withId(id)
        + block.withStorageCapacityQuotaGib(storageCapacityQuotaGib)
        + block.withType(type)
      ),
      withId(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"id" expected to be of type "number"';
        {
          id: converted,
        }
      ),
      withStorageCapacityQuotaGib(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"storage_capacity_quota_gib" expected to be of type "number"';
        {
          storage_capacity_quota_gib: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withNfsExports(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs_exports: value,
      }
    ),
    withUserAndGroupQuotas(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_and_group_quotas: value,
      }
    ),
    withNfsExportsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs_exports+: converted,
      }
    ),
    withUserAndGroupQuotasMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_and_group_quotas+: converted,
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
  withDiskIopsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration: value,
    }
  ),
  withRootVolumeConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_volume_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDiskIopsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration+: converted,
    }
  ),
  withRootVolumeConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_volume_configuration+: converted,
    }
  ),
}
