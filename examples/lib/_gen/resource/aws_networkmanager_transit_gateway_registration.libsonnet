{
  local block = self,
  new(terraformName, globalNetworkId, transitGatewayArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_transit_gateway_registration",
          type:: "resource",
          attributes:: ["global_network_id", "id", "transit_gateway_arn"],
        },
      },
    }
    + block.withGlobalNetworkId(globalNetworkId)
    + block.withTransitGatewayArn(transitGatewayArn)
  ),
  withGlobalNetworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_network_id" expected to be of type "string"';
    {
      global_network_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
