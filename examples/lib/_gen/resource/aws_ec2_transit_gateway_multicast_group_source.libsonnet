{
  local block = self,
  new(terraformName, groupIpAddress, networkInterfaceId, transitGatewayMulticastDomainId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_multicast_group_source",
          type:: "resource",
          attributes:: ["group_ip_address", "id", "network_interface_id", "region", "transit_gateway_multicast_domain_id"],
        },
      },
    }
    + block.withGroupIpAddress(groupIpAddress)
    + block.withNetworkInterfaceId(networkInterfaceId)
    + block.withTransitGatewayMulticastDomainId(transitGatewayMulticastDomainId)
  ),
  withGroupIpAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_ip_address" expected to be of type "string"';
    {
      group_ip_address: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTransitGatewayMulticastDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_multicast_domain_id" expected to be of type "string"';
    {
      transit_gateway_multicast_domain_id: converted,
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
