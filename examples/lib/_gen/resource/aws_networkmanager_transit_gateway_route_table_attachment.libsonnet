{
  local block = self,
  new(terraformName, peeringId, transitGatewayRouteTableArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_transit_gateway_route_table_attachment",
          type:: "resource",
          attributes:: ["arn", "attachment_policy_rule_number", "attachment_type", "core_network_arn", "core_network_id", "edge_location", "id", "owner_account_id", "peering_id", "resource_arn", "segment_name", "state", "tags", "tags_all", "transit_gateway_route_table_arn"],
        },
      },
    }
    + block.withPeeringId(peeringId)
    + block.withTransitGatewayRouteTableArn(transitGatewayRouteTableArn)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPeeringId(value):: (
    local converted = value;
    assert std.isString(converted) : '"peering_id" expected to be of type "string"';
    {
      peering_id: converted,
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
  withTransitGatewayRouteTableArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_route_table_arn" expected to be of type "string"';
    {
      transit_gateway_route_table_arn: converted,
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
