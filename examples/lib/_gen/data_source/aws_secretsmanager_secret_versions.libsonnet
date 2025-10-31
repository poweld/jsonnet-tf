{
  local block = self,
  new(terraformName, secretId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_secretsmanager_secret_versions",
          type:: "data",
          attributes:: ["arn", "include_deprecated", "name", "region", "secret_id", "versions"],
        },
      },
    }
    + block.withSecretId(secretId)
  ),
  withIncludeDeprecated(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_deprecated" expected to be of type "bool"';
    {
      include_deprecated: converted,
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
  withSecretId(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_id" expected to be of type "string"';
    {
      secret_id: converted,
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
