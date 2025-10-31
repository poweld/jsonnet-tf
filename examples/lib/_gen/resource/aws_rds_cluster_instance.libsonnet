{
  local block = self,
  new(terraformName, clusterIdentifier, engine, instanceClass):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_cluster_instance",
          type:: "resource",
          attributes:: ["apply_immediately", "arn", "auto_minor_version_upgrade", "availability_zone", "ca_cert_identifier", "cluster_identifier", "copy_tags_to_snapshot", "custom_iam_instance_profile", "db_parameter_group_name", "db_subnet_group_name", "dbi_resource_id", "endpoint", "engine", "engine_version", "engine_version_actual", "force_destroy", "id", "identifier", "identifier_prefix", "instance_class", "kms_key_id", "monitoring_interval", "monitoring_role_arn", "network_type", "performance_insights_enabled", "performance_insights_kms_key_id", "performance_insights_retention_period", "port", "preferred_backup_window", "preferred_maintenance_window", "promotion_tier", "publicly_accessible", "region", "storage_encrypted", "tags", "tags_all", "writer"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
    + block.withEngine(engine)
    + block.withInstanceClass(instanceClass)
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
  withCaCertIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_cert_identifier" expected to be of type "string"';
    {
      ca_cert_identifier: converted,
    }
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
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
  withDbParameterGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_parameter_group_name" expected to be of type "string"';
    {
      db_parameter_group_name: converted,
    }
  ),
  withDbSubnetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_subnet_group_name" expected to be of type "string"';
    {
      db_subnet_group_name: converted,
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
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
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
  withPromotionTier(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"promotion_tier" expected to be of type "number"';
    {
      promotion_tier: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
