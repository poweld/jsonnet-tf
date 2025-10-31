{
  local block = self,
  new(terraformName, clusterArn, secretArnList):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_msk_scram_secret_association",
          type:: "resource",
          attributes:: ["cluster_arn", "id", "region", "secret_arn_list"],
        },
      },
    }
    + block.withClusterArn(clusterArn)
    + block.withSecretArnList(secretArnList)
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
  withSecretArnList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secret_arn_list" expected to be of type "set"';
    {
      secret_arn_list: converted,
    }
  ),
  withSecretArnListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secret_arn_list" expected to be of type "set"';
    {
      secret_arn_list+: converted,
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
