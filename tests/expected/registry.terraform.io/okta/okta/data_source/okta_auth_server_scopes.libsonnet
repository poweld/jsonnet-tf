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
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
