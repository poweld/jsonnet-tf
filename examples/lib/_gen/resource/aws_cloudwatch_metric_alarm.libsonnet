{
  local block = self,
  new(terraformName, alarmName, comparisonOperator, evaluationPeriods):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_metric_alarm",
          type:: "resource",
          attributes:: ["actions_enabled", "alarm_actions", "alarm_description", "alarm_name", "arn", "comparison_operator", "datapoints_to_alarm", "dimensions", "evaluate_low_sample_count_percentiles", "evaluation_periods", "extended_statistic", "id", "insufficient_data_actions", "metric_name", "namespace", "ok_actions", "period", "region", "statistic", "tags", "tags_all", "threshold", "threshold_metric_id", "treat_missing_data", "unit"],
        },
      },
    }
    + block.withAlarmName(alarmName)
    + block.withComparisonOperator(comparisonOperator)
    + block.withEvaluationPeriods(evaluationPeriods)
  ),
  withActionsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"actions_enabled" expected to be of type "bool"';
    {
      actions_enabled: converted,
    }
  ),
  withAlarmActions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_actions" expected to be of type "set"';
    {
      alarm_actions: converted,
    }
  ),
  withAlarmActionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_actions" expected to be of type "set"';
    {
      alarm_actions+: converted,
    }
  ),
  withAlarmDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"alarm_description" expected to be of type "string"';
    {
      alarm_description: converted,
    }
  ),
  withAlarmName(value):: (
    local converted = value;
    assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
    {
      alarm_name: converted,
    }
  ),
  withComparisonOperator(value):: (
    local converted = value;
    assert std.isString(converted) : '"comparison_operator" expected to be of type "string"';
    {
      comparison_operator: converted,
    }
  ),
  withDatapointsToAlarm(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"datapoints_to_alarm" expected to be of type "number"';
    {
      datapoints_to_alarm: converted,
    }
  ),
  withDimensions(value):: (
    local converted = value;
    assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
    {
      dimensions: converted,
    }
  ),
  withEvaluateLowSampleCountPercentiles(value):: (
    local converted = value;
    assert std.isString(converted) : '"evaluate_low_sample_count_percentiles" expected to be of type "string"';
    {
      evaluate_low_sample_count_percentiles: converted,
    }
  ),
  withEvaluationPeriods(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"evaluation_periods" expected to be of type "number"';
    {
      evaluation_periods: converted,
    }
  ),
  withExtendedStatistic(value):: (
    local converted = value;
    assert std.isString(converted) : '"extended_statistic" expected to be of type "string"';
    {
      extended_statistic: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInsufficientDataActions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"insufficient_data_actions" expected to be of type "set"';
    {
      insufficient_data_actions: converted,
    }
  ),
  withInsufficientDataActionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"insufficient_data_actions" expected to be of type "set"';
    {
      insufficient_data_actions+: converted,
    }
  ),
  withMetricName(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric_name" expected to be of type "string"';
    {
      metric_name: converted,
    }
  ),
  withNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
    }
  ),
  withOkActions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ok_actions" expected to be of type "set"';
    {
      ok_actions: converted,
    }
  ),
  withOkActionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ok_actions" expected to be of type "set"';
    {
      ok_actions+: converted,
    }
  ),
  withPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"period" expected to be of type "number"';
    {
      period: converted,
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
  withStatistic(value):: (
    local converted = value;
    assert std.isString(converted) : '"statistic" expected to be of type "string"';
    {
      statistic: converted,
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
  withThreshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
    {
      threshold: converted,
    }
  ),
  withThresholdMetricId(value):: (
    local converted = value;
    assert std.isString(converted) : '"threshold_metric_id" expected to be of type "string"';
    {
      threshold_metric_id: converted,
    }
  ),
  withTreatMissingData(value):: (
    local converted = value;
    assert std.isString(converted) : '"treat_missing_data" expected to be of type "string"';
    {
      treat_missing_data: converted,
    }
  ),
  withUnit(value):: (
    local converted = value;
    assert std.isString(converted) : '"unit" expected to be of type "string"';
    {
      unit: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  metric_query:: {
    local block = self,
    new(id):: (
      {}
      + block.withId(id)
    ),
    withAccountId(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_id" expected to be of type "string"';
      {
        account_id: converted,
      }
    ),
    withExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"label" expected to be of type "string"';
      {
        label: converted,
      }
    ),
    withPeriod(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"period" expected to be of type "number"';
      {
        period: converted,
      }
    ),
    withReturnData(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
      {
        return_data: converted,
      }
    ),
    metric:: {
      local block = self,
      new(metricName, period, stat):: (
        {}
        + block.withMetricName(metricName)
        + block.withPeriod(period)
        + block.withStat(stat)
      ),
      withDimensions(value):: (
        local converted = value;
        assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
        {
          dimensions: converted,
        }
      ),
      withMetricName(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      withNamespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      withPeriod(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"period" expected to be of type "number"';
        {
          period: converted,
        }
      ),
      withStat(value):: (
        local converted = value;
        assert std.isString(converted) : '"stat" expected to be of type "string"';
        {
          stat: converted,
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
    withMetric(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric: value,
      }
    ),
    withMetricMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric+: converted,
      }
    ),
  },
  withMetricQuery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_query: value,
    }
  ),
  withMetricQueryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_query+: converted,
    }
  ),
}
