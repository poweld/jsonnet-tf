{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_device_assurance_policy",
          type:: "data",
          attributes:: ["disk_encryption_type", "id", "jailbreak", "name", "os_version", "os_version_constraint", "platform", "screenlock_type", "secure_hardware_present", "third_party_signal_provider"],
        },
      },
    }
  ),

  "#withId":: "ID of the user type to retrieve, conflicts with `name`.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Name of user type to retrieve, conflicts with `id`.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withSecureHardwarePresent":: "Indicates if the device contains a secure hardware functionality",
  withSecureHardwarePresent(value):: (
    assert std.isBoolean(value) : '"secure_hardware_present" expected to be of type "bool"';

    {
      secure_hardware_present: value,
    }
  ),

  "#withThirdPartySignalProvider":: "Indicates if the device contains a secure hardware functionality",
  withThirdPartySignalProvider(value):: (
    assert std.isObject(value) : '"third_party_signal_provider" expected to be of type "object"';

    {
      third_party_signal_provider: value,
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
