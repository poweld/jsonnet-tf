{
  local block = self,

  new(terraformName, authServerId, clientWhitelist, description, name, priority):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_policy",
          type:: "resource",
          attributes:: ["auth_server_id", "client_whitelist", "description", "id", "name", "priority", "status"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
    + block.withClientWhitelist(clientWhitelist)
    + block.withDescription(description)
    + block.withName(name)
    + block.withPriority(priority)
  ),

  "#withAuthServerId":: "The ID of the Auth Server.",
  withAuthServerId(value):: (
    assert std.isString(value) : '"auth_server_id" expected to be of type "string"';

    {
      auth_server_id: value,
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
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The name of the Auth Server Policy.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withPriority":: "Priority of the auth server policy",
  withPriority(value):: (
    assert std.isNumber(value) : '"priority" expected to be of type "number"';

    {
      priority: value,
    }
  ),

  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
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
