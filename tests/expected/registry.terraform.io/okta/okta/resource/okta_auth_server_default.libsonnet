{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_default",
          type:: "resource",
          attributes:: ["audiences", "credentials_last_rotated", "credentials_next_rotation", "credentials_rotation_mode", "description", "id", "issuer", "issuer_mode", "kid", "name", "status"],
        },
      },
    }
  ),

  "#withAudiences":: "The recipients that the tokens are intended for. This becomes the `aud` claim in an access token. Currently Okta only supports a single value here.",
  withAudiences(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';

    {
      audiences: converted,
    }
  ),

  "#withAudiencesMixin":: "The recipients that the tokens are intended for. This becomes the `aud` claim in an access token. Currently Okta only supports a single value here.",
  withAudiencesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audiences" expected to be of type "set"';

    {
      audiences+: converted,
    }
  ),

  "#withCredentialsRotationMode":: "The key rotation mode for the authorization server. Can be `AUTO` or `MANUAL`. Default: `MANUAL`.Credential rotation mode, in many cases you cannot set this to MANUAL, the API will ignore the value and you will get a perpetual diff. This should rarely be used.",
  withCredentialsRotationMode(value):: (
    assert std.isString(value) : '"credentials_rotation_mode" expected to be of type "string"';

    {
      credentials_rotation_mode: value,
    }
  ),

  "#withDescription":: "The description of the authorization server.",
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

  "#withIssuerMode":: "*Early Access Property*. Allows you to use a custom issuer URL. It can be set to `CUSTOM_URL`, `ORG_URL`, or `DYNAMIC`. Default: `ORG_URL`",
  withIssuerMode(value):: (
    assert std.isString(value) : '"issuer_mode" expected to be of type "string"';

    {
      issuer_mode: value,
    }
  ),

  "#withName":: "The name of the authorization server. Not necessary but left for backwards capacity with legacy implementation.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
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
