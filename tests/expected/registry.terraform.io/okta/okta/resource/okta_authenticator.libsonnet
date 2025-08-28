{
  local block = self,
  new(terraformName, key, name):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_authenticator",
        type:: "resource",
        attributes:: ["id", "key", "legacy_ignore_name", "name", "provider_auth_port", "provider_host", "provider_hostname", "provider_instance_id", "provider_integration_key", "provider_json", "provider_secret_key", "provider_shared_secret", "provider_type", "provider_user_name_template", "settings", "status", "type"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withKey(key)
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKey":: "A human-readable string that identifies the authenticator. Some authenticators are available by feature flag on the organization. Possible values inclue: `duo`, `external_idp`, `google_otp`, `okta_email`, `okta_password`, `okta_verify`, `onprem_mfa`, `phone_number`, `rsa_token`, `security_question`, `webauthn`",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withLegacyIgnoreName":: "Name does not trigger change detection (legacy behavior)",
  withLegacyIgnoreName(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"legacy_ignore_name" expected to be of type "bool"';
    {
      legacy_ignore_name: converted,
    }
  ),
  "#withName":: "Display name of the Authenticator",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withProviderAuthPort":: "The RADIUS server port (for example 1812). This is defined when the On-Prem RADIUS server is configured. Used only for authenticators with type `security_key`.  Conflicts with `provider_json` argument.",
  withProviderAuthPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provider_auth_port" expected to be of type "number"';
    {
      provider_auth_port: converted,
    }
  ),
  "#withProviderHost":: "(DUO specific) - The Duo Security API hostname. Conflicts with `provider_json` argument.",
  withProviderHost(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_host" expected to be of type "string"';
    {
      provider_host: converted,
    }
  ),
  "#withProviderHostname":: "Server host name or IP address. Default is `localhost`. Used only for authenticators with type `security_key`. Conflicts with `provider_json` argument.",
  withProviderHostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_hostname" expected to be of type "string"';
    {
      provider_hostname: converted,
    }
  ),
  "#withProviderIntegrationKey":: "(DUO specific) - The Duo Security integration key.  Conflicts with `provider_json` argument.",
  withProviderIntegrationKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_integration_key" expected to be of type "string"';
    {
      provider_integration_key: converted,
    }
  ),
  "#withProviderJson":: "Provider JSON allows for expressive providervalues. This argument conflicts with the other 'provider_xxx' arguments. The [CreateProvider](https://developer.okta.com/docs/reference/api/authenticators-admin/#request) illustrates detailed provider values for a Duo authenticator. [Provider values](https://developer.okta.com/docs/reference/api/authenticators-admin/#authenticators-administration-api-object)are listed in Okta API.",
  withProviderJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_json" expected to be of type "string"';
    {
      provider_json: converted,
    }
  ),
  "#withProviderSecretKey":: "(DUO specific) - The Duo Security secret key.  Conflicts with `provider_json` argument.",
  withProviderSecretKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_secret_key" expected to be of type "string"';
    {
      provider_secret_key: converted,
    }
  ),
  "#withProviderSharedSecret":: "An authentication key that must be defined when the RADIUS server is configured, and must be the same on both the RADIUS client and server. Used only for authenticators with type `security_key`. Conflicts with `provider_json` argument.",
  withProviderSharedSecret(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_shared_secret" expected to be of type "string"';
    {
      provider_shared_secret: converted,
    }
  ),
  "#withProviderUserNameTemplate":: "Username template expected by the provider. Used only for authenticators with type `security_key`.  Conflicts with `provider_json` argument.",
  withProviderUserNameTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_user_name_template" expected to be of type "string"';
    {
      provider_user_name_template: converted,
    }
  ),
  "#withSettings":: "Settings for the authenticator. The settings JSON contains values based on Authenticator key. It is not used for authenticators with type `security_key`",
  withSettings(value):: (
    local converted = value;
    assert std.isString(converted) : '"settings" expected to be of type "string"';
    {
      settings: converted,
    }
  ),
  "#withStatus":: "Authenticator status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
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
