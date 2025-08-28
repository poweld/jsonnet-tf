{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_device_assurance_ios",
          type:: "resource",
          attributes:: ["created_by", "created_date", "id", "jailbreak", "last_update", "last_updated_by", "name", "os_version", "platform", "screenlock_type"],
        },
      },
    }
    + block.withName(name)
  ),
  "#withJailbreak":: "Is the device jailbroken in the device assurance policy.",
  withJailbreak(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"jailbreak" expected to be of type "bool"';
    {
      jailbreak: converted,
    }
  ),
  "#withName":: "Name of the device assurance policy.",
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
