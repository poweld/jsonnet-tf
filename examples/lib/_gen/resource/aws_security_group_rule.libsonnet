{
  local block = self,
  new(terraformName, fromPort, protocol, securityGroupId, toPort, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_security_group_rule",
          type:: "resource",
          attributes:: ["cidr_blocks", "description", "from_port", "id", "ipv6_cidr_blocks", "prefix_list_ids", "protocol", "region", "security_group_id", "security_group_rule_id", "self", "source_security_group_id", "to_port", "type"],
        },
      },
    }
    + block.withFromPort(fromPort)
    + block.withProtocol(protocol)
    + block.withSecurityGroupId(securityGroupId)
    + block.withToPort(toPort)
    + block.withType(type)
  ),
  withCidrBlocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_blocks" expected to be of type "list"';
    {
      cidr_blocks: converted,
    }
  ),
  withCidrBlocksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_blocks" expected to be of type "list"';
    {
      cidr_blocks+: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFromPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
    {
      from_port: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpv6CidrBlocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_cidr_blocks" expected to be of type "list"';
    {
      ipv6_cidr_blocks: converted,
    }
  ),
  withIpv6CidrBlocksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_cidr_blocks" expected to be of type "list"';
    {
      ipv6_cidr_blocks+: converted,
    }
  ),
  withPrefixListIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"prefix_list_ids" expected to be of type "list"';
    {
      prefix_list_ids: converted,
    }
  ),
  withPrefixListIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"prefix_list_ids" expected to be of type "list"';
    {
      prefix_list_ids+: converted,
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
  withSecurityGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_id" expected to be of type "string"';
    {
      security_group_id: converted,
    }
  ),
  withSelf(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"self" expected to be of type "bool"';
    {
      "self": converted,
    }
  ),
  withSourceSecurityGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_security_group_id" expected to be of type "string"';
    {
      source_security_group_id: converted,
    }
  ),
  withToPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
    {
      to_port: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
