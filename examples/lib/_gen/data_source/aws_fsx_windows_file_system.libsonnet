{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_windows_file_system",
          type:: "data",
          attributes:: ["active_directory_id", "aliases", "arn", "audit_log_configuration", "automatic_backup_retention_days", "backup_id", "copy_tags_to_backups", "daily_automatic_backup_start_time", "deployment_type", "disk_iops_configuration", "dns_name", "id", "kms_key_id", "network_interface_ids", "owner_id", "preferred_file_server_ip", "preferred_subnet_id", "region", "security_group_ids", "skip_final_backup", "storage_capacity", "storage_type", "subnet_ids", "tags", "throughput_capacity", "vpc_id", "weekly_maintenance_start_time"],
        },
      },
    }
    + block.withId(id)
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
