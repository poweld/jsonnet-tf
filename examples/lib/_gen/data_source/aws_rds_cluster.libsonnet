{
  local block = self,
  new(terraformName, clusterIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_cluster",
          type:: "data",
          attributes:: ["arn", "availability_zones", "backtrack_window", "backup_retention_period", "cluster_identifier", "cluster_members", "cluster_resource_id", "cluster_scalability_type", "database_insights_mode", "database_name", "db_cluster_parameter_group_name", "db_subnet_group_name", "db_system_id", "enabled_cloudwatch_logs_exports", "endpoint", "engine", "engine_mode", "engine_version", "final_snapshot_identifier", "hosted_zone_id", "iam_database_authentication_enabled", "iam_roles", "id", "kms_key_id", "master_user_secret", "master_username", "monitoring_interval", "monitoring_role_arn", "network_type", "port", "preferred_backup_window", "preferred_maintenance_window", "reader_endpoint", "region", "replication_source_identifier", "storage_encrypted", "tags", "vpc_security_group_ids"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
