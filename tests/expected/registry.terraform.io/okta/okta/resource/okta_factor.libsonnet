{
  local block = self,
  new(name, provider_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_factor",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["active", "id", "provider_id"],
      },
    }
    + block.withProviderId(provider_id)
  ),
  "#withActive":: "Whether to activate the provider, by default, it is set to `true`.",
  withActive(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
    {
      active: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withProviderId":: "The MFA provider name. Allowed values are `duo`, `fido_u2f`, `fido_webauthn`, `google_otp`, `okta_call`, `okta_otp`, `okta_password`, `okta_push`, `okta_question`, `okta_sms`, `okta_email`, `rsa_token`, `symantec_vip`, `yubikey_token`, or `hotp`.",
  withProviderId(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_id" expected to be of type "string"';
    {
      provider_id: converted,
    }
  ),
}
