{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_device_assurance_policy",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "disk_encryption_type", "id", "jailbreak", "os_version", "os_version_constraint", "platform", "screenlock_type", "secure_hardware_present", "third_party_signal_provider"],
      },
    }
    + block.withName(name)
  ),
  "#withId":: "ID of the user type to retrieve, conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of user type to retrieve, conflicts with `id`.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withSecureHardwarePresent":: "Indicates if the device contains a secure hardware functionality",
  withSecureHardwarePresent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"secure_hardware_present" expected to be of type "bool"';
    {
      secure_hardware_present: converted,
    }
  ),
  "#withThirdPartySignalProvider":: "Indicates if the device contains a secure hardware functionality",
  withThirdPartySignalProvider(value):: (
    local converted = value;
    assert std.isObject(converted) : '"third_party_signal_provider" expected to be of type "object"';
    {
      third_party_signal_provider: converted,
    }
  ),
}
