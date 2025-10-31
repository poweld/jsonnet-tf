{
  local block = self,
  new(terraformName, destinationCidrBlock, localGatewayRouteTableId, localGatewayVirtualInterfaceGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_local_gateway_route",
          type:: "resource",
          attributes:: ["destination_cidr_block", "id", "local_gateway_route_table_id", "local_gateway_virtual_interface_group_id", "region"],
        },
      },
    }
    + block.withDestinationCidrBlock(destinationCidrBlock)
    + block.withLocalGatewayRouteTableId(localGatewayRouteTableId)
    + block.withLocalGatewayVirtualInterfaceGroupId(localGatewayVirtualInterfaceGroupId)
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
  withLocalGatewayRouteTableId(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_gateway_route_table_id" expected to be of type "string"';
    {
      local_gateway_route_table_id: converted,
    }
  ),
  withLocalGatewayVirtualInterfaceGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_gateway_virtual_interface_group_id" expected to be of type "string"';
    {
      local_gateway_virtual_interface_group_id: converted,
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
