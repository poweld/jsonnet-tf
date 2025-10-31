{
  local block = self,
  new(terraformName, metricName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafregional_web_acl",
          type:: "resource",
          attributes:: ["arn", "id", "metric_name", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withMetricName(metricName)
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMetricName(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric_name" expected to be of type "string"';
    {
      metric_name: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  default_action:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  logging_configuration:: {
    local block = self,
    new(logDestination):: (
      {}
      + block.withLogDestination(logDestination)
    ),
    withLogDestination(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_destination" expected to be of type "string"';
      {
        log_destination: converted,
      }
    ),
    redacted_fields:: {
      local block = self,
      new():: (
        {}
      ),
      field_to_match:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withData(value):: (
          local converted = value;
          assert std.isString(converted) : '"data" expected to be of type "string"';
          {
            data: converted,
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
      withFieldToMatch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_to_match: value,
        }
      ),
      withFieldToMatchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_to_match+: converted,
        }
      ),
    },
    withRedactedFields(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redacted_fields: value,
      }
    ),
    withRedactedFieldsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redacted_fields+: converted,
      }
    ),
  },
  rule:: {
    local block = self,
    new(priority, ruleId):: (
      {}
      + block.withPriority(priority)
      + block.withRuleId(ruleId)
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    withRuleId(value):: (
      local converted = value;
      assert std.isString(converted) : '"rule_id" expected to be of type "string"';
      {
        rule_id: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    action:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    override_action:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    withOverrideAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        override_action: value,
      }
    ),
    withActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    withOverrideActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        override_action+: converted,
      }
    ),
  },
  withDefaultAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action: value,
    }
  ),
  withLoggingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration: value,
    }
  ),
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withDefaultActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action+: converted,
    }
  ),
  withLoggingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration+: converted,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
