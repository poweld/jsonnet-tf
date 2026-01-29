{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_mfa_default",
          type:: "resource",
          attributes:: ["default_included_group_id", "description", "duo", "external_idp", "external_idps", "fido_u2f", "fido_webauthn", "google_otp", "hotp", "id", "is_oie", "name", "okta_call", "okta_email", "okta_otp", "okta_password", "okta_push", "okta_question", "okta_sms", "okta_verify", "onprem_mfa", "phone_number", "priority", "rsa_token", "security_question", "smart_card_idp", "status", "symantec_vip", "webauthn", "yubikey_token"],
        },
      },
    }
  ),

  withDuo(value):: (
    assert std.isObject(value) : '"duo" expected to be of type "map"';

    {
      duo: value,
    }
  ),

  withExternalIdp(value):: (
    assert std.isObject(value) : '"external_idp" expected to be of type "map"';

    {
      external_idp: value,
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
    assert std.isObject(value) : '"fido_u2f" expected to be of type "map"';

    {
      fido_u2f: value,
    }
  ),

  withFidoWebauthn(value):: (
    assert std.isObject(value) : '"fido_webauthn" expected to be of type "map"';

    {
      fido_webauthn: value,
    }
  ),

  withGoogleOtp(value):: (
    assert std.isObject(value) : '"google_otp" expected to be of type "map"';

    {
      google_otp: value,
    }
  ),

  withHotp(value):: (
    assert std.isObject(value) : '"hotp" expected to be of type "map"';

    {
      hotp: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIsOie":: "Is the policy using Okta Identity Engine (OIE) with authenticators instead of factors?",
  withIsOie(value):: (
    assert std.isBoolean(value) : '"is_oie" expected to be of type "bool"';

    {
      is_oie: value,
    }
  ),

  withOktaCall(value):: (
    assert std.isObject(value) : '"okta_call" expected to be of type "map"';

    {
      okta_call: value,
    }
  ),

  withOktaEmail(value):: (
    assert std.isObject(value) : '"okta_email" expected to be of type "map"';

    {
      okta_email: value,
    }
  ),

  withOktaOtp(value):: (
    assert std.isObject(value) : '"okta_otp" expected to be of type "map"';

    {
      okta_otp: value,
    }
  ),

  withOktaPassword(value):: (
    assert std.isObject(value) : '"okta_password" expected to be of type "map"';

    {
      okta_password: value,
    }
  ),

  withOktaPush(value):: (
    assert std.isObject(value) : '"okta_push" expected to be of type "map"';

    {
      okta_push: value,
    }
  ),

  withOktaQuestion(value):: (
    assert std.isObject(value) : '"okta_question" expected to be of type "map"';

    {
      okta_question: value,
    }
  ),

  withOktaSms(value):: (
    assert std.isObject(value) : '"okta_sms" expected to be of type "map"';

    {
      okta_sms: value,
    }
  ),

  withOktaVerify(value):: (
    assert std.isObject(value) : '"okta_verify" expected to be of type "map"';

    {
      okta_verify: value,
    }
  ),

  withOnpremMfa(value):: (
    assert std.isObject(value) : '"onprem_mfa" expected to be of type "map"';

    {
      onprem_mfa: value,
    }
  ),

  withPhoneNumber(value):: (
    assert std.isObject(value) : '"phone_number" expected to be of type "map"';

    {
      phone_number: value,
    }
  ),

  withRsaToken(value):: (
    assert std.isObject(value) : '"rsa_token" expected to be of type "map"';

    {
      rsa_token: value,
    }
  ),

  withSecurityQuestion(value):: (
    assert std.isObject(value) : '"security_question" expected to be of type "map"';

    {
      security_question: value,
    }
  ),

  withSmartCardIdp(value):: (
    assert std.isObject(value) : '"smart_card_idp" expected to be of type "map"';

    {
      smart_card_idp: value,
    }
  ),

  withSymantecVip(value):: (
    assert std.isObject(value) : '"symantec_vip" expected to be of type "map"';

    {
      symantec_vip: value,
    }
  ),

  withWebauthn(value):: (
    assert std.isObject(value) : '"webauthn" expected to be of type "map"';

    {
      webauthn: value,
    }
  ),

  withYubikeyToken(value):: (
    assert std.isObject(value) : '"yubikey_token" expected to be of type "map"';

    {
      yubikey_token: value,
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
