{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_device",
          type:: "data",
          attributes:: ["created", "id", "last_updated", "resource_alternate_id", "resource_id", "resource_type", "status"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The ID of the device.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  profile:: {
    local block = self,

    new():: (
      {}
    ),
  },
  resourceDisplayName:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withProfile(value):: (
    {
      profile: value,
    }
  ),
  withResourceDisplayName(value):: (
    {
      resource_display_name: value,
    }
  ),
}
