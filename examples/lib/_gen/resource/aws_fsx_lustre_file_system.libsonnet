{
  local block = self,
  new(terraformName, subnetIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_lustre_file_system",
          type:: "resource",
          attributes:: ["arn", "auto_import_policy", "automatic_backup_retention_days", "backup_id", "copy_tags_to_backups", "daily_automatic_backup_start_time", "data_compression_type", "deployment_type", "dns_name", "drive_cache_type", "efa_enabled", "export_path", "file_system_type_version", "final_backup_tags", "id", "import_path", "imported_file_chunk_size", "kms_key_id", "mount_name", "network_interface_ids", "owner_id", "per_unit_storage_throughput", "region", "security_group_ids", "skip_final_backup", "storage_capacity", "storage_type", "subnet_ids", "tags", "tags_all", "throughput_capacity", "vpc_id", "weekly_maintenance_start_time"],
        },
      },
    }
    + block.withSubnetIds(subnetIds)
  ),
  withAutoImportPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_import_policy" expected to be of type "string"';
    {
      auto_import_policy: converted,
    }
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
  withDailyAutomaticBackupStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_automatic_backup_start_time" expected to be of type "string"';
    {
      daily_automatic_backup_start_time: converted,
    }
  ),
  withDataCompressionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_compression_type" expected to be of type "string"';
    {
      data_compression_type: converted,
    }
  ),
  withDeploymentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
    {
      deployment_type: converted,
    }
  ),
  withDriveCacheType(value):: (
    local converted = value;
    assert std.isString(converted) : '"drive_cache_type" expected to be of type "string"';
    {
      drive_cache_type: converted,
    }
  ),
  withEfaEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"efa_enabled" expected to be of type "bool"';
    {
      efa_enabled: converted,
    }
  ),
  withExportPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_path" expected to be of type "string"';
    {
      export_path: converted,
    }
  ),
  withFileSystemTypeVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_type_version" expected to be of type "string"';
    {
      file_system_type_version: converted,
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
  withImportPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"import_path" expected to be of type "string"';
    {
      import_path: converted,
    }
  ),
  withImportedFileChunkSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"imported_file_chunk_size" expected to be of type "number"';
    {
      imported_file_chunk_size: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withPerUnitStorageThroughput(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"per_unit_storage_throughput" expected to be of type "number"';
    {
      per_unit_storage_throughput: converted,
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
  data_read_cache_configuration:: {
    local block = self,
    new(sizingMode):: (
      {}
      + block.withSizingMode(sizingMode)
    ),
    withSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
    withSizingMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"sizing_mode" expected to be of type "string"';
      {
        sizing_mode: converted,
      }
    ),
  },
  log_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withDestination(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination" expected to be of type "string"';
      {
        destination: converted,
      }
    ),
    withLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"level" expected to be of type "string"';
      {
        level: converted,
      }
    ),
  },
  metadata_configuration:: {
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
  root_squash_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withNoSquashNids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"no_squash_nids" expected to be of type "set"';
      {
        no_squash_nids: converted,
      }
    ),
    withNoSquashNidsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"no_squash_nids" expected to be of type "set"';
      {
        no_squash_nids+: converted,
      }
    ),
    withRootSquash(value):: (
      local converted = value;
      assert std.isString(converted) : '"root_squash" expected to be of type "string"';
      {
        root_squash: converted,
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
  withDataReadCacheConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_read_cache_configuration: value,
    }
  ),
  withLogConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration: value,
    }
  ),
  withMetadataConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_configuration: value,
    }
  ),
  withRootSquashConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_squash_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDataReadCacheConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_read_cache_configuration+: converted,
    }
  ),
  withLogConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration+: converted,
    }
  ),
  withMetadataConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_configuration+: converted,
    }
  ),
  withRootSquashConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_squash_configuration+: converted,
    }
  ),
}
