{
  local block = self,

  new(terraformName, providerId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_factor",
          type:: "resource",
          attributes:: ["active", "id", "provider_id"],
        },
      },
    }
    + block.withProviderId(providerId)
  ),

  "#withActive":: "Whether to activate the provider, by default, it is set to `true`.",
  withActive(value):: (
    assert std.isBoolean(value) : '"active" expected to be of type "bool"';

    {
      active: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withProviderId":: "The MFA provider name. Allowed values are `duo`, `fido_u2f`, `fido_webauthn`, `google_otp`, `okta_call`, `okta_otp`, `okta_password`, `okta_push`, `okta_question`, `okta_sms`, `okta_email`, `rsa_token`, `symantec_vip`, `yubikey_token`, or `hotp`.",
  withProviderId(value):: (
    assert std.isString(value) : '"provider_id" expected to be of type "string"';

    {
      provider_id: value,
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
