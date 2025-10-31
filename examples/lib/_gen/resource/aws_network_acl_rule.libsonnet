{
  local block = self,
  new(terraformName, networkAclId, protocol, ruleAction, ruleNumber):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_network_acl_rule",
          type:: "resource",
          attributes:: ["cidr_block", "egress", "from_port", "icmp_code", "icmp_type", "id", "ipv6_cidr_block", "network_acl_id", "protocol", "region", "rule_action", "rule_number", "to_port"],
        },
      },
    }
    + block.withNetworkAclId(networkAclId)
    + block.withProtocol(protocol)
    + block.withRuleAction(ruleAction)
    + block.withRuleNumber(ruleNumber)
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
  withFromPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
    {
      from_port: converted,
    }
  ),
  withIcmpCode(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"icmp_code" expected to be of type "number"';
    {
      icmp_code: converted,
    }
  ),
  withIcmpType(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"icmp_type" expected to be of type "number"';
    {
      icmp_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpv6CidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
    {
      ipv6_cidr_block: converted,
    }
  ),
  withNetworkAclId(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_acl_id" expected to be of type "string"';
    {
      network_acl_id: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  withRuleAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_action" expected to be of type "string"';
    {
      rule_action: converted,
    }
  ),
  withRuleNumber(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rule_number" expected to be of type "number"';
    {
      rule_number: converted,
    }
  ),
  withToPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
    {
      to_port: converted,
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
