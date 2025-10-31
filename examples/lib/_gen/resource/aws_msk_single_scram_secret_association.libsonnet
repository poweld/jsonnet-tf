{
  local block = self,
  new(terraformName, clusterArn, secretArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_msk_single_scram_secret_association",
          type:: "resource",
          attributes:: ["cluster_arn", "id", "region", "secret_arn"],
        },
      },
    }
    + block.withClusterArn(clusterArn)
    + block.withSecretArn(secretArn)
  ),
  withClusterArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
    {
      cluster_arn: converted,
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
  withSecretArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
    {
      secret_arn: converted,
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
