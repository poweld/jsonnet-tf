{
  local block = self,
  new(terraformName, transitGatewayId, transportAttachmentId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_transit_gateway_connect",
          type:: "resource",
          attributes:: ["id", "protocol", "region", "tags", "tags_all", "transit_gateway_default_route_table_association", "transit_gateway_default_route_table_propagation", "transit_gateway_id", "transport_attachment_id"],
        },
      },
    }
    + block.withTransitGatewayId(transitGatewayId)
    + block.withTransportAttachmentId(transportAttachmentId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  withTransportAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transport_attachment_id" expected to be of type "string"';
    {
      transport_attachment_id: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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
