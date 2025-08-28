{
  local block = self,
  new(terraformName, authServerId):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_auth_server_claim",
        type:: "data",
        attributes:: ["always_include_in_token", "auth_server_id", "claim_type", "id", "name", "scopes", "status", "value", "value_type"],
      },
    }
    + block.withTerraformName(terraformName)
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
  "#withId":: "Name of the claim. Conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of the claim. Conflicts with `id`.",
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
