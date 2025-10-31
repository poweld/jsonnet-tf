{
  local block = self,
  new(terraformName, globalNetworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_site",
          type:: "resource",
          attributes:: ["arn", "description", "global_network_id", "id", "tags", "tags_all"],
        },
      },
    }
    + block.withGlobalNetworkId(globalNetworkId)
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
  location:: {
    local block = self,
    new():: (
      {}
    ),
    withAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"address" expected to be of type "string"';
      {
        address: converted,
      }
    ),
    withLatitude(value):: (
      local converted = value;
      assert std.isString(converted) : '"latitude" expected to be of type "string"';
      {
        latitude: converted,
      }
    ),
    withLongitude(value):: (
      local converted = value;
      assert std.isString(converted) : '"longitude" expected to be of type "string"';
      {
        longitude: converted,
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
  withLocation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withLocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location+: converted,
    }
  ),
}
