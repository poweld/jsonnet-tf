{
  local block = self,

  new(terraformName, authServerId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_policy",
          type:: "data",
          attributes:: ["assigned_clients", "auth_server_id", "description", "id", "name", "priority"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
    + block.withName(name)
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

  "#withName":: "Name of the policy",
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
