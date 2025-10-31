{
  local block = self,
  new(terraformName, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_health_check",
          type:: "resource",
          attributes:: ["arn", "child_health_threshold", "child_healthchecks", "cloudwatch_alarm_name", "cloudwatch_alarm_region", "disabled", "enable_sni", "failure_threshold", "fqdn", "id", "insufficient_data_health_status", "invert_healthcheck", "ip_address", "measure_latency", "port", "reference_name", "regions", "request_interval", "resource_path", "routing_control_arn", "search_string", "tags", "tags_all", "triggers", "type"],
        },
      },
    }
    + block.withType(type)
  ),
  withChildHealthThreshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"child_health_threshold" expected to be of type "number"';
    {
      child_health_threshold: converted,
    }
  ),
  withChildHealthchecks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"child_healthchecks" expected to be of type "set"';
    {
      child_healthchecks: converted,
    }
  ),
  withChildHealthchecksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"child_healthchecks" expected to be of type "set"';
    {
      child_healthchecks+: converted,
    }
  ),
  withCloudwatchAlarmName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_alarm_name" expected to be of type "string"';
    {
      cloudwatch_alarm_name: converted,
    }
  ),
  withCloudwatchAlarmRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_alarm_region" expected to be of type "string"';
    {
      cloudwatch_alarm_region: converted,
    }
  ),
  withDisabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
    }
  ),
  withEnableSni(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_sni" expected to be of type "bool"';
    {
      enable_sni: converted,
    }
  ),
  withFailureThreshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"failure_threshold" expected to be of type "number"';
    {
      failure_threshold: converted,
    }
  ),
  withFqdn(value):: (
    local converted = value;
    assert std.isString(converted) : '"fqdn" expected to be of type "string"';
    {
      fqdn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInsufficientDataHealthStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"insufficient_data_health_status" expected to be of type "string"';
    {
      insufficient_data_health_status: converted,
    }
  ),
  withInvertHealthcheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"invert_healthcheck" expected to be of type "bool"';
    {
      invert_healthcheck: converted,
    }
  ),
  withIpAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address" expected to be of type "string"';
    {
      ip_address: converted,
    }
  ),
  withMeasureLatency(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"measure_latency" expected to be of type "bool"';
    {
      measure_latency: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  withReferenceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"reference_name" expected to be of type "string"';
    {
      reference_name: converted,
    }
  ),
  withRegions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions: converted,
    }
  ),
  withRegionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions+: converted,
    }
  ),
  withRequestInterval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"request_interval" expected to be of type "number"';
    {
      request_interval: converted,
    }
  ),
  withResourcePath(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_path" expected to be of type "string"';
    {
      resource_path: converted,
    }
  ),
  withRoutingControlArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_control_arn" expected to be of type "string"';
    {
      routing_control_arn: converted,
    }
  ),
  withSearchString(value):: (
    local converted = value;
    assert std.isString(converted) : '"search_string" expected to be of type "string"';
    {
      search_string: converted,
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
  withTriggers(value):: (
    local converted = value;
    assert std.isObject(converted) : '"triggers" expected to be of type "map"';
    {
      triggers: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
