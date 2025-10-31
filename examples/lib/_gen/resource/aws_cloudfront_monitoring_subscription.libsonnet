{
  local block = self,
  new(terraformName, distributionId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_monitoring_subscription",
          type:: "resource",
          attributes:: ["distribution_id", "id"],
        },
      },
    }
    + block.withDistributionId(distributionId)
  ),
  withDistributionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"distribution_id" expected to be of type "string"';
    {
      distribution_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  monitoring_subscription:: {
    local block = self,
    new():: (
      {}
    ),
    realtime_metrics_subscription_config:: {
      local block = self,
      new(realtimeMetricsSubscriptionStatus):: (
        {}
        + block.withRealtimeMetricsSubscriptionStatus(realtimeMetricsSubscriptionStatus)
      ),
      withRealtimeMetricsSubscriptionStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"realtime_metrics_subscription_status" expected to be of type "string"';
        {
          realtime_metrics_subscription_status: converted,
        }
      ),
    },
    withRealtimeMetricsSubscriptionConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        realtime_metrics_subscription_config: value,
      }
    ),
    withRealtimeMetricsSubscriptionConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        realtime_metrics_subscription_config+: converted,
      }
    ),
  },
  withMonitoringSubscription(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring_subscription: value,
    }
  ),
  withMonitoringSubscriptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring_subscription+: converted,
    }
  ),
}
