{
  local block = self,
  new(terraformName, routeTableId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route",
          type:: "data",
          attributes:: ["carrier_gateway_id", "core_network_arn", "destination_cidr_block", "destination_ipv6_cidr_block", "destination_prefix_list_id", "egress_only_gateway_id", "gateway_id", "id", "instance_id", "local_gateway_id", "nat_gateway_id", "network_interface_id", "region", "route_table_id", "transit_gateway_id", "vpc_peering_connection_id"],
        },
      },
    }
    + block.withRouteTableId(routeTableId)
  ),
  withCarrierGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"carrier_gateway_id" expected to be of type "string"';
    {
      carrier_gateway_id: converted,
    }
  ),
  withCoreNetworkArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_arn" expected to be of type "string"';
    {
      core_network_arn: converted,
    }
  ),
  withDestinationCidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_cidr_block" expected to be of type "string"';
    {
      destination_cidr_block: converted,
    }
  ),
  withDestinationIpv6CidrBlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_ipv6_cidr_block" expected to be of type "string"';
    {
      destination_ipv6_cidr_block: converted,
    }
  ),
  withDestinationPrefixListId(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_prefix_list_id" expected to be of type "string"';
    {
      destination_prefix_list_id: converted,
    }
  ),
  withEgressOnlyGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"egress_only_gateway_id" expected to be of type "string"';
    {
      egress_only_gateway_id: converted,
    }
  ),
  withGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_id" expected to be of type "string"';
    {
      gateway_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  withLocalGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_gateway_id" expected to be of type "string"';
    {
      local_gateway_id: converted,
    }
  ),
  withNatGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"nat_gateway_id" expected to be of type "string"';
    {
      nat_gateway_id: converted,
    }
  ),
  withNetworkInterfaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
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
  withRouteTableId(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_table_id" expected to be of type "string"';
    {
      route_table_id: converted,
    }
  ),
  withTransitGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  withVpcPeeringConnectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_peering_connection_id" expected to be of type "string"';
    {
      vpc_peering_connection_id: converted,
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
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
