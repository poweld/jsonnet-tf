{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_factor_totp",
        type:: "resource",
        attributes:: ["clock_drift_interval", "hmac_algorithm", "id", "name", "otp_length", "shared_secret_encoding", "time_step"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
  ),
  "#withClockDriftInterval":: "Clock drift interval. This setting allows you to build in tolerance for any drift between the token's current time and the server's current time. Valid values: `3`, `5`, `10`. Default is `3`.",
  withClockDriftInterval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"clock_drift_interval" expected to be of type "number"';
    {
      clock_drift_interval: converted,
    }
  ),
  "#withHmacAlgorithm":: "HMAC Algorithm. Valid values: `HMacSHA1`, `HMacSHA256`, `HMacSHA512`. Default is `HMacSHA512`.",
  withHmacAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"hmac_algorithm" expected to be of type "string"';
    {
      hmac_algorithm: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The TOTP name.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withOtpLength":: "Length of the password. Default is `6`.",
  withOtpLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"otp_length" expected to be of type "number"';
    {
      otp_length: converted,
    }
  ),
  "#withSharedSecretEncoding":: "Shared secret encoding. Valid values: `base32`, `base64`, `hexadecimal`. Default is `base32`.",
  withSharedSecretEncoding(value):: (
    local converted = value;
    assert std.isString(converted) : '"shared_secret_encoding" expected to be of type "string"';
    {
      shared_secret_encoding: converted,
    }
  ),
  "#withTimeStep":: "Time step in seconds. Valid values: `15`, `30`, `60`. Default is `15`.",
  withTimeStep(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"time_step" expected to be of type "number"';
    {
      time_step: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
