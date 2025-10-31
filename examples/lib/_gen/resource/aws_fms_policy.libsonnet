{
  local block = self,
  new(terraformName, excludeResourceTags, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fms_policy",
          type:: "resource",
          attributes:: ["arn", "delete_all_policy_resources", "delete_unused_fm_managed_resources", "description", "exclude_resource_tags", "id", "name", "policy_update_token", "region", "remediation_enabled", "resource_set_ids", "resource_tag_logical_operator", "resource_tags", "resource_type", "resource_type_list", "tags", "tags_all"],
        },
      },
    }
    + block.withExcludeResourceTags(excludeResourceTags)
    + block.withName(name)
  ),
  withDeleteAllPolicyResources(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_all_policy_resources" expected to be of type "bool"';
    {
      delete_all_policy_resources: converted,
    }
  ),
  withDeleteUnusedFmManagedResources(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_unused_fm_managed_resources" expected to be of type "bool"';
    {
      delete_unused_fm_managed_resources: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withExcludeResourceTags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_resource_tags" expected to be of type "bool"';
    {
      exclude_resource_tags: converted,
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
  withRemediationEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"remediation_enabled" expected to be of type "bool"';
    {
      remediation_enabled: converted,
    }
  ),
  withResourceSetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_set_ids" expected to be of type "set"';
    {
      resource_set_ids: converted,
    }
  ),
  withResourceSetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_set_ids" expected to be of type "set"';
    {
      resource_set_ids+: converted,
    }
  ),
  withResourceTagLogicalOperator(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_tag_logical_operator" expected to be of type "string"';
    {
      resource_tag_logical_operator: converted,
    }
  ),
  withResourceTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_tags" expected to be of type "map"';
    {
      resource_tags: converted,
    }
  ),
  withResourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  withResourceTypeList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_type_list" expected to be of type "set"';
    {
      resource_type_list: converted,
    }
  ),
  withResourceTypeListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_type_list" expected to be of type "set"';
    {
      resource_type_list+: converted,
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
  exclude_map:: {
    local block = self,
    new():: (
      {}
    ),
    withAccount(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account" expected to be of type "set"';
      {
        account: converted,
      }
    ),
    withAccountMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account" expected to be of type "set"';
      {
        account+: converted,
      }
    ),
    withOrgunit(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"orgunit" expected to be of type "set"';
      {
        orgunit: converted,
      }
    ),
    withOrgunitMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"orgunit" expected to be of type "set"';
      {
        orgunit+: converted,
      }
    ),
  },
  include_map:: {
    local block = self,
    new():: (
      {}
    ),
    withAccount(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account" expected to be of type "set"';
      {
        account: converted,
      }
    ),
    withAccountMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account" expected to be of type "set"';
      {
        account+: converted,
      }
    ),
    withOrgunit(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"orgunit" expected to be of type "set"';
      {
        orgunit: converted,
      }
    ),
    withOrgunitMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"orgunit" expected to be of type "set"';
      {
        orgunit+: converted,
      }
    ),
  },
  security_service_policy_data:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withManagedServiceData(value):: (
      local converted = value;
      assert std.isString(converted) : '"managed_service_data" expected to be of type "string"';
      {
        managed_service_data: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    policy_option:: {
      local block = self,
      new():: (
        {}
      ),
      network_acl_common_policy:: {
        local block = self,
        new():: (
          {}
        ),
        network_acl_entry_set:: {
          local block = self,
          new(forceRemediateForFirstEntries, forceRemediateForLastEntries):: (
            {}
            + block.withForceRemediateForFirstEntries(forceRemediateForFirstEntries)
            + block.withForceRemediateForLastEntries(forceRemediateForLastEntries)
          ),
          withForceRemediateForFirstEntries(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"force_remediate_for_first_entries" expected to be of type "bool"';
            {
              force_remediate_for_first_entries: converted,
            }
          ),
          withForceRemediateForLastEntries(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"force_remediate_for_last_entries" expected to be of type "bool"';
            {
              force_remediate_for_last_entries: converted,
            }
          ),
          first_entry:: {
            local block = self,
            new(egress, protocol, ruleAction):: (
              {}
              + block.withEgress(egress)
              + block.withProtocol(protocol)
              + block.withRuleAction(ruleAction)
            ),
            withCidrBlock(value):: (
              local converted = value;
              assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
              {
                cidr_block: converted,
              }
            ),
            withEgress(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"egress" expected to be of type "bool"';
              {
                egress: converted,
              }
            ),
            withIpv6CidrBlock(value):: (
              local converted = value;
              assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
              {
                ipv6_cidr_block: converted,
              }
            ),
            withProtocol(value):: (
              local converted = value;
              assert std.isString(converted) : '"protocol" expected to be of type "string"';
              {
                protocol: converted,
              }
            ),
            withRuleAction(value):: (
              local converted = value;
              assert std.isString(converted) : '"rule_action" expected to be of type "string"';
              {
                rule_action: converted,
              }
            ),
            icmp_type_code:: {
              local block = self,
              new():: (
                {}
              ),
              withCode(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"code" expected to be of type "number"';
                {
                  code: converted,
                }
              ),
              withType(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"type" expected to be of type "number"';
                {
                  type: converted,
                }
              ),
            },
            port_range:: {
              local block = self,
              new():: (
                {}
              ),
              withFrom(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"from" expected to be of type "number"';
                {
                  from: converted,
                }
              ),
              withTo(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"to" expected to be of type "number"';
                {
                  to: converted,
                }
              ),
            },
            withIcmpTypeCode(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                icmp_type_code: value,
              }
            ),
            withPortRange(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                port_range: value,
              }
            ),
            withIcmpTypeCodeMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                icmp_type_code+: converted,
              }
            ),
            withPortRangeMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                port_range+: converted,
              }
            ),
          },
          last_entry:: {
            local block = self,
            new(egress, protocol, ruleAction):: (
              {}
              + block.withEgress(egress)
              + block.withProtocol(protocol)
              + block.withRuleAction(ruleAction)
            ),
            withCidrBlock(value):: (
              local converted = value;
              assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
              {
                cidr_block: converted,
              }
            ),
            withEgress(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"egress" expected to be of type "bool"';
              {
                egress: converted,
              }
            ),
            withIpv6CidrBlock(value):: (
              local converted = value;
              assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
              {
                ipv6_cidr_block: converted,
              }
            ),
            withProtocol(value):: (
              local converted = value;
              assert std.isString(converted) : '"protocol" expected to be of type "string"';
              {
                protocol: converted,
              }
            ),
            withRuleAction(value):: (
              local converted = value;
              assert std.isString(converted) : '"rule_action" expected to be of type "string"';
              {
                rule_action: converted,
              }
            ),
            icmp_type_code:: {
              local block = self,
              new():: (
                {}
              ),
              withCode(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"code" expected to be of type "number"';
                {
                  code: converted,
                }
              ),
              withType(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"type" expected to be of type "number"';
                {
                  type: converted,
                }
              ),
            },
            port_range:: {
              local block = self,
              new():: (
                {}
              ),
              withFrom(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"from" expected to be of type "number"';
                {
                  from: converted,
                }
              ),
              withTo(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"to" expected to be of type "number"';
                {
                  to: converted,
                }
              ),
            },
            withIcmpTypeCode(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                icmp_type_code: value,
              }
            ),
            withPortRange(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                port_range: value,
              }
            ),
            withIcmpTypeCodeMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                icmp_type_code+: converted,
              }
            ),
            withPortRangeMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                port_range+: converted,
              }
            ),
          },
          withFirstEntry(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              first_entry: value,
            }
          ),
          withLastEntry(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              last_entry: value,
            }
          ),
          withFirstEntryMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              first_entry+: converted,
            }
          ),
          withLastEntryMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              last_entry+: converted,
            }
          ),
        },
        withNetworkAclEntrySet(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            network_acl_entry_set: value,
          }
        ),
        withNetworkAclEntrySetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            network_acl_entry_set+: converted,
          }
        ),
      },
      network_firewall_policy:: {
        local block = self,
        new():: (
          {}
        ),
        withFirewallDeploymentModel(value):: (
          local converted = value;
          assert std.isString(converted) : '"firewall_deployment_model" expected to be of type "string"';
          {
            firewall_deployment_model: converted,
          }
        ),
      },
      third_party_firewall_policy:: {
        local block = self,
        new():: (
          {}
        ),
        withFirewallDeploymentModel(value):: (
          local converted = value;
          assert std.isString(converted) : '"firewall_deployment_model" expected to be of type "string"';
          {
            firewall_deployment_model: converted,
          }
        ),
      },
      withNetworkAclCommonPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_acl_common_policy: value,
        }
      ),
      withNetworkFirewallPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_firewall_policy: value,
        }
      ),
      withThirdPartyFirewallPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          third_party_firewall_policy: value,
        }
      ),
      withNetworkAclCommonPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_acl_common_policy+: converted,
        }
      ),
      withNetworkFirewallPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_firewall_policy+: converted,
        }
      ),
      withThirdPartyFirewallPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          third_party_firewall_policy+: converted,
        }
      ),
    },
    withPolicyOption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        policy_option: value,
      }
    ),
    withPolicyOptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        policy_option+: converted,
      }
    ),
  },
  withExcludeMap(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_map: value,
    }
  ),
  withIncludeMap(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      include_map: value,
    }
  ),
  withSecurityServicePolicyData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      security_service_policy_data: value,
    }
  ),
  withExcludeMapMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_map+: converted,
    }
  ),
  withIncludeMapMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      include_map+: converted,
    }
  ),
  withSecurityServicePolicyDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      security_service_policy_data+: converted,
    }
  ),
}
