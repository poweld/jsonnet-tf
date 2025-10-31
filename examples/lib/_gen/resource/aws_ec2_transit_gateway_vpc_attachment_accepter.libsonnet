{
  local block = self,
  new(terraformName, transitGatewayAttachmentId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_vpc_attachment_accepter",
          type:: "resource",
          attributes:: ["appliance_mode_support", "dns_support", "id", "ipv6_support", "region", "security_group_referencing_support", "subnet_ids", "tags", "tags_all", "transit_gateway_attachment_id", "transit_gateway_default_route_table_association", "transit_gateway_default_route_table_propagation", "transit_gateway_id", "vpc_id", "vpc_owner_id"],
        },
      },
    }
    + block.withTransitGatewayAttachmentId(transitGatewayAttachmentId)
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
  withTransitGatewayAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
