{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_docdb_cluster",
          type:: "resource",
          attributes:: ["allow_major_version_upgrade", "apply_immediately", "arn", "availability_zones", "backup_retention_period", "cluster_identifier", "cluster_identifier_prefix", "cluster_members", "cluster_resource_id", "db_cluster_parameter_group_name", "db_subnet_group_name", "deletion_protection", "enabled_cloudwatch_logs_exports", "endpoint", "engine", "engine_version", "final_snapshot_identifier", "global_cluster_identifier", "hosted_zone_id", "id", "kms_key_id", "manage_master_user_password", "master_password", "master_password_wo", "master_password_wo_version", "master_user_secret", "master_username", "port", "preferred_backup_window", "preferred_maintenance_window", "reader_endpoint", "region", "skip_final_snapshot", "snapshot_identifier", "storage_encrypted", "storage_type", "tags", "tags_all", "vpc_security_group_ids"],
        },
      },
    }
  ),
  withAllowMajorVersionUpgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_major_version_upgrade" expected to be of type "bool"';
    {
      allow_major_version_upgrade: converted,
    }
  ),
  withApplyImmediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
  ),
  withAvailabilityZones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  withAvailabilityZonesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  withBackupRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backup_retention_period" expected to be of type "number"';
    {
      backup_retention_period: converted,
    }
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withClusterIdentifierPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier_prefix" expected to be of type "string"';
    {
      cluster_identifier_prefix: converted,
    }
  ),
  withClusterMembers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cluster_members" expected to be of type "set"';
    {
      cluster_members: converted,
    }
  ),
  withClusterMembersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cluster_members" expected to be of type "set"';
    {
      cluster_members+: converted,
    }
  ),
  withDbClusterParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_parameter_group_name" expected to be of type "string"';
    {
      db_cluster_parameter_group_name: converted,
    }
  ),
  withDbSubnetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_subnet_group_name" expected to be of type "string"';
    {
      db_subnet_group_name: converted,
    }
  ),
  withDeletionProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection" expected to be of type "bool"';
    {
      deletion_protection: converted,
    }
  ),
  withEnabledCloudwatchLogsExports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_cloudwatch_logs_exports" expected to be of type "list"';
    {
      enabled_cloudwatch_logs_exports: converted,
    }
  ),
  withEnabledCloudwatchLogsExportsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_cloudwatch_logs_exports" expected to be of type "list"';
    {
      enabled_cloudwatch_logs_exports+: converted,
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withFinalSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_identifier" expected to be of type "string"';
    {
      final_snapshot_identifier: converted,
    }
  ),
  withGlobalClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_cluster_identifier" expected to be of type "string"';
    {
      global_cluster_identifier: converted,
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
  withManageMasterUserPassword(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manage_master_user_password" expected to be of type "bool"';
    {
      manage_master_user_password: converted,
    }
  ),
  withMasterPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password" expected to be of type "string"';
    {
      master_password: converted,
    }
  ),
  withMasterPasswordWo(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password_wo" expected to be of type "string"';
    {
      master_password_wo: converted,
    }
  ),
  withMasterPasswordWoVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"master_password_wo_version" expected to be of type "number"';
    {
      master_password_wo_version: converted,
    }
  ),
  withMasterUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_username" expected to be of type "string"';
    {
      master_username: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  withPreferredBackupWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_backup_window" expected to be of type "string"';
    {
      preferred_backup_window: converted,
    }
  ),
  withPreferredMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
    {
      preferred_maintenance_window: converted,
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
  withSkipFinalSnapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_snapshot" expected to be of type "bool"';
    {
      skip_final_snapshot: converted,
    }
  ),
  withSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_identifier" expected to be of type "string"';
    {
      snapshot_identifier: converted,
    }
  ),
  withStorageEncrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"storage_encrypted" expected to be of type "bool"';
    {
      storage_encrypted: converted,
    }
  ),
  withStorageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
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
  withVpcSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  withVpcSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  restore_to_point_in_time:: {
    local block = self,
    new(sourceClusterIdentifier):: (
      {}
      + block.withSourceClusterIdentifier(sourceClusterIdentifier)
    ),
    withRestoreToTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"restore_to_time" expected to be of type "string"';
      {
        restore_to_time: converted,
      }
    ),
    withRestoreType(value):: (
      local converted = value;
      assert std.isString(converted) : '"restore_type" expected to be of type "string"';
      {
        restore_type: converted,
      }
    ),
    withSourceClusterIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_cluster_identifier" expected to be of type "string"';
      {
        source_cluster_identifier: converted,
      }
    ),
    withUseLatestRestorableTime(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_latest_restorable_time" expected to be of type "bool"';
      {
        use_latest_restorable_time: converted,
      }
    ),
  },
  serverless_v2_scaling_configuration:: {
    local block = self,
    new(maxCapacity, minCapacity):: (
      {}
      + block.withMaxCapacity(maxCapacity)
      + block.withMinCapacity(minCapacity)
    ),
    withMaxCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
      {
        max_capacity: converted,
      }
    ),
    withMinCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_capacity" expected to be of type "number"';
      {
        min_capacity: converted,
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
  withRestoreToPointInTime(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      restore_to_point_in_time: value,
    }
  ),
  withServerlessV2ScalingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      serverless_v2_scaling_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withRestoreToPointInTimeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      restore_to_point_in_time+: converted,
    }
  ),
  withServerlessV2ScalingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      serverless_v2_scaling_configuration+: converted,
    }
  ),
}
