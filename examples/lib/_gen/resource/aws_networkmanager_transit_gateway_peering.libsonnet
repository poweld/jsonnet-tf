{
  local block = self,
  new(terraformName, coreNetworkId, transitGatewayArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_transit_gateway_peering",
          type:: "resource",
          attributes:: ["arn", "core_network_arn", "core_network_id", "edge_location", "id", "owner_account_id", "peering_type", "resource_arn", "tags", "tags_all", "transit_gateway_arn", "transit_gateway_peering_attachment_id"],
        },
      },
    }
    + block.withCoreNetworkId(coreNetworkId)
    + block.withTransitGatewayArn(transitGatewayArn)
  ),
  withCoreNetworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTransitGatewayArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_arn" expected to be of type "string"';
    {
      transit_gateway_arn: converted,
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
