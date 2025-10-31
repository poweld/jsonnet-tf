{
  local block = self,
  new(terraformName, replicationInstanceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_replication_instance",
          type:: "data",
          attributes:: ["allocated_storage", "auto_minor_version_upgrade", "availability_zone", "engine_version", "id", "kms_key_arn", "multi_az", "network_type", "preferred_maintenance_window", "publicly_accessible", "region", "replication_instance_arn", "replication_instance_class", "replication_instance_id", "replication_instance_private_ips", "replication_instance_public_ips", "replication_subnet_group_id", "tags", "vpc_security_group_ids"],
        },
      },
    }
    + block.withReplicationInstanceId(replicationInstanceId)
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
  withReplicationInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_instance_id" expected to be of type "string"';
    {
      replication_instance_id: converted,
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
