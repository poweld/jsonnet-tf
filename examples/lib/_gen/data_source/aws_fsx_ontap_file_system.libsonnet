{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fsx_ontap_file_system",
          type:: "data",
          attributes:: ["arn", "automatic_backup_retention_days", "daily_automatic_backup_start_time", "deployment_type", "disk_iops_configuration", "dns_name", "endpoint_ip_address_range", "endpoints", "ha_pairs", "id", "kms_key_id", "network_interface_ids", "owner_id", "preferred_subnet_id", "region", "route_table_ids", "storage_capacity", "storage_type", "subnet_ids", "tags", "throughput_capacity", "throughput_capacity_per_ha_pair", "vpc_id", "weekly_maintenance_start_time"],
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
