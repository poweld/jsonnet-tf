{
  local block = self,
  new(terraformName, functionName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_function_event_invoke_config",
          type:: "resource",
          attributes:: ["function_name", "id", "maximum_event_age_in_seconds", "maximum_retry_attempts", "qualifier", "region"],
        },
      },
    }
    + block.withFunctionName(functionName)
  ),
  withFunctionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaximumEventAgeInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_event_age_in_seconds" expected to be of type "number"';
    {
      maximum_event_age_in_seconds: converted,
    }
  ),
  withMaximumRetryAttempts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_retry_attempts" expected to be of type "number"';
    {
      maximum_retry_attempts: converted,
    }
  ),
  withQualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  destination_config:: {
    local block = self,
    new():: (
      {}
    ),
    on_failure:: {
      local block = self,
      new(destination):: (
        {}
        + block.withDestination(destination)
      ),
      withDestination(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination" expected to be of type "string"';
        {
          destination: converted,
        }
      ),
    },
    on_success:: {
      local block = self,
      new(destination):: (
        {}
        + block.withDestination(destination)
      ),
      withDestination(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination" expected to be of type "string"';
        {
          destination: converted,
        }
      ),
    },
    withOnFailure(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure: value,
      }
    ),
    withOnSuccess(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_success: value,
      }
    ),
    withOnFailureMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure+: converted,
      }
    ),
    withOnSuccessMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_success+: converted,
      }
    ),
  },
  withDestinationConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_config: value,
    }
  ),
  withDestinationConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_config+: converted,
    }
  ),
}
