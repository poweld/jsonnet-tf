{
  local block = self,
  new(terraformName, subnetIds, transitGatewayId, vpcId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_vpc_attachment",
          type:: "resource",
          attributes:: ["appliance_mode_support", "arn", "dns_support", "id", "ipv6_support", "region", "security_group_referencing_support", "subnet_ids", "tags", "tags_all", "transit_gateway_default_route_table_association", "transit_gateway_default_route_table_propagation", "transit_gateway_id", "vpc_id", "vpc_owner_id"],
        },
      },
    }
    + block.withSubnetIds(subnetIds)
    + block.withTransitGatewayId(transitGatewayId)
    + block.withVpcId(vpcId)
  ),
  withApplianceModeSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"appliance_mode_support" expected to be of type "string"';
    {
      appliance_mode_support: converted,
    }
  ),
  withDnsSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_support" expected to be of type "string"';
    {
      dns_support: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpv6Support(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_support" expected to be of type "string"';
    {
      ipv6_support: converted,
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
  withSecurityGroupReferencingSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_referencing_support" expected to be of type "string"';
    {
      security_group_referencing_support: converted,
    }
  ),
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTransitGatewayDefaultRouteTableAssociation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_gateway_default_route_table_association" expected to be of type "bool"';
    {
      transit_gateway_default_route_table_association: converted,
    }
  ),
  withTransitGatewayDefaultRouteTablePropagation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_gateway_default_route_table_propagation" expected to be of type "bool"';
    {
      transit_gateway_default_route_table_propagation: converted,
    }
  ),
  withTransitGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
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
