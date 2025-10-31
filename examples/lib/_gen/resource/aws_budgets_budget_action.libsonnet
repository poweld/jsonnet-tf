{
  local block = self,
  new(terraformName, actionType, approvalModel, budgetName, executionRoleArn, notificationType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_budgets_budget_action",
          type:: "resource",
          attributes:: ["account_id", "action_id", "action_type", "approval_model", "arn", "budget_name", "execution_role_arn", "id", "notification_type", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withActionType(actionType)
    + block.withApprovalModel(approvalModel)
    + block.withBudgetName(budgetName)
    + block.withExecutionRoleArn(executionRoleArn)
    + block.withNotificationType(notificationType)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withActionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_type" expected to be of type "string"';
    {
      action_type: converted,
    }
  ),
  withApprovalModel(value):: (
    local converted = value;
    assert std.isString(converted) : '"approval_model" expected to be of type "string"';
    {
      approval_model: converted,
    }
  ),
  withBudgetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"budget_name" expected to be of type "string"';
    {
      budget_name: converted,
    }
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNotificationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_type" expected to be of type "string"';
    {
      notification_type: converted,
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
  action_threshold:: {
    local block = self,
    new(actionThresholdType, actionThresholdValue):: (
      {}
      + block.withActionThresholdType(actionThresholdType)
      + block.withActionThresholdValue(actionThresholdValue)
    ),
    withActionThresholdType(value):: (
      local converted = value;
      assert std.isString(converted) : '"action_threshold_type" expected to be of type "string"';
      {
        action_threshold_type: converted,
      }
    ),
    withActionThresholdValue(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"action_threshold_value" expected to be of type "number"';
      {
        action_threshold_value: converted,
      }
    ),
  },
  definition:: {
    local block = self,
    new():: (
      {}
    ),
    iam_action_definition:: {
      local block = self,
      new(policyArn):: (
        {}
        + block.withPolicyArn(policyArn)
      ),
      withGroups(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
        {
          groups: converted,
        }
      ),
      withGroupsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
        {
          groups+: converted,
        }
      ),
      withPolicyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_arn" expected to be of type "string"';
        {
          policy_arn: converted,
        }
      ),
      withRoles(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"roles" expected to be of type "set"';
        {
          roles: converted,
        }
      ),
      withRolesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"roles" expected to be of type "set"';
        {
          roles+: converted,
        }
      ),
      withUsers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
        {
          users: converted,
        }
      ),
      withUsersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
        {
          users+: converted,
        }
      ),
    },
    scp_action_definition:: {
      local block = self,
      new(policyId, targetIds):: (
        {}
        + block.withPolicyId(policyId)
        + block.withTargetIds(targetIds)
      ),
      withPolicyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"policy_id" expected to be of type "string"';
        {
          policy_id: converted,
        }
      ),
      withTargetIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_ids" expected to be of type "set"';
        {
          target_ids: converted,
        }
      ),
      withTargetIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_ids" expected to be of type "set"';
        {
          target_ids+: converted,
        }
      ),
    },
    ssm_action_definition:: {
      local block = self,
      new(actionSubType, instanceIds, region):: (
        {}
        + block.withActionSubType(actionSubType)
        + block.withInstanceIds(instanceIds)
        + block.withRegion(region)
      ),
      withActionSubType(value):: (
        local converted = value;
        assert std.isString(converted) : '"action_sub_type" expected to be of type "string"';
        {
          action_sub_type: converted,
        }
      ),
      withInstanceIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_ids" expected to be of type "set"';
        {
          instance_ids: converted,
        }
      ),
      withInstanceIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_ids" expected to be of type "set"';
        {
          instance_ids+: converted,
        }
      ),
      withRegion(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
    },
    withIamActionDefinition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iam_action_definition: value,
      }
    ),
    withScpActionDefinition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scp_action_definition: value,
      }
    ),
    withSsmActionDefinition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_action_definition: value,
      }
    ),
    withIamActionDefinitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iam_action_definition+: converted,
      }
    ),
    withScpActionDefinitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        scp_action_definition+: converted,
      }
    ),
    withSsmActionDefinitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_action_definition+: converted,
      }
    ),
  },
  subscriber:: {
    local block = self,
    new(address, subscriptionType):: (
      {}
      + block.withAddress(address)
      + block.withSubscriptionType(subscriptionType)
    ),
    withAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"address" expected to be of type "string"';
      {
        address: converted,
      }
    ),
    withSubscriptionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"subscription_type" expected to be of type "string"';
      {
        subscription_type: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withActionThreshold(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_threshold: value,
    }
  ),
  withDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition: value,
    }
  ),
  withSubscriber(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withActionThresholdMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_threshold+: converted,
    }
  ),
  withDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      definition+: converted,
    }
  ),
  withSubscriberMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber+: converted,
    }
  ),
}
