{
  local block = self,
  new(terraformName, globalNetworkId, siteId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_site",
          type:: "data",
          attributes:: ["arn", "description", "global_network_id", "id", "location", "site_id", "tags"],
        },
      },
    }
    + block.withGlobalNetworkId(globalNetworkId)
    + block.withSiteId(siteId)
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
  withSiteId(value):: (
    local converted = value;
    assert std.isString(converted) : '"site_id" expected to be of type "string"';
    {
      site_id: converted,
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
