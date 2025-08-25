{
  local block = self,
  new(name, auth_server_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_auth_server_claim",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "always_include_in_token", "auth_server_id", "claim_type", "id", "scopes", "status", "value", "value_type"],
      },
    }
    + block.withName(name)
    + block.withAuthServerId(auth_server_id)
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
}
