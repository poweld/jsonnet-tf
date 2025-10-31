{
  local block = self,
  new(terraformName, scheduleExpression):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_scheduler_schedule",
          type:: "resource",
          attributes:: ["arn", "description", "end_date", "group_name", "id", "kms_key_arn", "name", "name_prefix", "region", "schedule_expression", "schedule_expression_timezone", "start_date", "state"],
        },
      },
    }
    + block.withScheduleExpression(scheduleExpression)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEndDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date" expected to be of type "string"';
    {
      end_date: converted,
    }
  ),
  withGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  withScheduleExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
    {
      schedule_expression: converted,
    }
  ),
  withScheduleExpressionTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression_timezone" expected to be of type "string"';
    {
      schedule_expression_timezone: converted,
    }
  ),
  withStartDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_date" expected to be of type "string"';
    {
      start_date: converted,
    }
  ),
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  flexible_time_window:: {
    local block = self,
    new(mode):: (
      {}
      + block.withMode(mode)
    ),
    withMaximumWindowInMinutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_window_in_minutes" expected to be of type "number"';
      {
        maximum_window_in_minutes: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  target:: {
    local block = self,
    new(arn, roleArn):: (
      {}
      + block.withArn(arn)
      + block.withRoleArn(roleArn)
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    withInput(value):: (
      local converted = value;
      assert std.isString(converted) : '"input" expected to be of type "string"';
      {
        input: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    dead_letter_config:: {
      local block = self,
      new(arn):: (
        {}
        + block.withArn(arn)
      ),
      withArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    ecs_parameters:: {
      local block = self,
      new(taskDefinitionArn):: (
        {}
        + block.withTaskDefinitionArn(taskDefinitionArn)
      ),
      withEnableEcsManagedTags(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_ecs_managed_tags" expected to be of type "bool"';
        {
          enable_ecs_managed_tags: converted,
        }
      ),
      withEnableExecuteCommand(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_execute_command" expected to be of type "bool"';
        {
          enable_execute_command: converted,
        }
      ),
      withGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"group" expected to be of type "string"';
        {
          group: converted,
        }
      ),
      withLaunchType(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_type" expected to be of type "string"';
        {
          launch_type: converted,
        }
      ),
      withPlatformVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"platform_version" expected to be of type "string"';
        {
          platform_version: converted,
        }
      ),
      withPropagateTags(value):: (
        local converted = value;
        assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
        {
          propagate_tags: converted,
        }
      ),
      withReferenceId(value):: (
        local converted = value;
        assert std.isString(converted) : '"reference_id" expected to be of type "string"';
        {
          reference_id: converted,
        }
      ),
      withTags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags" expected to be of type "map"';
        {
          tags: converted,
        }
      ),
      withTaskCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"task_count" expected to be of type "number"';
        {
          task_count: converted,
        }
      ),
      withTaskDefinitionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"task_definition_arn" expected to be of type "string"';
        {
          task_definition_arn: converted,
        }
      ),
      capacity_provider_strategy:: {
        local block = self,
        new(capacityProvider):: (
          {}
          + block.withCapacityProvider(capacityProvider)
        ),
        withBase(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"base" expected to be of type "number"';
          {
            base: converted,
          }
        ),
        withCapacityProvider(value):: (
          local converted = value;
          assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
          {
            capacity_provider: converted,
          }
        ),
        withWeight(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"weight" expected to be of type "number"';
          {
            weight: converted,
          }
        ),
      },
      network_configuration:: {
        local block = self,
        new(subnets):: (
          {}
          + block.withSubnets(subnets)
        ),
        withAssignPublicIp(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"assign_public_ip" expected to be of type "bool"';
          {
            assign_public_ip: converted,
          }
        ),
        withSecurityGroups(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
          {
            security_groups: converted,
          }
        ),
        withSecurityGroupsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
          {
            security_groups+: converted,
          }
        ),
        withSubnets(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
          {
            subnets: converted,
          }
        ),
        withSubnetsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
          {
            subnets+: converted,
          }
        ),
      },
      placement_constraints:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withExpression(value):: (
          local converted = value;
          assert std.isString(converted) : '"expression" expected to be of type "string"';
          {
            expression: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      placement_strategy:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withField(value):: (
          local converted = value;
          assert std.isString(converted) : '"field" expected to be of type "string"';
          {
            field: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      withCapacityProviderStrategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_provider_strategy: value,
        }
      ),
      withNetworkConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_configuration: value,
        }
      ),
      withPlacementConstraints(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_constraints: value,
        }
      ),
      withPlacementStrategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_strategy: value,
        }
      ),
      withCapacityProviderStrategyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_provider_strategy+: converted,
        }
      ),
      withNetworkConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_configuration+: converted,
        }
      ),
      withPlacementConstraintsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_constraints+: converted,
        }
      ),
      withPlacementStrategyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_strategy+: converted,
        }
      ),
    },
    eventbridge_parameters:: {
      local block = self,
      new(detailType, source):: (
        {}
        + block.withDetailType(detailType)
        + block.withSource(source)
      ),
      withDetailType(value):: (
        local converted = value;
        assert std.isString(converted) : '"detail_type" expected to be of type "string"';
        {
          detail_type: converted,
        }
      ),
      withSource(value):: (
        local converted = value;
        assert std.isString(converted) : '"source" expected to be of type "string"';
        {
          source: converted,
        }
      ),
    },
    kinesis_parameters:: {
      local block = self,
      new(partitionKey):: (
        {}
        + block.withPartitionKey(partitionKey)
      ),
      withPartitionKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition_key" expected to be of type "string"';
        {
          partition_key: converted,
        }
      ),
    },
    retry_policy:: {
      local block = self,
      new():: (
        {}
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
    },
    sagemaker_pipeline_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      pipeline_parameter:: {
        local block = self,
        new(name, value):: (
          {}
          + block.withName(name)
          + block.withValue(value)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      withPipelineParameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pipeline_parameter: value,
        }
      ),
      withPipelineParameterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pipeline_parameter+: converted,
        }
      ),
    },
    sqs_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withMessageGroupId(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_group_id" expected to be of type "string"';
        {
          message_group_id: converted,
        }
      ),
    },
    withDeadLetterConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dead_letter_config: value,
      }
    ),
    withEcsParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecs_parameters: value,
      }
    ),
    withEventbridgeParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eventbridge_parameters: value,
      }
    ),
    withKinesisParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_parameters: value,
      }
    ),
    withRetryPolicy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retry_policy: value,
      }
    ),
    withSagemakerPipelineParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sagemaker_pipeline_parameters: value,
      }
    ),
    withSqsParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_parameters: value,
      }
    ),
    withDeadLetterConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dead_letter_config+: converted,
      }
    ),
    withEcsParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecs_parameters+: converted,
      }
    ),
    withEventbridgeParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eventbridge_parameters+: converted,
      }
    ),
    withKinesisParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_parameters+: converted,
      }
    ),
    withRetryPolicyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retry_policy+: converted,
      }
    ),
    withSagemakerPipelineParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sagemaker_pipeline_parameters+: converted,
      }
    ),
    withSqsParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_parameters+: converted,
      }
    ),
  },
  withFlexibleTimeWindow(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      flexible_time_window: value,
    }
  ),
  withTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target: value,
    }
  ),
  withFlexibleTimeWindowMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      flexible_time_window+: converted,
    }
  ),
  withTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target+: converted,
    }
  ),
}
