{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkfirewall_firewall_policy",
          type:: "resource",
          attributes:: ["arn", "description", "id", "name", "region", "tags", "tags_all", "update_token"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  encryption_configuration:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_id" expected to be of type "string"';
      {
        key_id: converted,
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
  firewall_policy:: {
    local block = self,
    new(statelessDefaultActions, statelessFragmentDefaultActions):: (
      {}
      + block.withStatelessDefaultActions(statelessDefaultActions)
      + block.withStatelessFragmentDefaultActions(statelessFragmentDefaultActions)
    ),
    withStatefulDefaultActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateful_default_actions" expected to be of type "set"';
      {
        stateful_default_actions: converted,
      }
    ),
    withStatefulDefaultActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateful_default_actions" expected to be of type "set"';
      {
        stateful_default_actions+: converted,
      }
    ),
    withStatelessDefaultActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateless_default_actions" expected to be of type "set"';
      {
        stateless_default_actions: converted,
      }
    ),
    withStatelessDefaultActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateless_default_actions" expected to be of type "set"';
      {
        stateless_default_actions+: converted,
      }
    ),
    withStatelessFragmentDefaultActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateless_fragment_default_actions" expected to be of type "set"';
      {
        stateless_fragment_default_actions: converted,
      }
    ),
    withStatelessFragmentDefaultActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateless_fragment_default_actions" expected to be of type "set"';
      {
        stateless_fragment_default_actions+: converted,
      }
    ),
    withTlsInspectionConfigurationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_inspection_configuration_arn" expected to be of type "string"';
      {
        tls_inspection_configuration_arn: converted,
      }
    ),
    policy_variables:: {
      local block = self,
      new():: (
        {}
      ),
      rule_variables:: {
        local block = self,
        new(key):: (
          {}
          + block.withKey(key)
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        ip_set:: {
          local block = self,
          new(definition):: (
            {}
            + block.withDefinition(definition)
          ),
          withDefinition(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"definition" expected to be of type "set"';
            {
              definition: converted,
            }
          ),
          withDefinitionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"definition" expected to be of type "set"';
            {
              definition+: converted,
            }
          ),
        },
        withIpSet(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ip_set: value,
          }
        ),
        withIpSetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ip_set+: converted,
          }
        ),
      },
      withRuleVariables(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rule_variables: value,
        }
      ),
      withRuleVariablesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rule_variables+: converted,
        }
      ),
    },
    stateful_engine_options:: {
      local block = self,
      new():: (
        {}
      ),
      withRuleOrder(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_order" expected to be of type "string"';
        {
          rule_order: converted,
        }
      ),
      withStreamExceptionPolicy(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_exception_policy" expected to be of type "string"';
        {
          stream_exception_policy: converted,
        }
      ),
      flow_timeouts:: {
        local block = self,
        new():: (
          {}
        ),
        withTcpIdleTimeoutSeconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"tcp_idle_timeout_seconds" expected to be of type "number"';
          {
            tcp_idle_timeout_seconds: converted,
          }
        ),
      },
      withFlowTimeouts(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          flow_timeouts: value,
        }
      ),
      withFlowTimeoutsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          flow_timeouts+: converted,
        }
      ),
    },
    stateful_rule_group_reference:: {
      local block = self,
      new(resourceArn):: (
        {}
        + block.withResourceArn(resourceArn)
      ),
      withDeepThreatInspection(value):: (
        local converted = value;
        assert std.isString(converted) : '"deep_threat_inspection" expected to be of type "string"';
        {
          deep_threat_inspection: converted,
        }
      ),
      withPriority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
        }
      ),
      override:: {
        local block = self,
        new():: (
          {}
        ),
        withAction(value):: (
          local converted = value;
          assert std.isString(converted) : '"action" expected to be of type "string"';
          {
            action: converted,
          }
        ),
      },
      withOverride(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          override: value,
        }
      ),
      withOverrideMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          override+: converted,
        }
      ),
    },
    stateless_custom_action:: {
      local block = self,
      new(actionName):: (
        {}
        + block.withActionName(actionName)
      ),
      withActionName(value):: (
        local converted = value;
        assert std.isString(converted) : '"action_name" expected to be of type "string"';
        {
          action_name: converted,
        }
      ),
      action_definition:: {
        local block = self,
        new():: (
          {}
        ),
        publish_metric_action:: {
          local block = self,
          new():: (
            {}
          ),
          dimension:: {
            local block = self,
            new(value):: (
              {}
              + block.withValue(value)
            ),
            withValue(value):: (
              local converted = value;
              assert std.isString(converted) : '"value" expected to be of type "string"';
              {
                value: converted,
              }
            ),
          },
          withDimension(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dimension: value,
            }
          ),
          withDimensionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              dimension+: converted,
            }
          ),
        },
        withPublishMetricAction(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            publish_metric_action: value,
          }
        ),
        withPublishMetricActionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            publish_metric_action+: converted,
          }
        ),
      },
      withActionDefinition(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action_definition: value,
        }
      ),
      withActionDefinitionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action_definition+: converted,
        }
      ),
    },
    stateless_rule_group_reference:: {
      local block = self,
      new(priority, resourceArn):: (
        {}
        + block.withPriority(priority)
        + block.withResourceArn(resourceArn)
      ),
      withPriority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
        }
      ),
    },
    withPolicyVariables(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        policy_variables: value,
      }
    ),
    withStatefulEngineOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_engine_options: value,
      }
    ),
    withStatefulRuleGroupReference(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_rule_group_reference: value,
      }
    ),
    withStatelessCustomAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateless_custom_action: value,
      }
    ),
    withStatelessRuleGroupReference(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateless_rule_group_reference: value,
      }
    ),
    withPolicyVariablesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        policy_variables+: converted,
      }
    ),
    withStatefulEngineOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_engine_options+: converted,
      }
    ),
    withStatefulRuleGroupReferenceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_rule_group_reference+: converted,
      }
    ),
    withStatelessCustomActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateless_custom_action+: converted,
      }
    ),
    withStatelessRuleGroupReferenceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateless_rule_group_reference+: converted,
      }
    ),
  },
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withFirewallPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      firewall_policy: value,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  withFirewallPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      firewall_policy+: converted,
    }
  ),
}
