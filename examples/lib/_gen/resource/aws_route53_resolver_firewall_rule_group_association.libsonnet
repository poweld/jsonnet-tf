{
  local block = self,
  new(terraformName, firewallRuleGroupId, name, priority, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_resolver_firewall_rule_group_association",
          type:: "resource",
          attributes:: ["arn", "firewall_rule_group_id", "id", "mutation_protection", "name", "priority", "region", "tags", "tags_all", "vpc_id"],
        },
      },
    }
    + block.withFirewallRuleGroupId(firewallRuleGroupId)
    + block.withName(name)
    + block.withPriority(priority)
    + block.withVpcId(vpcId)
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
  withMutationProtection(value):: (
    local converted = value;
    assert std.isString(converted) : '"mutation_protection" expected to be of type "string"';
    {
      mutation_protection: converted,
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
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
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
