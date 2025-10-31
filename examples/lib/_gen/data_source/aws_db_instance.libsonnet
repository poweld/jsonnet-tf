{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_instance",
          type:: "data",
          attributes:: ["address", "allocated_storage", "auto_minor_version_upgrade", "availability_zone", "backup_retention_period", "ca_cert_identifier", "database_insights_mode", "db_cluster_identifier", "db_instance_arn", "db_instance_class", "db_instance_identifier", "db_instance_port", "db_name", "db_parameter_groups", "db_subnet_group", "enabled_cloudwatch_logs_exports", "endpoint", "engine", "engine_version", "hosted_zone_id", "id", "iops", "kms_key_id", "license_model", "master_user_secret", "master_username", "max_allocated_storage", "monitoring_interval", "monitoring_role_arn", "multi_az", "network_type", "option_group_memberships", "port", "preferred_backup_window", "preferred_maintenance_window", "publicly_accessible", "region", "replicate_source_db", "resource_id", "storage_encrypted", "storage_throughput", "storage_type", "tags", "timezone", "vpc_security_groups"],
        },
      },
    }
  ),
  withDbInstanceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_identifier" expected to be of type "string"';
    {
      db_instance_identifier: converted,
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
