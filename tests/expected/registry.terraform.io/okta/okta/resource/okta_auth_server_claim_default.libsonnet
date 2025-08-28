{
  local block = self,
  new(terraformName, authServerId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_claim_default",
          type:: "resource",
          attributes:: ["always_include_in_token", "auth_server_id", "claim_type", "id", "name", "scopes", "status", "value", "value_type"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
    + block.withName(name)
  ),
  "#withAlwaysIncludeInToken":: "Specifies whether to include claims in token.",
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the claim. Can be set to `sub`, `address`, `birthdate`, `email`,`email_verified`, `family_name`, `gender`, `given_name`, `locale`, `middle_name`, `name`, `nickname`,`phone_number`, `picture`, `preferred_username`, `profile`, `updated_at`, `website`, `zoneinfo`",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withValue":: "The value of the claim. Only required for `sub` claim.",
  withValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
}
