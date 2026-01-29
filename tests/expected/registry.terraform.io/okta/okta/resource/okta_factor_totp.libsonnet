{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_factor_totp",
          type:: "resource",
          attributes:: ["clock_drift_interval", "hmac_algorithm", "id", "name", "otp_length", "shared_secret_encoding", "time_step"],
        },
      },
    }
    + block.withName(name)
  ),

  "#withClockDriftInterval":: "Clock drift interval. This setting allows you to build in tolerance for any drift between the token's current time and the server's current time. Valid values: `3`, `5`, `10`. Default is `3`.",
  withClockDriftInterval(value):: (
    assert std.isNumber(value) : '"clock_drift_interval" expected to be of type "number"';

    {
      clock_drift_interval: value,
    }
  ),

  "#withHmacAlgorithm":: "HMAC Algorithm. Valid values: `HMacSHA1`, `HMacSHA256`, `HMacSHA512`. Default is `HMacSHA512`.",
  withHmacAlgorithm(value):: (
    assert std.isString(value) : '"hmac_algorithm" expected to be of type "string"';

    {
      hmac_algorithm: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The TOTP name.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withOtpLength":: "Length of the password. Default is `6`.",
  withOtpLength(value):: (
    assert std.isNumber(value) : '"otp_length" expected to be of type "number"';

    {
      otp_length: value,
    }
  ),

  "#withSharedSecretEncoding":: "Shared secret encoding. Valid values: `base32`, `base64`, `hexadecimal`. Default is `base32`.",
  withSharedSecretEncoding(value):: (
    assert std.isString(value) : '"shared_secret_encoding" expected to be of type "string"';

    {
      shared_secret_encoding: value,
    }
  ),

  "#withTimeStep":: "Time step in seconds. Valid values: `15`, `30`, `60`. Default is `15`.",
  withTimeStep(value):: (
    assert std.isNumber(value) : '"time_step" expected to be of type "number"';

    {
      time_step: value,
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
