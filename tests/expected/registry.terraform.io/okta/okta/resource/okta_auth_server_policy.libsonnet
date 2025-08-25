{
  local block = self,
  new(name, auth_server_id, client_whitelist, description, priority):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_auth_server_policy",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "auth_server_id", "client_whitelist", "description", "id", "priority", "status"],
      },
    }
    + block.withName(name)
    + block.withAuthServerId(auth_server_id)
    + block.withClientWhitelist(client_whitelist)
    + block.withDescription(description)
    + block.withPriority(priority)
  ),
  "#withAuthServerId":: "The ID of the Auth Server.",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  "#withClientWhitelist":: "The clients to whitelist the policy for. `[ALL_CLIENTS]` is a special value that can be used to whitelist all clients, otherwise it is a list of client ids.",
  withClientWhitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_whitelist" expected to be of type "set"';
    {
      client_whitelist: converted,
    }
  ),
  "#withClientWhitelistMixin":: "The clients to whitelist the policy for. `[ALL_CLIENTS]` is a special value that can be used to whitelist all clients, otherwise it is a list of client ids.",
  withClientWhitelistMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_whitelist" expected to be of type "set"';
    {
      client_whitelist+: converted,
    }
  ),
  "#withDescription":: "The description of the Auth Server Policy.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the Auth Server Policy.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPriority":: "Priority of the auth server policy",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
