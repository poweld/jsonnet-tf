{
  local block = self,
  new(terraformName, destinationCidrBlock, vpnConnectionId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpn_connection_route",
          type:: "resource",
          attributes:: ["destination_cidr_block", "id", "region", "vpn_connection_id"],
        },
      },
    }
    + block.withDestinationCidrBlock(destinationCidrBlock)
    + block.withVpnConnectionId(vpnConnectionId)
  ),
  withDestinationCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_cidr_block" expected to be of type "string"';
    {
      destination_cidr_block: converted,
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
  withVpnConnectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_connection_id" expected to be of type "string"';
    {
      vpn_connection_id: converted,
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
