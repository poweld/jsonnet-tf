{
  local block = self,
  new(terraformName, secretId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_secretsmanager_secret_rotation",
          type:: "resource",
          attributes:: ["id", "region", "rotate_immediately", "rotation_enabled", "rotation_lambda_arn", "secret_id"],
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
  withRotateImmediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"rotate_immediately" expected to be of type "bool"';
    {
      rotate_immediately: converted,
    }
  ),
  withRotationLambdaArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"rotation_lambda_arn" expected to be of type "string"';
    {
      rotation_lambda_arn: converted,
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
  rotation_rules:: {
    local block = self,
    new():: (
      {}
    ),
    withAutomaticallyAfterDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"automatically_after_days" expected to be of type "number"';
      {
        automatically_after_days: converted,
      }
    ),
    withDuration(value):: (
      local converted = value;
      assert std.isString(converted) : '"duration" expected to be of type "string"';
      {
        duration: converted,
      }
    ),
    withScheduleExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
      {
        schedule_expression: converted,
      }
    ),
  },
  withRotationRules(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rotation_rules: value,
    }
  ),
  withRotationRulesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rotation_rules+: converted,
    }
  ),
}
