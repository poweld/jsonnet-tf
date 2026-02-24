{
  local block = self,

  new(terraformName, authServerId, clientId, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_clients",
          type:: "data",
          attributes:: ["auth_server_id", "client_id", "created", "expires_at", "id", "issuer", "last_updated", "scopes", "status", "user_id"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
    + block.withClientId(clientId)
    + block.withId(id)
  ),

  "#withAuthServerId":: "The ID of the authorization server.",
  withAuthServerId(value):: (
    assert std.isString(value) : '"auth_server_id" expected to be of type "string"';

    {
      auth_server_id: value,
    }
  ),

  "#withClientId":: "The client ID of the app.",
  withClientId(value):: (
    assert std.isString(value) : '"client_id" expected to be of type "string"';

    {
      client_id: value,
    }
  ),

  "#withId":: "The ID of the token.",
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
