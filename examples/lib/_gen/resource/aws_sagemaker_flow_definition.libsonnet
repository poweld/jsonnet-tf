{
  local block = self,
  new(terraformName, flowDefinitionName, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_flow_definition",
          type:: "resource",
          attributes:: ["arn", "flow_definition_name", "id", "region", "role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withFlowDefinitionName(flowDefinitionName)
    + block.withRoleArn(roleArn)
  ),
  withFlowDefinitionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"flow_definition_name" expected to be of type "string"';
    {
      flow_definition_name: converted,
    }
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  human_loop_activation_config:: {
    local block = self,
    new():: (
      {}
    ),
    human_loop_activation_conditions_config:: {
      local block = self,
      new(humanLoopActivationConditions):: (
        {}
        + block.withHumanLoopActivationConditions(humanLoopActivationConditions)
      ),
      withHumanLoopActivationConditions(value):: (
        local converted = value;
        assert std.isString(converted) : '"human_loop_activation_conditions" expected to be of type "string"';
        {
          human_loop_activation_conditions: converted,
        }
      ),
    },
    withHumanLoopActivationConditionsConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        human_loop_activation_conditions_config: value,
      }
    ),
    withHumanLoopActivationConditionsConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        human_loop_activation_conditions_config+: converted,
      }
    ),
  },
  human_loop_config:: {
    local block = self,
    new(humanTaskUiArn, taskCount, taskDescription, taskTitle, workteamArn):: (
      {}
      + block.withHumanTaskUiArn(humanTaskUiArn)
      + block.withTaskCount(taskCount)
      + block.withTaskDescription(taskDescription)
      + block.withTaskTitle(taskTitle)
      + block.withWorkteamArn(workteamArn)
    ),
    withHumanTaskUiArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"human_task_ui_arn" expected to be of type "string"';
      {
        human_task_ui_arn: converted,
      }
    ),
    withTaskAvailabilityLifetimeInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"task_availability_lifetime_in_seconds" expected to be of type "number"';
      {
        task_availability_lifetime_in_seconds: converted,
      }
    ),
    withTaskCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"task_count" expected to be of type "number"';
      {
        task_count: converted,
      }
    ),
    withTaskDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_description" expected to be of type "string"';
      {
        task_description: converted,
      }
    ),
    withTaskKeywords(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"task_keywords" expected to be of type "set"';
      {
        task_keywords: converted,
      }
    ),
    withTaskKeywordsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"task_keywords" expected to be of type "set"';
      {
        task_keywords+: converted,
      }
    ),
    withTaskTimeLimitInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"task_time_limit_in_seconds" expected to be of type "number"';
      {
        task_time_limit_in_seconds: converted,
      }
    ),
    withTaskTitle(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_title" expected to be of type "string"';
      {
        task_title: converted,
      }
    ),
    withWorkteamArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"workteam_arn" expected to be of type "string"';
      {
        workteam_arn: converted,
      }
    ),
    public_workforce_task_price:: {
      local block = self,
      new():: (
        {}
      ),
      amount_in_usd:: {
        local block = self,
        new():: (
          {}
        ),
        withCents(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"cents" expected to be of type "number"';
          {
            cents: converted,
          }
        ),
        withDollars(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"dollars" expected to be of type "number"';
          {
            dollars: converted,
          }
        ),
        withTenthFractionsOfACent(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"tenth_fractions_of_a_cent" expected to be of type "number"';
          {
            tenth_fractions_of_a_cent: converted,
          }
        ),
      },
      withAmountInUsd(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amount_in_usd: value,
        }
      ),
      withAmountInUsdMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amount_in_usd+: converted,
        }
      ),
    },
    withPublicWorkforceTaskPrice(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        public_workforce_task_price: value,
      }
    ),
    withPublicWorkforceTaskPriceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        public_workforce_task_price+: converted,
      }
    ),
  },
  human_loop_request_source:: {
    local block = self,
    new(awsManagedHumanLoopRequestSource):: (
      {}
      + block.withAwsManagedHumanLoopRequestSource(awsManagedHumanLoopRequestSource)
    ),
    withAwsManagedHumanLoopRequestSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"aws_managed_human_loop_request_source" expected to be of type "string"';
      {
        aws_managed_human_loop_request_source: converted,
      }
    ),
  },
  output_config:: {
    local block = self,
    new(s3OutputPath):: (
      {}
      + block.withS3OutputPath(s3OutputPath)
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    withS3OutputPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_output_path" expected to be of type "string"';
      {
        s3_output_path: converted,
      }
    ),
  },
  withHumanLoopActivationConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_activation_config: value,
    }
  ),
  withHumanLoopConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_config: value,
    }
  ),
  withHumanLoopRequestSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_request_source: value,
    }
  ),
  withOutputConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_config: value,
    }
  ),
  withHumanLoopActivationConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_activation_config+: converted,
    }
  ),
  withHumanLoopConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_config+: converted,
    }
  ),
  withHumanLoopRequestSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      human_loop_request_source+: converted,
    }
  ),
  withOutputConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_config+: converted,
    }
  ),
}
