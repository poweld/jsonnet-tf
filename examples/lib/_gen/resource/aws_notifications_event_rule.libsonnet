{
  local block = self,
  new(terraformName, eventType, notificationConfigurationArn, regions, source):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_notifications_event_rule",
          type:: "resource",
          attributes:: ["arn", "event_pattern", "event_type", "notification_configuration_arn", "regions", "source"],
        },
      },
    }
    + block.withEventType(eventType)
    + block.withNotificationConfigurationArn(notificationConfigurationArn)
    + block.withRegions(regions)
    + block.withSource(source)
  ),
  withEventPattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_pattern" expected to be of type "string"';
    {
      event_pattern: converted,
    }
  ),
  withEventType(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_type" expected to be of type "string"';
    {
      event_type: converted,
    }
  ),
  withNotificationConfigurationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_configuration_arn" expected to be of type "string"';
    {
      notification_configuration_arn: converted,
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
  withSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
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
