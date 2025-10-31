{
  local block = self,
  new(terraformName, taskArn, taskType, windowId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_maintenance_window_task",
          type:: "resource",
          attributes:: ["arn", "cutoff_behavior", "description", "id", "max_concurrency", "max_errors", "name", "priority", "region", "service_role_arn", "task_arn", "task_type", "window_id", "window_task_id"],
        },
      },
    }
    + block.withTaskArn(taskArn)
    + block.withTaskType(taskType)
    + block.withWindowId(windowId)
  ),
  withCutoffBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"cutoff_behavior" expected to be of type "string"';
    {
      cutoff_behavior: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxConcurrency(value):: (
    local converted = value;
    assert std.isString(converted) : '"max_concurrency" expected to be of type "string"';
    {
      max_concurrency: converted,
    }
  ),
  withMaxErrors(value):: (
    local converted = value;
    assert std.isString(converted) : '"max_errors" expected to be of type "string"';
    {
      max_errors: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  withServiceRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role_arn" expected to be of type "string"';
    {
      service_role_arn: converted,
    }
  ),
  withTaskArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_arn" expected to be of type "string"';
    {
      task_arn: converted,
    }
  ),
  withTaskType(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_type" expected to be of type "string"';
    {
      task_type: converted,
    }
  ),
  withWindowId(value):: (
    local converted = value;
    assert std.isString(converted) : '"window_id" expected to be of type "string"';
    {
      window_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  targets:: {
    local block = self,
    new(key, values):: (
      {}
      + block.withKey(key)
      + block.withValues(values)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  task_invocation_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    automation_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withDocumentVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_version" expected to be of type "string"';
        {
          document_version: converted,
        }
      ),
      parameter:: {
        local block = self,
        new(name, values):: (
          {}
          + block.withName(name)
          + block.withValues(values)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"values" expected to be of type "list"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"values" expected to be of type "list"';
          {
            values+: converted,
          }
        ),
      },
      withParameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter: value,
        }
      ),
      withParameterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter+: converted,
        }
      ),
    },
    lambda_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withClientContext(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_context" expected to be of type "string"';
        {
          client_context: converted,
        }
      ),
      withPayload(value):: (
        local converted = value;
        assert std.isString(converted) : '"payload" expected to be of type "string"';
        {
          payload: converted,
        }
      ),
      withQualifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"qualifier" expected to be of type "string"';
        {
          qualifier: converted,
        }
      ),
    },
    run_command_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withComment(value):: (
        local converted = value;
        assert std.isString(converted) : '"comment" expected to be of type "string"';
        {
          comment: converted,
        }
      ),
      withDocumentHash(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_hash" expected to be of type "string"';
        {
          document_hash: converted,
        }
      ),
      withDocumentHashType(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_hash_type" expected to be of type "string"';
        {
          document_hash_type: converted,
        }
      ),
      withDocumentVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_version" expected to be of type "string"';
        {
          document_version: converted,
        }
      ),
      withOutputS3Bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_s3_bucket" expected to be of type "string"';
        {
          output_s3_bucket: converted,
        }
      ),
      withOutputS3KeyPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_s3_key_prefix" expected to be of type "string"';
        {
          output_s3_key_prefix: converted,
        }
      ),
      withServiceRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_role_arn" expected to be of type "string"';
        {
          service_role_arn: converted,
        }
      ),
      withTimeoutSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_seconds" expected to be of type "number"';
        {
          timeout_seconds: converted,
        }
      ),
      cloudwatch_config:: {
        local block = self,
        new():: (
          {}
        ),
        withCloudwatchLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"cloudwatch_log_group_name" expected to be of type "string"';
          {
            cloudwatch_log_group_name: converted,
          }
        ),
        withCloudwatchOutputEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"cloudwatch_output_enabled" expected to be of type "bool"';
          {
            cloudwatch_output_enabled: converted,
          }
        ),
      },
      notification_config:: {
        local block = self,
        new():: (
          {}
        ),
        withNotificationArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"notification_arn" expected to be of type "string"';
          {
            notification_arn: converted,
          }
        ),
        withNotificationEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"notification_events" expected to be of type "list"';
          {
            notification_events: converted,
          }
        ),
        withNotificationEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"notification_events" expected to be of type "list"';
          {
            notification_events+: converted,
          }
        ),
        withNotificationType(value):: (
          local converted = value;
          assert std.isString(converted) : '"notification_type" expected to be of type "string"';
          {
            notification_type: converted,
          }
        ),
      },
      parameter:: {
        local block = self,
        new(name, values):: (
          {}
          + block.withName(name)
          + block.withValues(values)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"values" expected to be of type "list"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"values" expected to be of type "list"';
          {
            values+: converted,
          }
        ),
      },
      withCloudwatchConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_config: value,
        }
      ),
      withNotificationConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          notification_config: value,
        }
      ),
      withParameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter: value,
        }
      ),
      withCloudwatchConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_config+: converted,
        }
      ),
      withNotificationConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          notification_config+: converted,
        }
      ),
      withParameterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter+: converted,
        }
      ),
    },
    step_functions_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withInput(value):: (
        local converted = value;
        assert std.isString(converted) : '"input" expected to be of type "string"';
        {
          input: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    withAutomationParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        automation_parameters: value,
      }
    ),
    withLambdaParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_parameters: value,
      }
    ),
    withRunCommandParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        run_command_parameters: value,
      }
    ),
    withStepFunctionsParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_functions_parameters: value,
      }
    ),
    withAutomationParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        automation_parameters+: converted,
      }
    ),
    withLambdaParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_parameters+: converted,
      }
    ),
    withRunCommandParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        run_command_parameters+: converted,
      }
    ),
    withStepFunctionsParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_functions_parameters+: converted,
      }
    ),
  },
  withTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets: value,
    }
  ),
  withTaskInvocationParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task_invocation_parameters: value,
    }
  ),
  withTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets+: converted,
    }
  ),
  withTaskInvocationParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task_invocation_parameters+: converted,
    }
  ),
}
