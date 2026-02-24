{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_connection",
          type:: "data",
          attributes:: ["auth_scheme", "base_url", "id", "status"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withAuthScheme":: "A token is used to authenticate with the app. This property is only returned for the TOKEN authentication scheme.",
  withAuthScheme(value):: (
    assert std.isString(value) : '"auth_scheme" expected to be of type "string"';

    {
      auth_scheme: value,
    }
  ),

  "#withBaseUrl":: "The base URL for the provisioning connection.",
  withBaseUrl(value):: (
    assert std.isString(value) : '"base_url" expected to be of type "string"';

    {
      base_url: value,
    }
  ),

  "#withId":: "The application ID.",
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
  withProfile(value):: (
    {
      profile: value,
    }
  ),
}
