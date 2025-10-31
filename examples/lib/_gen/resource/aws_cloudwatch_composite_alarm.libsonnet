{
  local block = self,
  new(terraformName, alarmName, alarmRule):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_composite_alarm",
          type:: "resource",
          attributes:: ["actions_enabled", "alarm_actions", "alarm_description", "alarm_name", "alarm_rule", "arn", "id", "insufficient_data_actions", "ok_actions", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAlarmName(alarmName)
    + block.withAlarmRule(alarmRule)
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
  withAlarmRule(value):: (
    local converted = value;
    assert std.isString(converted) : '"alarm_rule" expected to be of type "string"';
    {
      alarm_rule: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
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
  actions_suppressor:: {
    local block = self,
    new(alarm, extensionPeriod, waitPeriod):: (
      {}
      + block.withAlarm(alarm)
      + block.withExtensionPeriod(extensionPeriod)
      + block.withWaitPeriod(waitPeriod)
    ),
    withAlarm(value):: (
      local converted = value;
      assert std.isString(converted) : '"alarm" expected to be of type "string"';
      {
        alarm: converted,
      }
    ),
    withExtensionPeriod(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"extension_period" expected to be of type "number"';
      {
        extension_period: converted,
      }
    ),
    withWaitPeriod(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"wait_period" expected to be of type "number"';
      {
        wait_period: converted,
      }
    ),
  },
  withActionsSuppressor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions_suppressor: value,
    }
  ),
  withActionsSuppressorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions_suppressor+: converted,
    }
  ),
}
