{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_prometheus_workspace",
          type:: "resource",
          attributes:: ["alias", "arn", "id", "kms_key_arn", "prometheus_endpoint", "region", "tags", "tags_all"],
        },
      },
    }
  ),
  withAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  logging_configuration:: {
    local block = self,
    new(logGroupArn):: (
      {}
      + block.withLogGroupArn(logGroupArn)
    ),
    withLogGroupArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
      {
        log_group_arn: converted,
      }
    ),
  },
  withLoggingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration: value,
    }
  ),
  withLoggingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration+: converted,
    }
  ),
}
