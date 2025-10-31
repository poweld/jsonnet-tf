{
  local block = self,
  new(terraformName, ipProtocol, securityGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_security_group_ingress_rule",
          type:: "resource",
          attributes:: ["arn", "cidr_ipv4", "cidr_ipv6", "description", "from_port", "id", "ip_protocol", "prefix_list_id", "referenced_security_group_id", "region", "security_group_id", "security_group_rule_id", "tags", "tags_all", "to_port"],
        },
      },
    }
    + block.withIpProtocol(ipProtocol)
    + block.withSecurityGroupId(securityGroupId)
  ),
  withCidrIpv4(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_ipv4" expected to be of type "string"';
    {
      cidr_ipv4: converted,
    }
  ),
  withCidrIpv6(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_ipv6" expected to be of type "string"';
    {
      cidr_ipv6: converted,
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
  withIpProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_protocol" expected to be of type "string"';
    {
      ip_protocol: converted,
    }
  ),
  withPrefixListId(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix_list_id" expected to be of type "string"';
    {
      prefix_list_id: converted,
    }
  ),
  withReferencedSecurityGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"referenced_security_group_id" expected to be of type "string"';
    {
      referenced_security_group_id: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
