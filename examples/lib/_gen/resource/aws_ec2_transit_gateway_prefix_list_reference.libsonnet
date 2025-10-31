{
  local block = self,
  new(terraformName, prefixListId, transitGatewayRouteTableId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_prefix_list_reference",
          type:: "resource",
          attributes:: ["blackhole", "id", "prefix_list_id", "prefix_list_owner_id", "region", "transit_gateway_attachment_id", "transit_gateway_route_table_id"],
        },
      },
    }
    + block.withPrefixListId(prefixListId)
    + block.withTransitGatewayRouteTableId(transitGatewayRouteTableId)
  ),
  withBlackhole(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"blackhole" expected to be of type "bool"';
    {
      blackhole: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrefixListId(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix_list_id" expected to be of type "string"';
    {
      prefix_list_id: converted,
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
  withTransitGatewayAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  withTransitGatewayRouteTableId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_route_table_id" expected to be of type "string"';
    {
      transit_gateway_route_table_id: converted,
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
