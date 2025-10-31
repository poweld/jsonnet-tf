{
  local block = self,
  new(terraformName, dbProxyName, targetGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_proxy_target",
          type:: "resource",
          attributes:: ["db_cluster_identifier", "db_instance_identifier", "db_proxy_name", "endpoint", "id", "port", "rds_resource_id", "region", "target_arn", "target_group_name", "tracked_cluster_id", "type"],
        },
      },
    }
    + block.withDbProxyName(dbProxyName)
    + block.withTargetGroupName(targetGroupName)
  ),
  withDbClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_identifier" expected to be of type "string"';
    {
      db_cluster_identifier: converted,
    }
  ),
  withDbInstanceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_identifier" expected to be of type "string"';
    {
      db_instance_identifier: converted,
    }
  ),
  withDbProxyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_proxy_name" expected to be of type "string"';
    {
      db_proxy_name: converted,
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
  withTargetGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_group_name" expected to be of type "string"';
    {
      target_group_name: converted,
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
