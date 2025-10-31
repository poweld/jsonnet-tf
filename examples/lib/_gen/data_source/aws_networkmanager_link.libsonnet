{
  local block = self,
  new(terraformName, globalNetworkId, linkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_link",
          type:: "data",
          attributes:: ["arn", "bandwidth", "description", "global_network_id", "id", "link_id", "provider_name", "site_id", "tags", "type"],
        },
      },
    }
    + block.withGlobalNetworkId(globalNetworkId)
    + block.withLinkId(linkId)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
