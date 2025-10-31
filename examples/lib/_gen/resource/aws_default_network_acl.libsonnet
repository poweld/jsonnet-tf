{
  local block = self,
  new(terraformName, defaultNetworkAclId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_default_network_acl",
          type:: "resource",
          attributes:: ["arn", "default_network_acl_id", "id", "owner_id", "region", "subnet_ids", "tags", "tags_all", "vpc_id"],
        },
      },
    }
    + block.withDefaultNetworkAclId(defaultNetworkAclId)
  ),
  withDefaultNetworkAclId(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_network_acl_id" expected to be of type "string"';
    {
      default_network_acl_id: converted,
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
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  egress:: {
    local block = self,
    new(action, fromPort, protocol, ruleNo, toPort):: (
      {}
      + block.withAction(action)
      + block.withFromPort(fromPort)
      + block.withProtocol(protocol)
      + block.withRuleNo(ruleNo)
      + block.withToPort(toPort)
    ),
    withAction(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    withCidrBlock(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
      {
        cidr_block: converted,
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
    withRuleNo(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rule_no" expected to be of type "number"';
      {
        rule_no: converted,
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
  ingress:: {
    local block = self,
    new(action, fromPort, protocol, ruleNo, toPort):: (
      {}
      + block.withAction(action)
      + block.withFromPort(fromPort)
      + block.withProtocol(protocol)
      + block.withRuleNo(ruleNo)
      + block.withToPort(toPort)
    ),
    withAction(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    withCidrBlock(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
      {
        cidr_block: converted,
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
    withRuleNo(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rule_no" expected to be of type "number"';
      {
        rule_no: converted,
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
  withEgress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      egress: value,
    }
  ),
  withIngress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ingress: value,
    }
  ),
  withEgressMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      egress+: converted,
    }
  ),
  withIngressMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ingress+: converted,
    }
  ),
}
