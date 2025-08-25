{
  local block = self,
  new(terraformName, authServerId, claimType, name, value):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_auth_server_claim",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["always_include_in_token", "auth_server_id", "claim_type", "group_filter_type", "id", "name", "scopes", "status", "value", "value_type"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAuthServerId(authServerId)
    + block.withClaimType(claimType)
    + block.withName(name)
    + block.withValue(value)
  ),
  "#withAlwaysIncludeInToken":: "Specifies whether to include claims in token, by default it is set to `true`.",
  withAlwaysIncludeInToken(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"always_include_in_token" expected to be of type "bool"';
    {
      always_include_in_token: converted,
    }
  ),
  "#withAuthServerId":: "ID of the authorization server.",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  "#withClaimType":: "Specifies whether the claim is for an access token `RESOURCE` or ID token `IDENTITY`.",
  withClaimType(value):: (
    local converted = value;
    assert std.isString(converted) : '"claim_type" expected to be of type "string"';
    {
      claim_type: converted,
    }
  ),
  "#withGroupFilterType":: "Specifies the type of group filter if `value_type` is `GROUPS`. Can be set to one of the following `STARTS_WITH`, `EQUALS`, `CONTAINS`, `REGEX`.",
  withGroupFilterType(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_filter_type" expected to be of type "string"';
    {
      group_filter_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the claim.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withValue":: "The value of the claim.",
  withValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
  "#withValueType":: "The type of value of the claim. It can be set to `EXPRESSION` or `GROUPS`. It defaults to `EXPRESSION`.",
  withValueType(value):: (
    local converted = value;
    assert std.isString(converted) : '"value_type" expected to be of type "string"';
    {
      value_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
