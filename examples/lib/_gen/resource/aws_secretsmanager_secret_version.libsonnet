{
  local block = self,
  new(terraformName, secretId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_secretsmanager_secret_version",
          type:: "resource",
          attributes:: ["arn", "has_secret_string_wo", "id", "region", "secret_binary", "secret_id", "secret_string", "secret_string_wo", "secret_string_wo_version", "version_id", "version_stages"],
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
  withSecretBinary(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_binary" expected to be of type "string"';
    {
      secret_binary: converted,
    }
  ),
  withSecretId(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_id" expected to be of type "string"';
    {
      secret_id: converted,
    }
  ),
  withSecretString(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_string" expected to be of type "string"';
    {
      secret_string: converted,
    }
  ),
  withSecretStringWo(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_string_wo" expected to be of type "string"';
    {
      secret_string_wo: converted,
    }
  ),
  withSecretStringWoVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"secret_string_wo_version" expected to be of type "number"';
    {
      secret_string_wo_version: converted,
    }
  ),
  withVersionStages(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"version_stages" expected to be of type "set"';
    {
      version_stages: converted,
    }
  ),
  withVersionStagesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"version_stages" expected to be of type "set"';
    {
      version_stages+: converted,
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
