{
  local block = self,
  new(terraformName, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_ipv4_cidr_block_association",
          type:: "resource",
          attributes:: ["cidr_block", "id", "ipv4_ipam_pool_id", "ipv4_netmask_length", "region", "vpc_id"],
        },
      },
    }
    + block.withVpcId(vpcId)
  ),
  withCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
    {
      cidr_block: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpv4IpamPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv4_ipam_pool_id" expected to be of type "string"';
    {
      ipv4_ipam_pool_id: converted,
    }
  ),
  withIpv4NetmaskLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv4_netmask_length" expected to be of type "number"';
    {
      ipv4_netmask_length: converted,
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
