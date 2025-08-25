{
  local block = self,
  new(name, auth_server_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_auth_server_policy",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "assigned_clients", "auth_server_id", "description", "id", "priority"],
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
}
