{
  local block = self,
  new(terraformName, globalNetworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_core_network",
          type:: "resource",
          attributes:: ["arn", "base_policy_document", "base_policy_regions", "create_base_policy", "created_at", "description", "edges", "global_network_id", "id", "segments", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withGlobalNetworkId(globalNetworkId)
  ),
  withBasePolicyDocument(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_policy_document" expected to be of type "string"';
    {
      base_policy_document: converted,
    }
  ),
  withBasePolicyRegions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"base_policy_regions" expected to be of type "set"';
    {
      base_policy_regions: converted,
    }
  ),
  withBasePolicyRegionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"base_policy_regions" expected to be of type "set"';
    {
      base_policy_regions+: converted,
    }
  ),
  withCreateBasePolicy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"create_base_policy" expected to be of type "bool"';
    {
      create_base_policy: converted,
    }
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
