{
  local block = self,
  new(terraformName, connectionId, globalNetworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_connection",
          type:: "data",
          attributes:: ["arn", "connected_device_id", "connected_link_id", "connection_id", "description", "device_id", "global_network_id", "id", "link_id", "tags"],
        },
      },
    }
    + block.withConnectionId(connectionId)
    + block.withGlobalNetworkId(globalNetworkId)
  ),
  withConnectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
