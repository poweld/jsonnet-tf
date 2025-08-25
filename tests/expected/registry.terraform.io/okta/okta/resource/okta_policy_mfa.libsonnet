{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_policy_mfa",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["description", "duo", "external_idp", "external_idps", "fido_u2f", "fido_webauthn", "google_otp", "groups_included", "hotp", "id", "is_oie", "name", "okta_call", "okta_email", "okta_otp", "okta_password", "okta_push", "okta_question", "okta_sms", "okta_verify", "onprem_mfa", "phone_number", "priority", "rsa_token", "security_question", "smart_card_idp", "status", "symantec_vip", "webauthn", "yubikey_token"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
  ),
  "#withDescription":: "Policy Description",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDuo(value):: (
    local converted = value;
    assert std.isObject(converted) : '"duo" expected to be of type "map"';
    {
      duo: converted,
    }
  ),
  withExternalIdp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"external_idp" expected to be of type "map"';
    {
      external_idp: converted,
    }
  ),
  withExternalIdps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"external_idps" expected to be of type "set"';
    {
      external_idps: converted,
    }
  ),
  withExternalIdpsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"external_idps" expected to be of type "set"';
    {
      external_idps+: converted,
    }
  ),
  withFidoU2f(value):: (
    local converted = value;
    assert std.isObject(converted) : '"fido_u2f" expected to be of type "map"';
    {
      fido_u2f: converted,
    }
  ),
  withFidoWebauthn(value):: (
    local converted = value;
    assert std.isObject(converted) : '"fido_webauthn" expected to be of type "map"';
    {
      fido_webauthn: converted,
    }
  ),
  withGoogleOtp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"google_otp" expected to be of type "map"';
    {
      google_otp: converted,
    }
  ),
  "#withGroupsIncluded":: "List of Group IDs to Include",
  withGroupsIncluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included: converted,
    }
  ),
  "#withGroupsIncludedMixin":: "List of Group IDs to Include",
  withGroupsIncludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included+: converted,
    }
  ),
  withHotp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"hotp" expected to be of type "map"';
    {
      hotp: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIsOie":: "Is the policy using Okta Identity Engine (OIE) with authenticators instead of factors?",
  withIsOie(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_oie" expected to be of type "bool"';
    {
      is_oie: converted,
    }
  ),
  "#withName":: "Policy Name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOktaCall(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_call" expected to be of type "map"';
    {
      okta_call: converted,
    }
  ),
  withOktaEmail(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_email" expected to be of type "map"';
    {
      okta_email: converted,
    }
  ),
  withOktaOtp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_otp" expected to be of type "map"';
    {
      okta_otp: converted,
    }
  ),
  withOktaPassword(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_password" expected to be of type "map"';
    {
      okta_password: converted,
    }
  ),
  withOktaPush(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_push" expected to be of type "map"';
    {
      okta_push: converted,
    }
  ),
  withOktaQuestion(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_question" expected to be of type "map"';
    {
      okta_question: converted,
    }
  ),
  withOktaSms(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_sms" expected to be of type "map"';
    {
      okta_sms: converted,
    }
  ),
  withOktaVerify(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_verify" expected to be of type "map"';
    {
      okta_verify: converted,
    }
  ),
  withOnpremMfa(value):: (
    local converted = value;
    assert std.isObject(converted) : '"onprem_mfa" expected to be of type "map"';
    {
      onprem_mfa: converted,
    }
  ),
  withPhoneNumber(value):: (
    local converted = value;
    assert std.isObject(converted) : '"phone_number" expected to be of type "map"';
    {
      phone_number: converted,
    }
  ),
  "#withPriority":: "Policy Priority, this attribute can be set to a valid priority. To avoid endless diff situation we error if an invalid priority is provided. API defaults it to the last (lowest) if not there.",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  withRsaToken(value):: (
    local converted = value;
    assert std.isObject(converted) : '"rsa_token" expected to be of type "map"';
    {
      rsa_token: converted,
    }
  ),
  withSecurityQuestion(value):: (
    local converted = value;
    assert std.isObject(converted) : '"security_question" expected to be of type "map"';
    {
      security_question: converted,
    }
  ),
  withSmartCardIdp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"smart_card_idp" expected to be of type "map"';
    {
      smart_card_idp: converted,
    }
  ),
  "#withStatus":: "Policy Status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withSymantecVip(value):: (
    local converted = value;
    assert std.isObject(converted) : '"symantec_vip" expected to be of type "map"';
    {
      symantec_vip: converted,
    }
  ),
  withWebauthn(value):: (
    local converted = value;
    assert std.isObject(converted) : '"webauthn" expected to be of type "map"';
    {
      webauthn: converted,
    }
  ),
  withYubikeyToken(value):: (
    local converted = value;
    assert std.isObject(converted) : '"yubikey_token" expected to be of type "map"';
    {
      yubikey_token: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
