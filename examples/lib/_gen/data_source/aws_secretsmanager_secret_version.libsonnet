{
  local block = self,
  new(terraformName, secretId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_secretsmanager_secret_version",
          type:: "data",
          attributes:: ["arn", "created_date", "id", "region", "secret_binary", "secret_id", "secret_string", "version_id", "version_stage", "version_stages"],
        },
      },
    }
    + block.withSecretId(secretId)
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
  withSecretId(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_id" expected to be of type "string"';
    {
      secret_id: converted,
    }
  ),
  withVersionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
    }
  ),
  withVersionStage(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_stage" expected to be of type "string"';
    {
      version_stage: converted,
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
