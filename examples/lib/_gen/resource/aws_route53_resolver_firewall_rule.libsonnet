{
  local block = self,
  new(terraformName, action, firewallDomainListId, firewallRuleGroupId, name, priority):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_resolver_firewall_rule",
          type:: "resource",
          attributes:: ["action", "block_override_dns_type", "block_override_domain", "block_override_ttl", "block_response", "firewall_domain_list_id", "firewall_domain_redirection_action", "firewall_rule_group_id", "id", "name", "priority", "q_type", "region"],
        },
      },
    }
    + block.withAction(action)
    + block.withFirewallDomainListId(firewallDomainListId)
    + block.withFirewallRuleGroupId(firewallRuleGroupId)
    + block.withName(name)
    + block.withPriority(priority)
  ),
  withAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  withBlockOverrideDnsType(value):: (
    local converted = value;
    assert std.isString(converted) : '"block_override_dns_type" expected to be of type "string"';
    {
      block_override_dns_type: converted,
    }
  ),
  withBlockOverrideDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"block_override_domain" expected to be of type "string"';
    {
      block_override_domain: converted,
    }
  ),
  withBlockOverrideTtl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"block_override_ttl" expected to be of type "number"';
    {
      block_override_ttl: converted,
    }
  ),
  withBlockResponse(value):: (
    local converted = value;
    assert std.isString(converted) : '"block_response" expected to be of type "string"';
    {
      block_response: converted,
    }
  ),
  withFirewallDomainListId(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_domain_list_id" expected to be of type "string"';
    {
      firewall_domain_list_id: converted,
    }
  ),
  withFirewallDomainRedirectionAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_domain_redirection_action" expected to be of type "string"';
    {
      firewall_domain_redirection_action: converted,
    }
  ),
  withFirewallRuleGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_rule_group_id" expected to be of type "string"';
    {
      firewall_rule_group_id: converted,
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
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  withQType(value):: (
    local converted = value;
    assert std.isString(converted) : '"q_type" expected to be of type "string"';
    {
      q_type: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
