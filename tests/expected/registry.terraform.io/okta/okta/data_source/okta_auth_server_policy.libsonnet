{
  local block = self,
  new(terraformName, authServerId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_auth_server_policy",
          type:: "data",
          attributes:: ["assigned_clients", "auth_server_id", "description", "id", "name", "priority"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAuthServerId(authServerId)
    + block.withName(name)
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
  "#withName":: "Name of the policy",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
