{
  local block = self,
  new(terraformName, capacity, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkfirewall_rule_group",
          type:: "resource",
          attributes:: ["arn", "capacity", "description", "id", "name", "region", "rules", "tags", "tags_all", "type", "update_token"],
        },
      },
    }
    + block.withCapacity(capacity)
    + block.withName(name)
    + block.withType(type)
  ),
  withCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"capacity" expected to be of type "number"';
    {
      capacity: converted,
    }
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
  withRules(value):: (
    local converted = value;
    assert std.isString(converted) : '"rules" expected to be of type "string"';
    {
      rules: converted,
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
  rule_group:: {
    local block = self,
    new():: (
      {}
    ),
    reference_sets:: {
      local block = self,
      new():: (
        {}
      ),
      ip_set_references:: {
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
        ip_set_reference:: {
          local block = self,
          new(referenceArn):: (
            {}
            + block.withReferenceArn(referenceArn)
          ),
          withReferenceArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"reference_arn" expected to be of type "string"';
            {
              reference_arn: converted,
            }
          ),
        },
        withIpSetReference(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ip_set_reference: value,
          }
        ),
        withIpSetReferenceMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ip_set_reference+: converted,
          }
        ),
      },
      withIpSetReferences(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ip_set_references: value,
        }
      ),
      withIpSetReferencesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ip_set_references+: converted,
        }
      ),
    },
    rule_variables:: {
      local block = self,
      new():: (
        {}
      ),
      ip_sets:: {
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
      port_sets:: {
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
        port_set:: {
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
        withPortSet(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            port_set: value,
          }
        ),
        withPortSetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            port_set+: converted,
          }
        ),
      },
      withIpSets(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ip_sets: value,
        }
      ),
      withPortSets(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_sets: value,
        }
      ),
      withIpSetsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ip_sets+: converted,
        }
      ),
      withPortSetsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_sets+: converted,
        }
      ),
    },
    rules_source:: {
      local block = self,
      new():: (
        {}
      ),
      withRulesString(value):: (
        local converted = value;
        assert std.isString(converted) : '"rules_string" expected to be of type "string"';
        {
          rules_string: converted,
        }
      ),
      rules_source_list:: {
        local block = self,
        new(generatedRulesType, targetTypes, targets):: (
          {}
          + block.withGeneratedRulesType(generatedRulesType)
          + block.withTargetTypes(targetTypes)
          + block.withTargets(targets)
        ),
        withGeneratedRulesType(value):: (
          local converted = value;
          assert std.isString(converted) : '"generated_rules_type" expected to be of type "string"';
          {
            generated_rules_type: converted,
          }
        ),
        withTargetTypes(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_types" expected to be of type "set"';
          {
            target_types: converted,
          }
        ),
        withTargetTypesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_types" expected to be of type "set"';
          {
            target_types+: converted,
          }
        ),
        withTargets(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"targets" expected to be of type "set"';
          {
            targets: converted,
          }
        ),
        withTargetsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"targets" expected to be of type "set"';
          {
            targets+: converted,
          }
        ),
      },
      stateful_rule:: {
        local block = self,
        new(action):: (
          {}
          + block.withAction(action)
        ),
        withAction(value):: (
          local converted = value;
          assert std.isString(converted) : '"action" expected to be of type "string"';
          {
            action: converted,
          }
        ),
        header:: {
          local block = self,
          new(destination, destinationPort, direction, protocol, source, sourcePort):: (
            {}
            + block.withDestination(destination)
            + block.withDestinationPort(destinationPort)
            + block.withDirection(direction)
            + block.withProtocol(protocol)
            + block.withSource(source)
            + block.withSourcePort(sourcePort)
          ),
          withDestination(value):: (
            local converted = value;
            assert std.isString(converted) : '"destination" expected to be of type "string"';
            {
              destination: converted,
            }
          ),
          withDestinationPort(value):: (
            local converted = value;
            assert std.isString(converted) : '"destination_port" expected to be of type "string"';
            {
              destination_port: converted,
            }
          ),
          withDirection(value):: (
            local converted = value;
            assert std.isString(converted) : '"direction" expected to be of type "string"';
            {
              direction: converted,
            }
          ),
          withProtocol(value):: (
            local converted = value;
            assert std.isString(converted) : '"protocol" expected to be of type "string"';
            {
              protocol: converted,
            }
          ),
          withSource(value):: (
            local converted = value;
            assert std.isString(converted) : '"source" expected to be of type "string"';
            {
              source: converted,
            }
          ),
          withSourcePort(value):: (
            local converted = value;
            assert std.isString(converted) : '"source_port" expected to be of type "string"';
            {
              source_port: converted,
            }
          ),
        },
        rule_option:: {
          local block = self,
          new(keyword):: (
            {}
            + block.withKeyword(keyword)
          ),
          withKeyword(value):: (
            local converted = value;
            assert std.isString(converted) : '"keyword" expected to be of type "string"';
            {
              keyword: converted,
            }
          ),
          withSettings(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"settings" expected to be of type "set"';
            {
              settings: converted,
            }
          ),
          withSettingsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"settings" expected to be of type "set"';
            {
              settings+: converted,
            }
          ),
        },
        withHeader(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header: value,
          }
        ),
        withRuleOption(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule_option: value,
          }
        ),
        withHeaderMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header+: converted,
          }
        ),
        withRuleOptionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule_option+: converted,
          }
        ),
      },
      stateless_rules_and_custom_actions:: {
        local block = self,
        new():: (
          {}
        ),
        custom_action:: {
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
        stateless_rule:: {
          local block = self,
          new(priority):: (
            {}
            + block.withPriority(priority)
          ),
          withPriority(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"priority" expected to be of type "number"';
            {
              priority: converted,
            }
          ),
          rule_definition:: {
            local block = self,
            new(actions):: (
              {}
              + block.withActions(actions)
            ),
            withActions(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
              {
                actions: converted,
              }
            ),
            withActionsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
              {
                actions+: converted,
              }
            ),
            match_attributes:: {
              local block = self,
              new():: (
                {}
              ),
              withProtocols(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
                {
                  protocols: converted,
                }
              ),
              withProtocolsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
                {
                  protocols+: converted,
                }
              ),
              destination:: {
                local block = self,
                new(addressDefinition):: (
                  {}
                  + block.withAddressDefinition(addressDefinition)
                ),
                withAddressDefinition(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"address_definition" expected to be of type "string"';
                  {
                    address_definition: converted,
                  }
                ),
              },
              destination_port:: {
                local block = self,
                new(fromPort):: (
                  {}
                  + block.withFromPort(fromPort)
                ),
                withFromPort(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
                  {
                    from_port: converted,
                  }
                ),
                withToPort(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
                  {
                    to_port: converted,
                  }
                ),
              },
              source:: {
                local block = self,
                new(addressDefinition):: (
                  {}
                  + block.withAddressDefinition(addressDefinition)
                ),
                withAddressDefinition(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"address_definition" expected to be of type "string"';
                  {
                    address_definition: converted,
                  }
                ),
              },
              source_port:: {
                local block = self,
                new(fromPort):: (
                  {}
                  + block.withFromPort(fromPort)
                ),
                withFromPort(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
                  {
                    from_port: converted,
                  }
                ),
                withToPort(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
                  {
                    to_port: converted,
                  }
                ),
              },
              tcp_flag:: {
                local block = self,
                new(flags):: (
                  {}
                  + block.withFlags(flags)
                ),
                withFlags(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"flags" expected to be of type "set"';
                  {
                    flags: converted,
                  }
                ),
                withFlagsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"flags" expected to be of type "set"';
                  {
                    flags+: converted,
                  }
                ),
                withMasks(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"masks" expected to be of type "set"';
                  {
                    masks: converted,
                  }
                ),
                withMasksMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"masks" expected to be of type "set"';
                  {
                    masks+: converted,
                  }
                ),
              },
              withDestination(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  destination: value,
                }
              ),
              withDestinationPort(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  destination_port: value,
                }
              ),
              withSource(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  source: value,
                }
              ),
              withSourcePort(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  source_port: value,
                }
              ),
              withTcpFlag(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  tcp_flag: value,
                }
              ),
              withDestinationMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  destination+: converted,
                }
              ),
              withDestinationPortMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  destination_port+: converted,
                }
              ),
              withSourceMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  source+: converted,
                }
              ),
              withSourcePortMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  source_port+: converted,
                }
              ),
              withTcpFlagMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  tcp_flag+: converted,
                }
              ),
            },
            withMatchAttributes(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                match_attributes: value,
              }
            ),
            withMatchAttributesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                match_attributes+: converted,
              }
            ),
          },
          withRuleDefinition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_definition: value,
            }
          ),
          withRuleDefinitionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_definition+: converted,
            }
          ),
        },
        withCustomAction(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            custom_action: value,
          }
        ),
        withStatelessRule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            stateless_rule: value,
          }
        ),
        withCustomActionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            custom_action+: converted,
          }
        ),
        withStatelessRuleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            stateless_rule+: converted,
          }
        ),
      },
      withRulesSourceList(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rules_source_list: value,
        }
      ),
      withStatefulRule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stateful_rule: value,
        }
      ),
      withStatelessRulesAndCustomActions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stateless_rules_and_custom_actions: value,
        }
      ),
      withRulesSourceListMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rules_source_list+: converted,
        }
      ),
      withStatefulRuleMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stateful_rule+: converted,
        }
      ),
      withStatelessRulesAndCustomActionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stateless_rules_and_custom_actions+: converted,
        }
      ),
    },
    stateful_rule_options:: {
      local block = self,
      new(ruleOrder):: (
        {}
        + block.withRuleOrder(ruleOrder)
      ),
      withRuleOrder(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_order" expected to be of type "string"';
        {
          rule_order: converted,
        }
      ),
    },
    withReferenceSets(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        reference_sets: value,
      }
    ),
    withRuleVariables(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule_variables: value,
      }
    ),
    withRulesSource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules_source: value,
      }
    ),
    withStatefulRuleOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_rule_options: value,
      }
    ),
    withReferenceSetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        reference_sets+: converted,
      }
    ),
    withRuleVariablesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule_variables+: converted,
      }
    ),
    withRulesSourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules_source+: converted,
      }
    ),
    withStatefulRuleOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_rule_options+: converted,
      }
    ),
  },
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withRuleGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_group: value,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  withRuleGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_group+: converted,
    }
  ),
}
