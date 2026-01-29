{
  local block = self,

  new(terraformName, authServerId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_claim",
          type:: "data",
          attributes:: ["always_include_in_token", "auth_server_id", "claim_type", "id", "name", "scopes", "status", "value", "value_type"],
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

  "#withId":: "Name of the claim. Conflicts with `name`.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Name of the claim. Conflicts with `id`.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
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
