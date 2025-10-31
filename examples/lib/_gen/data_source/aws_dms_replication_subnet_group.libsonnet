{
  local block = self,
  new(terraformName, replicationSubnetGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_replication_subnet_group",
          type:: "data",
          attributes:: ["id", "region", "replication_subnet_group_arn", "replication_subnet_group_description", "replication_subnet_group_id", "subnet_group_status", "subnet_ids", "tags", "vpc_id"],
        },
      },
    }
    + block.withReplicationSubnetGroupId(replicationSubnetGroupId)
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
  withReplicationSubnetGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_subnet_group_id" expected to be of type "string"';
    {
      replication_subnet_group_id: converted,
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
