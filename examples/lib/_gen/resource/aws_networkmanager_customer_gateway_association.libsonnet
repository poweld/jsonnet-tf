{
  local block = self,
  new(terraformName, customerGatewayArn, deviceId, globalNetworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_customer_gateway_association",
          type:: "resource",
          attributes:: ["customer_gateway_arn", "device_id", "global_network_id", "id", "link_id"],
        },
      },
    }
    + block.withCustomerGatewayArn(customerGatewayArn)
    + block.withDeviceId(deviceId)
    + block.withGlobalNetworkId(globalNetworkId)
  ),
  withCustomerGatewayArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_gateway_arn" expected to be of type "string"';
    {
      customer_gateway_arn: converted,
    }
  ),
  withDeviceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_id" expected to be of type "string"';
    {
      device_id: converted,
    }
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
  withLinkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"link_id" expected to be of type "string"';
    {
      link_id: converted,
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
