{
  local block = self,
  new(terraformName, controlPanelArn, name, waitPeriodMs):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53recoverycontrolconfig_safety_rule",
          type:: "resource",
          attributes:: ["arn", "asserted_controls", "control_panel_arn", "gating_controls", "id", "name", "status", "target_controls", "wait_period_ms"],
        },
      },
    }
    + block.withControlPanelArn(controlPanelArn)
    + block.withName(name)
    + block.withWaitPeriodMs(waitPeriodMs)
  ),
  withAssertedControls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"asserted_controls" expected to be of type "list"';
    {
      asserted_controls: converted,
    }
  ),
  withAssertedControlsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"asserted_controls" expected to be of type "list"';
    {
      asserted_controls+: converted,
    }
  ),
  withControlPanelArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_panel_arn" expected to be of type "string"';
    {
      control_panel_arn: converted,
    }
  ),
  withGatingControls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"gating_controls" expected to be of type "list"';
    {
      gating_controls: converted,
    }
  ),
  withGatingControlsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"gating_controls" expected to be of type "list"';
    {
      gating_controls+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTargetControls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"target_controls" expected to be of type "list"';
    {
      target_controls: converted,
    }
  ),
  withTargetControlsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"target_controls" expected to be of type "list"';
    {
      target_controls+: converted,
    }
  ),
  withWaitPeriodMs(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"wait_period_ms" expected to be of type "number"';
    {
      wait_period_ms: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  rule_config:: {
    local block = self,
    new(inverted, threshold, type):: (
      {}
      + block.withInverted(inverted)
      + block.withThreshold(threshold)
      + block.withType(type)
    ),
    withInverted(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"inverted" expected to be of type "bool"';
      {
        inverted: converted,
      }
    ),
    withThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
      {
        threshold: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  withRuleConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_config: value,
    }
  ),
  withRuleConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_config+: converted,
    }
  ),
}
