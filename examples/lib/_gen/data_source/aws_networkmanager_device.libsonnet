{
  local block = self,
  new(terraformName, deviceId, globalNetworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_device",
          type:: "data",
          attributes:: ["arn", "aws_location", "description", "device_id", "global_network_id", "id", "location", "model", "serial_number", "site_id", "tags", "type", "vendor"],
        },
      },
    }
    + block.withDeviceId(deviceId)
    + block.withGlobalNetworkId(globalNetworkId)
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
