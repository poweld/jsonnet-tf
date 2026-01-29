{
  local block = self,

  new(terraformName, authServerId, claimType, name, value):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_claim",
          type:: "resource",
          attributes:: ["always_include_in_token", "auth_server_id", "claim_type", "group_filter_type", "id", "name", "scopes", "status", "value", "value_type"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
    + block.withClaimType(claimType)
    + block.withName(name)
    + block.withValue(value)
  ),

  "#withAlwaysIncludeInToken":: "Specifies whether to include claims in token, by default it is set to `true`.",
  withAlwaysIncludeInToken(value):: (
    assert std.isBoolean(value) : '"always_include_in_token" expected to be of type "bool"';

    {
      always_include_in_token: value,
    }
  ),

  "#withAuthServerId":: "ID of the authorization server.",
  withAuthServerId(value):: (
    assert std.isString(value) : '"auth_server_id" expected to be of type "string"';

    {
      auth_server_id: value,
    }
  ),

  "#withClaimType":: "Specifies whether the claim is for an access token `RESOURCE` or ID token `IDENTITY`.",
  withClaimType(value):: (
    assert std.isString(value) : '"claim_type" expected to be of type "string"';

    {
      claim_type: value,
    }
  ),

  "#withGroupFilterType":: "Specifies the type of group filter if `value_type` is `GROUPS`. Can be set to one of the following `STARTS_WITH`, `EQUALS`, `CONTAINS`, `REGEX`.",
  withGroupFilterType(value):: (
    assert std.isString(value) : '"group_filter_type" expected to be of type "string"';

    {
      group_filter_type: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The name of the claim.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withScopes":: "The list of scopes the auth server claim is tied to.",
  withScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';

    {
      scopes: converted,
    }
  ),

  "#withScopesMixin":: "The list of scopes the auth server claim is tied to.",
  withScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';

    {
      scopes+: converted,
    }
  ),

  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withValue":: "The value of the claim.",
  withValue(value):: (
    assert std.isString(value) : '"value" expected to be of type "string"';

    {
      value: value,
    }
  ),

  "#withValueType":: "The type of value of the claim. It can be set to `EXPRESSION` or `GROUPS`. It defaults to `EXPRESSION`.",
  withValueType(value):: (
    assert std.isString(value) : '"value_type" expected to be of type "string"';

    {
      value_type: value,
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
