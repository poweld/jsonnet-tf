{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_device_assurance_android",
          type:: "resource",
          attributes:: ["created_by", "created_date", "disk_encryption_type", "id", "jailbreak", "last_update", "last_updated_by", "name", "os_version", "platform", "screenlock_type", "secure_hardware_present"],
        },
      },
    }
    + block.withName(name)
  ),
  "#withDiskEncryptionType":: "List of disk encryption type, can be `FULL`, `USER`",
  withDiskEncryptionType(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type: converted,
    }
  ),
  "#withDiskEncryptionTypeMixin":: "List of disk encryption type, can be `FULL`, `USER`",
  withDiskEncryptionTypeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type+: converted,
    }
  ),
  "#withJailbreak":: "Is the device jailbroken in the device assurance policy.",
  withJailbreak(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"jailbreak" expected to be of type "bool"';
    {
      jailbreak: converted,
    }
  ),
  "#withName":: "Policy device assurance name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withOsVersion":: "Minimum os version of the device in the device assurance policy.",
  withOsVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"os_version" expected to be of type "string"';
    {
      os_version: converted,
    }
  ),
  "#withScreenlockType":: "List of screenlock type, can be `BIOMETRIC` or `BIOMETRIC, PASSCODE`",
  withScreenlockType(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"screenlock_type" expected to be of type "set"';
    {
      screenlock_type: converted,
    }
  ),
  "#withScreenlockTypeMixin":: "List of screenlock type, can be `BIOMETRIC` or `BIOMETRIC, PASSCODE`",
  withScreenlockTypeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"screenlock_type" expected to be of type "set"';
    {
      screenlock_type+: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
