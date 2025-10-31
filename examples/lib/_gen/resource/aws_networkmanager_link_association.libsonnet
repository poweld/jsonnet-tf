{
  local block = self,
  new(terraformName, deviceId, globalNetworkId, linkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_link_association",
          type:: "resource",
          attributes:: ["device_id", "global_network_id", "id", "link_id"],
        },
      },
    }
    + block.withDeviceId(deviceId)
    + block.withGlobalNetworkId(globalNetworkId)
    + block.withLinkId(linkId)
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
