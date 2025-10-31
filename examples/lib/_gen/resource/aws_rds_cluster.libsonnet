{
  local block = self,
  new(terraformName, engine):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_cluster",
          type:: "resource",
          attributes:: ["allocated_storage", "allow_major_version_upgrade", "apply_immediately", "arn", "availability_zones", "backtrack_window", "backup_retention_period", "ca_certificate_identifier", "ca_certificate_valid_till", "cluster_identifier", "cluster_identifier_prefix", "cluster_members", "cluster_resource_id", "cluster_scalability_type", "copy_tags_to_snapshot", "database_insights_mode", "database_name", "db_cluster_instance_class", "db_cluster_parameter_group_name", "db_instance_parameter_group_name", "db_subnet_group_name", "db_system_id", "delete_automated_backups", "deletion_protection", "domain", "domain_iam_role_name", "enable_global_write_forwarding", "enable_http_endpoint", "enable_local_write_forwarding", "enabled_cloudwatch_logs_exports", "endpoint", "engine", "engine_lifecycle_support", "engine_mode", "engine_version", "engine_version_actual", "final_snapshot_identifier", "global_cluster_identifier", "hosted_zone_id", "iam_database_authentication_enabled", "iam_roles", "id", "iops", "kms_key_id", "manage_master_user_password", "master_password", "master_password_wo", "master_password_wo_version", "master_user_secret", "master_user_secret_kms_key_id", "master_username", "monitoring_interval", "monitoring_role_arn", "network_type", "performance_insights_enabled", "performance_insights_kms_key_id", "performance_insights_retention_period", "port", "preferred_backup_window", "preferred_maintenance_window", "reader_endpoint", "region", "replication_source_identifier", "skip_final_snapshot", "snapshot_identifier", "source_region", "storage_encrypted", "storage_type", "tags", "tags_all", "vpc_security_group_ids"],
        },
      },
    }
    + block.withEngine(engine)
  ),
  withAllocatedStorage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocated_storage" expected to be of type "number"';
    {
      allocated_storage: converted,
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
  withBacktrackWindow(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backtrack_window" expected to be of type "number"';
    {
      backtrack_window: converted,
    }
  ),
  withBackupRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backup_retention_period" expected to be of type "number"';
    {
      backup_retention_period: converted,
    }
  ),
  withCaCertificateIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificate_identifier" expected to be of type "string"';
    {
      ca_certificate_identifier: converted,
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
  withClusterScalabilityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_scalability_type" expected to be of type "string"';
    {
      cluster_scalability_type: converted,
    }
  ),
  withCopyTagsToSnapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_snapshot" expected to be of type "bool"';
    {
      copy_tags_to_snapshot: converted,
    }
  ),
  withDatabaseInsightsMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_insights_mode" expected to be of type "string"';
    {
      database_insights_mode: converted,
    }
  ),
  withDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  withDbClusterInstanceClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_instance_class" expected to be of type "string"';
    {
      db_cluster_instance_class: converted,
    }
  ),
  withDbClusterParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_parameter_group_name" expected to be of type "string"';
    {
      db_cluster_parameter_group_name: converted,
    }
  ),
  withDbInstanceParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_parameter_group_name" expected to be of type "string"';
    {
      db_instance_parameter_group_name: converted,
    }
  ),
  withDbSubnetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_subnet_group_name" expected to be of type "string"';
    {
      db_subnet_group_name: converted,
    }
  ),
  withDbSystemId(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_system_id" expected to be of type "string"';
    {
      db_system_id: converted,
    }
  ),
  withDeleteAutomatedBackups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_automated_backups" expected to be of type "bool"';
    {
      delete_automated_backups: converted,
    }
  ),
  withDeletionProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection" expected to be of type "bool"';
    {
      deletion_protection: converted,
    }
  ),
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withDomainIamRoleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_iam_role_name" expected to be of type "string"';
    {
      domain_iam_role_name: converted,
    }
  ),
  withEnableGlobalWriteForwarding(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_global_write_forwarding" expected to be of type "bool"';
    {
      enable_global_write_forwarding: converted,
    }
  ),
  withEnableHttpEndpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_http_endpoint" expected to be of type "bool"';
    {
      enable_http_endpoint: converted,
    }
  ),
  withEnableLocalWriteForwarding(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_local_write_forwarding" expected to be of type "bool"';
    {
      enable_local_write_forwarding: converted,
    }
  ),
  withEnabledCloudwatchLogsExports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cloudwatch_logs_exports" expected to be of type "set"';
    {
      enabled_cloudwatch_logs_exports: converted,
    }
  ),
  withEnabledCloudwatchLogsExportsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_cloudwatch_logs_exports" expected to be of type "set"';
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
  withEngineLifecycleSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_lifecycle_support" expected to be of type "string"';
    {
      engine_lifecycle_support: converted,
    }
  ),
  withEngineMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_mode" expected to be of type "string"';
    {
      engine_mode: converted,
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
  withIamDatabaseAuthenticationEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"iam_database_authentication_enabled" expected to be of type "bool"';
    {
      iam_database_authentication_enabled: converted,
    }
  ),
  withIamRoles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles: converted,
    }
  ),
  withIamRolesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIops(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"iops" expected to be of type "number"';
    {
      iops: converted,
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
  withMasterUserSecretKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_user_secret_kms_key_id" expected to be of type "string"';
    {
      master_user_secret_kms_key_id: converted,
    }
  ),
  withMasterUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_username" expected to be of type "string"';
    {
      master_username: converted,
    }
  ),
  withMonitoringInterval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"monitoring_interval" expected to be of type "number"';
    {
      monitoring_interval: converted,
    }
  ),
  withMonitoringRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitoring_role_arn" expected to be of type "string"';
    {
      monitoring_role_arn: converted,
    }
  ),
  withNetworkType(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  withPerformanceInsightsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"performance_insights_enabled" expected to be of type "bool"';
    {
      performance_insights_enabled: converted,
    }
  ),
  withPerformanceInsightsKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"performance_insights_kms_key_id" expected to be of type "string"';
    {
      performance_insights_kms_key_id: converted,
    }
  ),
  withPerformanceInsightsRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"performance_insights_retention_period" expected to be of type "number"';
    {
      performance_insights_retention_period: converted,
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
  withReplicationSourceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_source_identifier" expected to be of type "string"';
    {
      replication_source_identifier: converted,
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
  withSourceRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_region" expected to be of type "string"';
    {
      source_region: converted,
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
    new():: (
      {}
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
    withSourceClusterResourceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_cluster_resource_id" expected to be of type "string"';
      {
        source_cluster_resource_id: converted,
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
  s3_import:: {
    local block = self,
    new(bucketName, ingestionRole, sourceEngine, sourceEngineVersion):: (
      {}
      + block.withBucketName(bucketName)
      + block.withIngestionRole(ingestionRole)
      + block.withSourceEngine(sourceEngine)
      + block.withSourceEngineVersion(sourceEngineVersion)
    ),
    withBucketName(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    withBucketPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
      {
        bucket_prefix: converted,
      }
    ),
    withIngestionRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"ingestion_role" expected to be of type "string"';
      {
        ingestion_role: converted,
      }
    ),
    withSourceEngine(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_engine" expected to be of type "string"';
      {
        source_engine: converted,
      }
    ),
    withSourceEngineVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_engine_version" expected to be of type "string"';
      {
        source_engine_version: converted,
      }
    ),
  },
  scaling_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAutoPause(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"auto_pause" expected to be of type "bool"';
      {
        auto_pause: converted,
      }
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
    withSecondsBeforeTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"seconds_before_timeout" expected to be of type "number"';
      {
        seconds_before_timeout: converted,
      }
    ),
    withSecondsUntilAutoPause(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"seconds_until_auto_pause" expected to be of type "number"';
      {
        seconds_until_auto_pause: converted,
      }
    ),
    withTimeoutAction(value):: (
      local converted = value;
      assert std.isString(converted) : '"timeout_action" expected to be of type "string"';
      {
        timeout_action: converted,
      }
    ),
  },
  serverlessv2_scaling_configuration:: {
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
    withSecondsUntilAutoPause(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"seconds_until_auto_pause" expected to be of type "number"';
      {
        seconds_until_auto_pause: converted,
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
  withS3Import(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_import: value,
    }
  ),
  withScalingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_configuration: value,
    }
  ),
  withServerlessv2ScalingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      serverlessv2_scaling_configuration: value,
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
  withS3ImportMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_import+: converted,
    }
  ),
  withScalingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_configuration+: converted,
    }
  ),
  withServerlessv2ScalingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      serverlessv2_scaling_configuration+: converted,
    }
  ),
}
