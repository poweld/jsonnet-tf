{
  local block = self,
  new(terraformName, globalNetworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_sites",
          type:: "data",
          attributes:: ["global_network_id", "id", "ids", "tags"],
        },
      },
    }
    + block.withGlobalNetworkId(globalNetworkId)
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
