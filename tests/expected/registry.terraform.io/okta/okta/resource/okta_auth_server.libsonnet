{
  local block = self,
  new(terraformName, audiences, name):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_auth_server",
        type:: "resource",
        attributes:: ["audiences", "credentials_last_rotated", "credentials_next_rotation", "credentials_rotation_mode", "description", "id", "issuer", "issuer_mode", "kid", "name", "status"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAudiences(audiences)
    + block.withName(name)
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
  "#withCredentialsRotationMode":: "The key rotation mode for the authorization server. Can be `AUTO` or `MANUAL`. Default: `AUTO`",
  withCredentialsRotationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_rotation_mode" expected to be of type "string"';
    {
      credentials_rotation_mode: converted,
    }
  ),
  "#withDescription":: "The description of the authorization server.",
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
  "#withIssuerMode":: "*Early Access Property*. Allows you to use a custom issuer URL. It can be set to `CUSTOM_URL`, `ORG_URL`, or `DYNAMIC`. Default: `ORG_URL`",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withName":: "The name of the authorization server.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
