{
  local block = self,
  new(terraformName, configRuleName, targetId, targetType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_config_remediation_configuration",
          type:: "resource",
          attributes:: ["arn", "automatic", "config_rule_name", "id", "maximum_automatic_attempts", "region", "resource_type", "retry_attempt_seconds", "target_id", "target_type", "target_version"],
        },
      },
    }
    + block.withConfigRuleName(configRuleName)
    + block.withTargetId(targetId)
    + block.withTargetType(targetType)
  ),
  withAutomatic(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"automatic" expected to be of type "bool"';
    {
      automatic: converted,
    }
  ),
  withConfigRuleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"config_rule_name" expected to be of type "string"';
    {
      config_rule_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaximumAutomaticAttempts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_automatic_attempts" expected to be of type "number"';
    {
      maximum_automatic_attempts: converted,
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
  withResourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  withRetryAttemptSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retry_attempt_seconds" expected to be of type "number"';
    {
      retry_attempt_seconds: converted,
    }
  ),
  withTargetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_id" expected to be of type "string"';
    {
      target_id: converted,
    }
  ),
  withTargetType(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_type" expected to be of type "string"';
    {
      target_type: converted,
    }
  ),
  withTargetVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_version" expected to be of type "string"';
    {
      target_version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  execution_controls:: {
    local block = self,
    new():: (
      {}
    ),
    ssm_controls:: {
      local block = self,
      new():: (
        {}
      ),
      withConcurrentExecutionRatePercentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"concurrent_execution_rate_percentage" expected to be of type "number"';
        {
          concurrent_execution_rate_percentage: converted,
        }
      ),
      withErrorPercentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"error_percentage" expected to be of type "number"';
        {
          error_percentage: converted,
        }
      ),
    },
    withSsmControls(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_controls: value,
      }
    ),
    withSsmControlsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_controls+: converted,
      }
    ),
  },
  parameter:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withResourceValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_value" expected to be of type "string"';
      {
        resource_value: converted,
      }
    ),
    withStaticValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"static_value" expected to be of type "string"';
      {
        static_value: converted,
      }
    ),
    withStaticValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"static_values" expected to be of type "list"';
      {
        static_values: converted,
      }
    ),
    withStaticValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"static_values" expected to be of type "list"';
      {
        static_values+: converted,
      }
    ),
  },
  withExecutionControls(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      execution_controls: value,
    }
  ),
  withParameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter: value,
    }
  ),
  withExecutionControlsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      execution_controls+: converted,
    }
  ),
  withParameterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter+: converted,
    }
  ),
}
