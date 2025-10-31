{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_neptune_cluster",
          type:: "resource",
          attributes:: ["allow_major_version_upgrade", "apply_immediately", "arn", "availability_zones", "backup_retention_period", "cluster_identifier", "cluster_identifier_prefix", "cluster_members", "cluster_resource_id", "copy_tags_to_snapshot", "deletion_protection", "enable_cloudwatch_logs_exports", "endpoint", "engine", "engine_version", "final_snapshot_identifier", "global_cluster_identifier", "hosted_zone_id", "iam_database_authentication_enabled", "iam_roles", "id", "kms_key_arn", "neptune_cluster_parameter_group_name", "neptune_instance_parameter_group_name", "neptune_subnet_group_name", "port", "preferred_backup_window", "preferred_maintenance_window", "reader_endpoint", "region", "replication_source_identifier", "skip_final_snapshot", "snapshot_identifier", "storage_encrypted", "storage_type", "tags", "tags_all", "vpc_security_group_ids"],
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
  withCopyTagsToSnapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_snapshot" expected to be of type "bool"';
    {
      copy_tags_to_snapshot: converted,
    }
  ),
  withDeletionProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection" expected to be of type "bool"';
    {
      deletion_protection: converted,
    }
  ),
  withEnableCloudwatchLogsExports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enable_cloudwatch_logs_exports" expected to be of type "set"';
    {
      enable_cloudwatch_logs_exports: converted,
    }
  ),
  withEnableCloudwatchLogsExportsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enable_cloudwatch_logs_exports" expected to be of type "set"';
    {
      enable_cloudwatch_logs_exports+: converted,
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
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withNeptuneClusterParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"neptune_cluster_parameter_group_name" expected to be of type "string"';
    {
      neptune_cluster_parameter_group_name: converted,
    }
  ),
  withNeptuneInstanceParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"neptune_instance_parameter_group_name" expected to be of type "string"';
    {
      neptune_instance_parameter_group_name: converted,
    }
  ),
  withNeptuneSubnetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"neptune_subnet_group_name" expected to be of type "string"';
    {
      neptune_subnet_group_name: converted,
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
  serverless_v2_scaling_configuration:: {
    local block = self,
    new():: (
      {}
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
  withServerlessV2ScalingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      serverless_v2_scaling_configuration+: converted,
    }
  ),
}
