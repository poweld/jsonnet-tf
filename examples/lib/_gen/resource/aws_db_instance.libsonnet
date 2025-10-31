{
  local block = self,
  new(terraformName, instanceClass):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_instance",
          type:: "resource",
          attributes:: ["address", "allocated_storage", "allow_major_version_upgrade", "apply_immediately", "arn", "auto_minor_version_upgrade", "availability_zone", "backup_retention_period", "backup_target", "backup_window", "ca_cert_identifier", "character_set_name", "copy_tags_to_snapshot", "custom_iam_instance_profile", "customer_owned_ip_enabled", "database_insights_mode", "db_name", "db_subnet_group_name", "dedicated_log_volume", "delete_automated_backups", "deletion_protection", "domain", "domain_auth_secret_arn", "domain_dns_ips", "domain_fqdn", "domain_iam_role_name", "domain_ou", "enabled_cloudwatch_logs_exports", "endpoint", "engine", "engine_lifecycle_support", "engine_version", "engine_version_actual", "final_snapshot_identifier", "hosted_zone_id", "iam_database_authentication_enabled", "id", "identifier", "identifier_prefix", "instance_class", "iops", "kms_key_id", "latest_restorable_time", "license_model", "listener_endpoint", "maintenance_window", "manage_master_user_password", "master_user_secret", "master_user_secret_kms_key_id", "max_allocated_storage", "monitoring_interval", "monitoring_role_arn", "multi_az", "nchar_character_set_name", "network_type", "option_group_name", "parameter_group_name", "password", "password_wo", "password_wo_version", "performance_insights_enabled", "performance_insights_kms_key_id", "performance_insights_retention_period", "port", "publicly_accessible", "region", "replica_mode", "replicas", "replicate_source_db", "resource_id", "skip_final_snapshot", "snapshot_identifier", "status", "storage_encrypted", "storage_throughput", "storage_type", "tags", "tags_all", "timezone", "upgrade_storage_config", "username", "vpc_security_group_ids"],
        },
      },
    }
    + block.withInstanceClass(instanceClass)
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
  withAutoMinorVersionUpgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withBackupRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backup_retention_period" expected to be of type "number"';
    {
      backup_retention_period: converted,
    }
  ),
  withBackupTarget(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_target" expected to be of type "string"';
    {
      backup_target: converted,
    }
  ),
  withBackupWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_window" expected to be of type "string"';
    {
      backup_window: converted,
    }
  ),
  withCaCertIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_cert_identifier" expected to be of type "string"';
    {
      ca_cert_identifier: converted,
    }
  ),
  withCharacterSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"character_set_name" expected to be of type "string"';
    {
      character_set_name: converted,
    }
  ),
  withCopyTagsToSnapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_snapshot" expected to be of type "bool"';
    {
      copy_tags_to_snapshot: converted,
    }
  ),
  withCustomIamInstanceProfile(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_iam_instance_profile" expected to be of type "string"';
    {
      custom_iam_instance_profile: converted,
    }
  ),
  withCustomerOwnedIpEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"customer_owned_ip_enabled" expected to be of type "bool"';
    {
      customer_owned_ip_enabled: converted,
    }
  ),
  withDatabaseInsightsMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_insights_mode" expected to be of type "string"';
    {
      database_insights_mode: converted,
    }
  ),
  withDbName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_name" expected to be of type "string"';
    {
      db_name: converted,
    }
  ),
  withDbSubnetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_subnet_group_name" expected to be of type "string"';
    {
      db_subnet_group_name: converted,
    }
  ),
  withDedicatedLogVolume(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"dedicated_log_volume" expected to be of type "bool"';
    {
      dedicated_log_volume: converted,
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
  withDomainAuthSecretArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_auth_secret_arn" expected to be of type "string"';
    {
      domain_auth_secret_arn: converted,
    }
  ),
  withDomainDnsIps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_dns_ips" expected to be of type "list"';
    {
      domain_dns_ips: converted,
    }
  ),
  withDomainDnsIpsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_dns_ips" expected to be of type "list"';
    {
      domain_dns_ips+: converted,
    }
  ),
  withDomainFqdn(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_fqdn" expected to be of type "string"';
    {
      domain_fqdn: converted,
    }
  ),
  withDomainIamRoleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_iam_role_name" expected to be of type "string"';
    {
      domain_iam_role_name: converted,
    }
  ),
  withDomainOu(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_ou" expected to be of type "string"';
    {
      domain_ou: converted,
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
  withIamDatabaseAuthenticationEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"iam_database_authentication_enabled" expected to be of type "bool"';
    {
      iam_database_authentication_enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"identifier" expected to be of type "string"';
    {
      identifier: converted,
    }
  ),
  withIdentifierPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"identifier_prefix" expected to be of type "string"';
    {
      identifier_prefix: converted,
    }
  ),
  withInstanceClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_class" expected to be of type "string"';
    {
      instance_class: converted,
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
  withLicenseModel(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_model" expected to be of type "string"';
    {
      license_model: converted,
    }
  ),
  withMaintenanceWindow(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
    }
  ),
  withManageMasterUserPassword(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manage_master_user_password" expected to be of type "bool"';
    {
      manage_master_user_password: converted,
    }
  ),
  withMasterUserSecretKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_user_secret_kms_key_id" expected to be of type "string"';
    {
      master_user_secret_kms_key_id: converted,
    }
  ),
  withMaxAllocatedStorage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_allocated_storage" expected to be of type "number"';
    {
      max_allocated_storage: converted,
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
  withMultiAz(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
  withNcharCharacterSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"nchar_character_set_name" expected to be of type "string"';
    {
      nchar_character_set_name: converted,
    }
  ),
  withNetworkType(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  withOptionGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"option_group_name" expected to be of type "string"';
    {
      option_group_name: converted,
    }
  ),
  withParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_name" expected to be of type "string"';
    {
      parameter_group_name: converted,
    }
  ),
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  withPasswordWo(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_wo" expected to be of type "string"';
    {
      password_wo: converted,
    }
  ),
  withPasswordWoVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_wo_version" expected to be of type "number"';
    {
      password_wo_version: converted,
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
  withReplicaMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"replica_mode" expected to be of type "string"';
    {
      replica_mode: converted,
    }
  ),
  withReplicateSourceDb(value):: (
    local converted = value;
    assert std.isString(converted) : '"replicate_source_db" expected to be of type "string"';
    {
      replicate_source_db: converted,
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
  withStorageThroughput(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_throughput" expected to be of type "number"';
    {
      storage_throughput: converted,
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
  withTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  withUpgradeStorageConfig(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"upgrade_storage_config" expected to be of type "bool"';
    {
      upgrade_storage_config: converted,
    }
  ),
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
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
  blue_green_update:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  restore_to_point_in_time:: {
    local block = self,
    new():: (
      {}
    ),
    withRestoreTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"restore_time" expected to be of type "string"';
      {
        restore_time: converted,
      }
    ),
    withSourceDbInstanceAutomatedBackupsArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_db_instance_automated_backups_arn" expected to be of type "string"';
      {
        source_db_instance_automated_backups_arn: converted,
      }
    ),
    withSourceDbInstanceIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_db_instance_identifier" expected to be of type "string"';
      {
        source_db_instance_identifier: converted,
      }
    ),
    withSourceDbiResourceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_dbi_resource_id" expected to be of type "string"';
      {
        source_dbi_resource_id: converted,
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
  withBlueGreenUpdate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      blue_green_update: value,
    }
  ),
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withBlueGreenUpdateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      blue_green_update+: converted,
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
}
