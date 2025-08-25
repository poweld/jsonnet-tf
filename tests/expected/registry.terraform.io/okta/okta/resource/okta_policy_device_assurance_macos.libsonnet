{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_policy_device_assurance_macos",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "created_by", "created_date", "disk_encryption_type", "id", "last_update", "last_updated_by", "os_version", "platform", "screenlock_type", "secure_hardware_present", "third_party_signal_providers", "tpsp_browser_version", "tpsp_builtin_dns_client_enabled", "tpsp_chrome_remote_desktop_app_blocked", "tpsp_device_enrollment_domain", "tpsp_disk_encrypted", "tpsp_key_trust_level", "tpsp_os_firewall", "tpsp_os_version", "tpsp_password_proctection_warning_trigger", "tpsp_realtime_url_check_mode", "tpsp_safe_browsing_protection_level", "tpsp_screen_lock_secured", "tpsp_site_isolation_enabled"],
      },
    }
    + block.withName(name)
  ),
  "#withDiskEncryptionType":: "List of disk encryption type, can be `ALL_INTERNAL_VOLUMES`",
  withDiskEncryptionType(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type: converted,
    }
  ),
  "#withDiskEncryptionTypeMixin":: "List of disk encryption type, can be `ALL_INTERNAL_VOLUMES`",
  withDiskEncryptionTypeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disk_encryption_type" expected to be of type "set"';
    {
      disk_encryption_type+: converted,
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
  "#withSecureHardwarePresent":: "Is the device secure with hardware in the device assurance policy.",
  withSecureHardwarePresent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"secure_hardware_present" expected to be of type "bool"';
    {
      secure_hardware_present: converted,
    }
  ),
  "#withThirdPartySignalProviders":: "Check to include third party signal provider",
  withThirdPartySignalProviders(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"third_party_signal_providers" expected to be of type "bool"';
    {
      third_party_signal_providers: converted,
    }
  ),
  "#withTpspBrowserVersion":: "Third party signal provider minimum browser version",
  withTpspBrowserVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_browser_version" expected to be of type "string"';
    {
      tpsp_browser_version: converted,
    }
  ),
  "#withTpspBuiltinDnsClientEnabled":: "Third party signal provider builtin dns client enable",
  withTpspBuiltinDnsClientEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_builtin_dns_client_enabled" expected to be of type "bool"';
    {
      tpsp_builtin_dns_client_enabled: converted,
    }
  ),
  "#withTpspChromeRemoteDesktopAppBlocked":: "Third party signal provider chrome remote desktop app blocked",
  withTpspChromeRemoteDesktopAppBlocked(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_chrome_remote_desktop_app_blocked" expected to be of type "bool"';
    {
      tpsp_chrome_remote_desktop_app_blocked: converted,
    }
  ),
  "#withTpspDeviceEnrollmentDomain":: "Third party signal provider device enrollment domain",
  withTpspDeviceEnrollmentDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_device_enrollment_domain" expected to be of type "string"';
    {
      tpsp_device_enrollment_domain: converted,
    }
  ),
  "#withTpspDiskEncrypted":: "Third party signal provider disk encrypted",
  withTpspDiskEncrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_disk_encrypted" expected to be of type "bool"';
    {
      tpsp_disk_encrypted: converted,
    }
  ),
  "#withTpspKeyTrustLevel":: "Third party signal provider key trust level",
  withTpspKeyTrustLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_key_trust_level" expected to be of type "string"';
    {
      tpsp_key_trust_level: converted,
    }
  ),
  "#withTpspOsFirewall":: "Third party signal provider os firewall",
  withTpspOsFirewall(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_os_firewall" expected to be of type "bool"';
    {
      tpsp_os_firewall: converted,
    }
  ),
  "#withTpspOsVersion":: "Third party signal provider minimum os version",
  withTpspOsVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_os_version" expected to be of type "string"';
    {
      tpsp_os_version: converted,
    }
  ),
  "#withTpspPasswordProctectionWarningTrigger":: "Third party signal provider password protection warning trigger",
  withTpspPasswordProctectionWarningTrigger(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_password_proctection_warning_trigger" expected to be of type "string"';
    {
      tpsp_password_proctection_warning_trigger: converted,
    }
  ),
  "#withTpspRealtimeUrlCheckMode":: "Third party signal provider realtime url check mode",
  withTpspRealtimeUrlCheckMode(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_realtime_url_check_mode" expected to be of type "bool"';
    {
      tpsp_realtime_url_check_mode: converted,
    }
  ),
  "#withTpspSafeBrowsingProtectionLevel":: "Third party signal provider safe browsing protection level",
  withTpspSafeBrowsingProtectionLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpsp_safe_browsing_protection_level" expected to be of type "string"';
    {
      tpsp_safe_browsing_protection_level: converted,
    }
  ),
  "#withTpspScreenLockSecured":: "Third party signal provider screen lock secure",
  withTpspScreenLockSecured(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_screen_lock_secured" expected to be of type "bool"';
    {
      tpsp_screen_lock_secured: converted,
    }
  ),
  "#withTpspSiteIsolationEnabled":: "Third party signal provider site isolation enabled",
  withTpspSiteIsolationEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_site_isolation_enabled" expected to be of type "bool"';
    {
      tpsp_site_isolation_enabled: converted,
    }
  ),
}
