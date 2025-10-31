{
  local block = self,
  new(terraformName, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_ipv6_cidr_block_association",
          type:: "resource",
          attributes:: ["assign_generated_ipv6_cidr_block", "id", "ip_source", "ipv6_address_attribute", "ipv6_cidr_block", "ipv6_ipam_pool_id", "ipv6_netmask_length", "ipv6_pool", "region", "vpc_id"],
        },
      },
    }
    + block.withVpcId(vpcId)
  ),
  withAssignGeneratedIpv6CidrBlock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assign_generated_ipv6_cidr_block" expected to be of type "bool"';
    {
      assign_generated_ipv6_cidr_block: converted,
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
  withIpv6IpamPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_ipam_pool_id" expected to be of type "string"';
    {
      ipv6_ipam_pool_id: converted,
    }
  ),
  withIpv6NetmaskLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv6_netmask_length" expected to be of type "number"';
    {
      ipv6_netmask_length: converted,
    }
  ),
  withIpv6Pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_pool" expected to be of type "string"';
    {
      ipv6_pool: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
