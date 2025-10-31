{
  local block = self,
  new(terraformName, firewallRuleGroupAssociationId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_resolver_firewall_rule_group_association",
          type:: "data",
          attributes:: ["arn", "creation_time", "creator_request_id", "firewall_rule_group_association_id", "firewall_rule_group_id", "id", "managed_owner_name", "modification_time", "mutation_protection", "name", "priority", "region", "status", "status_message", "vpc_id"],
        },
      },
    }
    + block.withFirewallRuleGroupAssociationId(firewallRuleGroupAssociationId)
  ),
  withFirewallRuleGroupAssociationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_rule_group_association_id" expected to be of type "string"';
    {
      firewall_rule_group_association_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
