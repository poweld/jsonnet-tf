{
  local block = self,
  new(terraformName, firewallRuleGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_resolver_firewall_rules",
          type:: "data",
          attributes:: ["action", "firewall_rule_group_id", "firewall_rules", "id", "priority", "region"],
        },
      },
    }
    + block.withFirewallRuleGroupId(firewallRuleGroupId)
  ),
  withAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
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
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
