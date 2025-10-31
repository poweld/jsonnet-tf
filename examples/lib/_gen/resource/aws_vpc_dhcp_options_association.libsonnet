{
  local block = self,
  new(terraformName, dhcpOptionsId, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_dhcp_options_association",
          type:: "resource",
          attributes:: ["dhcp_options_id", "id", "region", "vpc_id"],
        },
      },
    }
    + block.withDhcpOptionsId(dhcpOptionsId)
    + block.withVpcId(vpcId)
  ),
  withDhcpOptionsId(value):: (
    local converted = value;
    assert std.isString(converted) : '"dhcp_options_id" expected to be of type "string"';
    {
      dhcp_options_id: converted,
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
