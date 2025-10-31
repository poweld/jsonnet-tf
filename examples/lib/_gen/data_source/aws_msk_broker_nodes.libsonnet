{
  local block = self,
  new(terraformName, clusterArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_msk_broker_nodes",
          type:: "data",
          attributes:: ["cluster_arn", "id", "node_info_list", "region"],
        },
      },
    }
    + block.withClusterArn(clusterArn)
  ),
  withClusterArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
    {
      cluster_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
