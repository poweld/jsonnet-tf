{
  local block = self,
  new(terraformName, endpointConfigName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_endpoint",
          type:: "resource",
          attributes:: ["arn", "endpoint_config_name", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withEndpointConfigName(endpointConfigName)
  ),
  withEndpointConfigName(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_config_name" expected to be of type "string"';
    {
      endpoint_config_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  deployment_config:: {
    local block = self,
    new():: (
      {}
    ),
    auto_rollback_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      alarms:: {
        local block = self,
        new(alarmName):: (
          {}
          + block.withAlarmName(alarmName)
        ),
        withAlarmName(value):: (
          local converted = value;
          assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
          {
            alarm_name: converted,
          }
        ),
      },
      withAlarms(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          alarms: value,
        }
      ),
      withAlarmsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          alarms+: converted,
        }
      ),
    },
    blue_green_update_policy:: {
      local block = self,
      new():: (
        {}
      ),
      withMaximumExecutionTimeoutInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_execution_timeout_in_seconds" expected to be of type "number"';
        {
          maximum_execution_timeout_in_seconds: converted,
        }
      ),
      withTerminationWaitInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"termination_wait_in_seconds" expected to be of type "number"';
        {
          termination_wait_in_seconds: converted,
        }
      ),
      traffic_routing_configuration:: {
        local block = self,
        new(type, waitIntervalInSeconds):: (
          {}
          + block.withType(type)
          + block.withWaitIntervalInSeconds(waitIntervalInSeconds)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        withWaitIntervalInSeconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"wait_interval_in_seconds" expected to be of type "number"';
          {
            wait_interval_in_seconds: converted,
          }
        ),
        canary_size:: {
          local block = self,
          new(type, value):: (
            {}
            + block.withType(type)
            + block.withValue(value)
          ),
          withType(value):: (
            local converted = value;
            assert std.isString(converted) : '"type" expected to be of type "string"';
            {
              type: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        linear_step_size:: {
          local block = self,
          new(type, value):: (
            {}
            + block.withType(type)
            + block.withValue(value)
          ),
          withType(value):: (
            local converted = value;
            assert std.isString(converted) : '"type" expected to be of type "string"';
            {
              type: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withCanarySize(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            canary_size: value,
          }
        ),
        withLinearStepSize(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            linear_step_size: value,
          }
        ),
        withCanarySizeMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            canary_size+: converted,
          }
        ),
        withLinearStepSizeMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            linear_step_size+: converted,
          }
        ),
      },
      withTrafficRoutingConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          traffic_routing_configuration: value,
        }
      ),
      withTrafficRoutingConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          traffic_routing_configuration+: converted,
        }
      ),
    },
    rolling_update_policy:: {
      local block = self,
      new(waitIntervalInSeconds):: (
        {}
        + block.withWaitIntervalInSeconds(waitIntervalInSeconds)
      ),
      withMaximumExecutionTimeoutInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_execution_timeout_in_seconds" expected to be of type "number"';
        {
          maximum_execution_timeout_in_seconds: converted,
        }
      ),
      withWaitIntervalInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"wait_interval_in_seconds" expected to be of type "number"';
        {
          wait_interval_in_seconds: converted,
        }
      ),
      maximum_batch_size:: {
        local block = self,
        new(type, value):: (
          {}
          + block.withType(type)
          + block.withValue(value)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      rollback_maximum_batch_size:: {
        local block = self,
        new(type, value):: (
          {}
          + block.withType(type)
          + block.withValue(value)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      withMaximumBatchSize(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          maximum_batch_size: value,
        }
      ),
      withRollbackMaximumBatchSize(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rollback_maximum_batch_size: value,
        }
      ),
      withMaximumBatchSizeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          maximum_batch_size+: converted,
        }
      ),
      withRollbackMaximumBatchSizeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rollback_maximum_batch_size+: converted,
        }
      ),
    },
    withAutoRollbackConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_rollback_configuration: value,
      }
    ),
    withBlueGreenUpdatePolicy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        blue_green_update_policy: value,
      }
    ),
    withRollingUpdatePolicy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rolling_update_policy: value,
      }
    ),
    withAutoRollbackConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_rollback_configuration+: converted,
      }
    ),
    withBlueGreenUpdatePolicyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        blue_green_update_policy+: converted,
      }
    ),
    withRollingUpdatePolicyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rolling_update_policy+: converted,
      }
    ),
  },
  withDeploymentConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_config: value,
    }
  ),
  withDeploymentConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_config+: converted,
    }
  ),
}
