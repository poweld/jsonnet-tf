{
  local block = self,
  new(terraformName, connectedDeviceId, deviceId, globalNetworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_connection",
          type:: "resource",
          attributes:: ["arn", "connected_device_id", "connected_link_id", "description", "device_id", "global_network_id", "id", "link_id", "tags", "tags_all"],
        },
      },
    }
    + block.withConnectedDeviceId(connectedDeviceId)
    + block.withDeviceId(deviceId)
    + block.withGlobalNetworkId(globalNetworkId)
  ),
  withConnectedDeviceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connected_device_id" expected to be of type "string"';
    {
      connected_device_id: converted,
    }
  ),
  withConnectedLinkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connected_link_id" expected to be of type "string"';
    {
      connected_link_id: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
