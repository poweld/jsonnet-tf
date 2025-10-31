{
  local block = self,
  new(terraformName, clusterIdentifier, instanceClass):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_docdb_cluster_instance",
          type:: "resource",
          attributes:: ["apply_immediately", "arn", "auto_minor_version_upgrade", "availability_zone", "ca_cert_identifier", "cluster_identifier", "copy_tags_to_snapshot", "db_subnet_group_name", "dbi_resource_id", "enable_performance_insights", "endpoint", "engine", "engine_version", "id", "identifier", "identifier_prefix", "instance_class", "kms_key_id", "performance_insights_kms_key_id", "port", "preferred_backup_window", "preferred_maintenance_window", "promotion_tier", "publicly_accessible", "region", "storage_encrypted", "tags", "tags_all", "writer"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
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
  withEnablePerformanceInsights(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_performance_insights" expected to be of type "bool"';
    {
      enable_performance_insights: converted,
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
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
  withPerformanceInsightsKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"performance_insights_kms_key_id" expected to be of type "string"';
    {
      performance_insights_kms_key_id: converted,
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
