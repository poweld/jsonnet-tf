{
  local block = self,

  new(terraformName, authServerId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_scopes",
          type:: "data",
          attributes:: ["auth_server_id", "id", "scopes"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
  ),

  "#withAuthServerId":: "Auth server ID",
  withAuthServerId(value):: (
    assert std.isString(value) : '"auth_server_id" expected to be of type "string"';

    {
      auth_server_id: value,
    }
  ),

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
}
