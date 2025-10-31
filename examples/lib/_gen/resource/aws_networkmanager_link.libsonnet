{
  local block = self,
  new(terraformName, globalNetworkId, siteId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_link",
          type:: "resource",
          attributes:: ["arn", "description", "global_network_id", "id", "provider_name", "site_id", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withGlobalNetworkId(globalNetworkId)
    + block.withSiteId(siteId)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withProviderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  bandwidth:: {
    local block = self,
    new():: (
      {}
    ),
    withDownloadSpeed(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"download_speed" expected to be of type "number"';
      {
        download_speed: converted,
      }
    ),
    withUploadSpeed(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"upload_speed" expected to be of type "number"';
      {
        upload_speed: converted,
      }
    ),
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
  withBandwidth(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bandwidth: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withBandwidthMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bandwidth+: converted,
    }
  ),
}
