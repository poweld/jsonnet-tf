{
  local block = self,
  new(terraformName, authServerId, grantTypeWhitelist, name, policyId, priority):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_policy_rule",
          type:: "resource",
          attributes:: ["access_token_lifetime_minutes", "auth_server_id", "grant_type_whitelist", "group_blacklist", "group_whitelist", "id", "inline_hook_id", "name", "policy_id", "priority", "refresh_token_lifetime_minutes", "refresh_token_window_minutes", "scope_whitelist", "status", "system", "type", "user_blacklist", "user_whitelist"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
    + block.withGrantTypeWhitelist(grantTypeWhitelist)
    + block.withName(name)
    + block.withPolicyId(policyId)
    + block.withPriority(priority)
  ),
  "#withAccessTokenLifetimeMinutes":: "Lifetime of access token. Can be set to a value between 5 and 1440 minutes. Default is `60`.",
  withAccessTokenLifetimeMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"access_token_lifetime_minutes" expected to be of type "number"';
    {
      access_token_lifetime_minutes: converted,
    }
  ),
  "#withAuthServerId":: "Auth server ID",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  "#withGrantTypeWhitelist":: "Accepted grant type values, `authorization_code`, `implicit`, `password`, `client_credentials`, `urn:ietf:params:oauth:grant-type:saml2-bearer` (*Early Access Property*), `urn:ietf:params:oauth:grant-type:token-exchange` (*Early Access Property*),`urn:ietf:params:oauth:grant-type:device_code` (*Early Access Property*), `interaction_code` (*OIE only*). For `implicit` value either `user_whitelist` or `group_whitelist` should be set.",
  withGrantTypeWhitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_type_whitelist" expected to be of type "set"';
    {
      grant_type_whitelist: converted,
    }
  ),
  "#withGrantTypeWhitelistMixin":: "Accepted grant type values, `authorization_code`, `implicit`, `password`, `client_credentials`, `urn:ietf:params:oauth:grant-type:saml2-bearer` (*Early Access Property*), `urn:ietf:params:oauth:grant-type:token-exchange` (*Early Access Property*),`urn:ietf:params:oauth:grant-type:device_code` (*Early Access Property*), `interaction_code` (*OIE only*). For `implicit` value either `user_whitelist` or `group_whitelist` should be set.",
  withGrantTypeWhitelistMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_type_whitelist" expected to be of type "set"';
    {
      grant_type_whitelist+: converted,
    }
  ),
  "#withGroupBlacklist":: "Specifies a set of Groups whose Users are to be excluded.",
  withGroupBlacklist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_blacklist" expected to be of type "set"';
    {
      group_blacklist: converted,
    }
  ),
  "#withGroupBlacklistMixin":: "Specifies a set of Groups whose Users are to be excluded.",
  withGroupBlacklistMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_blacklist" expected to be of type "set"';
    {
      group_blacklist+: converted,
    }
  ),
  "#withGroupWhitelist":: "Specifies a set of Groups whose Users are to be included. Can be set to Group ID or to the following: `EVERYONE`.",
  withGroupWhitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_whitelist" expected to be of type "set"';
    {
      group_whitelist: converted,
    }
  ),
  "#withGroupWhitelistMixin":: "Specifies a set of Groups whose Users are to be included. Can be set to Group ID or to the following: `EVERYONE`.",
  withGroupWhitelistMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_whitelist" expected to be of type "set"';
    {
      group_whitelist+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withInlineHookId":: "The ID of the inline token to trigger.",
  withInlineHookId(value):: (
    local converted = value;
    assert std.isString(converted) : '"inline_hook_id" expected to be of type "string"';
    {
      inline_hook_id: converted,
    }
  ),
  "#withName":: "Auth server policy rule name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPolicyId":: "Auth server policy ID",
  withPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  "#withPriority":: "Priority of the auth server policy rule",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  "#withRefreshTokenLifetimeMinutes":: "Lifetime of refresh token.",
  withRefreshTokenLifetimeMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"refresh_token_lifetime_minutes" expected to be of type "number"';
    {
      refresh_token_lifetime_minutes: converted,
    }
  ),
  "#withRefreshTokenWindowMinutes":: "Window in which a refresh token can be used. It can be a value between 5 and 2628000 (5 years) minutes. Default is `10080` (7 days).`refresh_token_window_minutes` must be between `access_token_lifetime_minutes` and `refresh_token_lifetime_minutes`.",
  withRefreshTokenWindowMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"refresh_token_window_minutes" expected to be of type "number"';
    {
      refresh_token_window_minutes: converted,
    }
  ),
  "#withScopeWhitelist":: "Scopes allowed for this policy rule. They can be whitelisted by name or all can be whitelisted with ` * `",
  withScopeWhitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scope_whitelist" expected to be of type "set"';
    {
      scope_whitelist: converted,
    }
  ),
  "#withScopeWhitelistMixin":: "Scopes allowed for this policy rule. They can be whitelisted by name or all can be whitelisted with ` * `",
  withScopeWhitelistMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scope_whitelist" expected to be of type "set"';
    {
      scope_whitelist+: converted,
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
  "#withType":: "Auth server policy rule type, unlikely this will be anything other then the default",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUserBlacklist":: "Specifies a set of Users to be excluded.",
  withUserBlacklist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_blacklist" expected to be of type "set"';
    {
      user_blacklist: converted,
    }
  ),
  "#withUserBlacklistMixin":: "Specifies a set of Users to be excluded.",
  withUserBlacklistMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_blacklist" expected to be of type "set"';
    {
      user_blacklist+: converted,
    }
  ),
  "#withUserWhitelist":: "Specifies a set of Users to be included.",
  withUserWhitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_whitelist" expected to be of type "set"';
    {
      user_whitelist: converted,
    }
  ),
  "#withUserWhitelistMixin":: "Specifies a set of Users to be included.",
  withUserWhitelistMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_whitelist" expected to be of type "set"';
    {
      user_whitelist+: converted,
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
