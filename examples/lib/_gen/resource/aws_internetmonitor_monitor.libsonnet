{
  local block = self,
  new(terraformName, monitorName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_internetmonitor_monitor",
          type:: "resource",
          attributes:: ["arn", "id", "max_city_networks_to_monitor", "monitor_name", "region", "resources", "status", "tags", "tags_all", "traffic_percentage_to_monitor"],
        },
      },
    }
    + block.withMonitorName(monitorName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxCityNetworksToMonitor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_city_networks_to_monitor" expected to be of type "number"';
    {
      max_city_networks_to_monitor: converted,
    }
  ),
  withMonitorName(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_name" expected to be of type "string"';
    {
      monitor_name: converted,
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
  withResources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources: converted,
    }
  ),
  withResourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources+: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  withTrafficPercentageToMonitor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"traffic_percentage_to_monitor" expected to be of type "number"';
    {
      traffic_percentage_to_monitor: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  health_events_config:: {
    local block = self,
    new():: (
      {}
    ),
    withAvailabilityScoreThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"availability_score_threshold" expected to be of type "number"';
      {
        availability_score_threshold: converted,
      }
    ),
    withPerformanceScoreThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"performance_score_threshold" expected to be of type "number"';
      {
        performance_score_threshold: converted,
      }
    ),
  },
  internet_measurements_log_delivery:: {
    local block = self,
    new():: (
      {}
    ),
    s3_config:: {
      local block = self,
      new(bucketName):: (
        {}
        + block.withBucketName(bucketName)
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      withBucketPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
        {
          bucket_prefix: converted,
        }
      ),
      withLogDeliveryStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_delivery_status" expected to be of type "string"';
        {
          log_delivery_status: converted,
        }
      ),
    },
    withS3Config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config: value,
      }
    ),
    withS3ConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config+: converted,
      }
    ),
  },
  withHealthEventsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_events_config: value,
    }
  ),
  withInternetMeasurementsLogDelivery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      internet_measurements_log_delivery: value,
    }
  ),
  withHealthEventsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_events_config+: converted,
    }
  ),
  withInternetMeasurementsLogDeliveryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      internet_measurements_log_delivery+: converted,
    }
  ),
}
