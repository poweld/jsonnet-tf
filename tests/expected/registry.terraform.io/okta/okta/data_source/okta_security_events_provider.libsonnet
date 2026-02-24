{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_security_events_provider",
          type:: "data",
          attributes:: ["id", "is_enabled", "name", "status", "type"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The unique identifier of this instance.",
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

  settings:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withSettings(value):: (
    {
      settings: value,
    }
  ),
}
