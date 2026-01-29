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

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The name of the claim. Can be set to `sub`, `address`, `birthdate`, `email`,`email_verified`, `family_name`, `gender`, `given_name`, `locale`, `middle_name`, `name`, `nickname`,`phone_number`, `picture`, `preferred_username`, `profile`, `updated_at`, `website`, `zoneinfo`",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withValue":: "The value of the claim. Only required for `sub` claim.",
  withValue(value):: (
    assert std.isString(value) : '"value" expected to be of type "string"';

    {
      value: value,
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
