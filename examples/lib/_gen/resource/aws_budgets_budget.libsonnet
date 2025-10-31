{
  local block = self,
  new(terraformName, budgetType, timeUnit):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_budgets_budget",
          type:: "resource",
          attributes:: ["account_id", "arn", "billing_view_arn", "budget_type", "id", "limit_amount", "limit_unit", "name", "name_prefix", "tags", "tags_all", "time_period_end", "time_period_start", "time_unit"],
        },
      },
    }
    + block.withBudgetType(budgetType)
    + block.withTimeUnit(timeUnit)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withBillingViewArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"billing_view_arn" expected to be of type "string"';
    {
      billing_view_arn: converted,
    }
  ),
  withBudgetType(value):: (
    local converted = value;
    assert std.isString(converted) : '"budget_type" expected to be of type "string"';
    {
      budget_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLimitAmount(value):: (
    local converted = value;
    assert std.isString(converted) : '"limit_amount" expected to be of type "string"';
    {
      limit_amount: converted,
    }
  ),
  withLimitUnit(value):: (
    local converted = value;
    assert std.isString(converted) : '"limit_unit" expected to be of type "string"';
    {
      limit_unit: converted,
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
  withTimePeriodEnd(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_period_end" expected to be of type "string"';
    {
      time_period_end: converted,
    }
  ),
  withTimePeriodStart(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_period_start" expected to be of type "string"';
    {
      time_period_start: converted,
    }
  ),
  withTimeUnit(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_unit" expected to be of type "string"';
    {
      time_unit: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  auto_adjust_data:: {
    local block = self,
    new(autoAdjustType):: (
      {}
      + block.withAutoAdjustType(autoAdjustType)
    ),
    withAutoAdjustType(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_adjust_type" expected to be of type "string"';
      {
        auto_adjust_type: converted,
      }
    ),
    historical_options:: {
      local block = self,
      new(budgetAdjustmentPeriod):: (
        {}
        + block.withBudgetAdjustmentPeriod(budgetAdjustmentPeriod)
      ),
      withBudgetAdjustmentPeriod(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"budget_adjustment_period" expected to be of type "number"';
        {
          budget_adjustment_period: converted,
        }
      ),
    },
    withHistoricalOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        historical_options: value,
      }
    ),
    withHistoricalOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        historical_options+: converted,
      }
    ),
  },
  cost_filter:: {
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
  cost_types:: {
    local block = self,
    new():: (
      {}
    ),
    withIncludeCredit(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_credit" expected to be of type "bool"';
      {
        include_credit: converted,
      }
    ),
    withIncludeDiscount(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_discount" expected to be of type "bool"';
      {
        include_discount: converted,
      }
    ),
    withIncludeOtherSubscription(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_other_subscription" expected to be of type "bool"';
      {
        include_other_subscription: converted,
      }
    ),
    withIncludeRecurring(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_recurring" expected to be of type "bool"';
      {
        include_recurring: converted,
      }
    ),
    withIncludeRefund(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_refund" expected to be of type "bool"';
      {
        include_refund: converted,
      }
    ),
    withIncludeSubscription(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_subscription" expected to be of type "bool"';
      {
        include_subscription: converted,
      }
    ),
    withIncludeSupport(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_support" expected to be of type "bool"';
      {
        include_support: converted,
      }
    ),
    withIncludeTax(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_tax" expected to be of type "bool"';
      {
        include_tax: converted,
      }
    ),
    withIncludeUpfront(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_upfront" expected to be of type "bool"';
      {
        include_upfront: converted,
      }
    ),
    withUseAmortized(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_amortized" expected to be of type "bool"';
      {
        use_amortized: converted,
      }
    ),
    withUseBlended(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_blended" expected to be of type "bool"';
      {
        use_blended: converted,
      }
    ),
  },
  notification:: {
    local block = self,
    new(comparisonOperator, notificationType, threshold, thresholdType):: (
      {}
      + block.withComparisonOperator(comparisonOperator)
      + block.withNotificationType(notificationType)
      + block.withThreshold(threshold)
      + block.withThresholdType(thresholdType)
    ),
    withComparisonOperator(value):: (
      local converted = value;
      assert std.isString(converted) : '"comparison_operator" expected to be of type "string"';
      {
        comparison_operator: converted,
      }
    ),
    withNotificationType(value):: (
      local converted = value;
      assert std.isString(converted) : '"notification_type" expected to be of type "string"';
      {
        notification_type: converted,
      }
    ),
    withSubscriberEmailAddresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subscriber_email_addresses" expected to be of type "set"';
      {
        subscriber_email_addresses: converted,
      }
    ),
    withSubscriberEmailAddressesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subscriber_email_addresses" expected to be of type "set"';
      {
        subscriber_email_addresses+: converted,
      }
    ),
    withSubscriberSnsTopicArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subscriber_sns_topic_arns" expected to be of type "set"';
      {
        subscriber_sns_topic_arns: converted,
      }
    ),
    withSubscriberSnsTopicArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subscriber_sns_topic_arns" expected to be of type "set"';
      {
        subscriber_sns_topic_arns+: converted,
      }
    ),
    withThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
      {
        threshold: converted,
      }
    ),
    withThresholdType(value):: (
      local converted = value;
      assert std.isString(converted) : '"threshold_type" expected to be of type "string"';
      {
        threshold_type: converted,
      }
    ),
  },
  planned_limit:: {
    local block = self,
    new(amount, startTime, unit):: (
      {}
      + block.withAmount(amount)
      + block.withStartTime(startTime)
      + block.withUnit(unit)
    ),
    withAmount(value):: (
      local converted = value;
      assert std.isString(converted) : '"amount" expected to be of type "string"';
      {
        amount: converted,
      }
    ),
    withStartTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"start_time" expected to be of type "string"';
      {
        start_time: converted,
      }
    ),
    withUnit(value):: (
      local converted = value;
      assert std.isString(converted) : '"unit" expected to be of type "string"';
      {
        unit: converted,
      }
    ),
  },
  withAutoAdjustData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_adjust_data: value,
    }
  ),
  withCostFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cost_filter: value,
    }
  ),
  withCostTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cost_types: value,
    }
  ),
  withNotification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification: value,
    }
  ),
  withPlannedLimit(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      planned_limit: value,
    }
  ),
  withAutoAdjustDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_adjust_data+: converted,
    }
  ),
  withCostFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cost_filter+: converted,
    }
  ),
  withCostTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cost_types+: converted,
    }
  ),
  withNotificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification+: converted,
    }
  ),
  withPlannedLimitMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      planned_limit+: converted,
    }
  ),
}
