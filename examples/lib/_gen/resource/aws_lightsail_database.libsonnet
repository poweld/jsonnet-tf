{
  local block = self,
  new(terraformName, blueprintId, bundleId, masterDatabaseName, masterPassword, masterUsername, relationalDatabaseName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_database",
          type:: "resource",
          attributes:: ["apply_immediately", "arn", "availability_zone", "backup_retention_enabled", "blueprint_id", "bundle_id", "ca_certificate_identifier", "cpu_count", "created_at", "disk_size", "engine", "engine_version", "final_snapshot_name", "id", "master_database_name", "master_endpoint_address", "master_endpoint_port", "master_password", "master_username", "preferred_backup_window", "preferred_maintenance_window", "publicly_accessible", "ram_size", "region", "relational_database_name", "secondary_availability_zone", "skip_final_snapshot", "support_code", "tags", "tags_all"],
        },
      },
    }
    + block.withBlueprintId(blueprintId)
    + block.withBundleId(bundleId)
    + block.withMasterDatabaseName(masterDatabaseName)
    + block.withMasterPassword(masterPassword)
    + block.withMasterUsername(masterUsername)
    + block.withRelationalDatabaseName(relationalDatabaseName)
  ),
  withApplyImmediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withBackupRetentionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"backup_retention_enabled" expected to be of type "bool"';
    {
      backup_retention_enabled: converted,
    }
  ),
  withBlueprintId(value):: (
    local converted = value;
    assert std.isString(converted) : '"blueprint_id" expected to be of type "string"';
    {
      blueprint_id: converted,
    }
  ),
  withBundleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  withFinalSnapshotName(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_name" expected to be of type "string"';
    {
      final_snapshot_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMasterDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_database_name" expected to be of type "string"';
    {
      master_database_name: converted,
    }
  ),
  withMasterPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_password" expected to be of type "string"';
    {
      master_password: converted,
    }
  ),
  withMasterUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_username" expected to be of type "string"';
    {
      master_username: converted,
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
  withRelationalDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"relational_database_name" expected to be of type "string"';
    {
      relational_database_name: converted,
    }
  ),
  withSkipFinalSnapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_snapshot" expected to be of type "bool"';
    {
      skip_final_snapshot: converted,
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
}
