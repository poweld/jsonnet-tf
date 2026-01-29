{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_device_assurance_windows",
          type:: "resource",
          attributes:: ["created_by", "created_date", "disk_encryption_type", "id", "last_update", "last_updated_by", "name", "os_version", "platform", "screenlock_type", "secure_hardware_present", "third_party_signal_providers", "tpsp_browser_version", "tpsp_builtin_dns_client_enabled", "tpsp_chrome_remote_desktop_app_blocked", "tpsp_crowd_strike_agent_id", "tpsp_crowd_strike_customer_id", "tpsp_device_enrollment_domain", "tpsp_disk_encrypted", "tpsp_key_trust_level", "tpsp_os_firewall", "tpsp_os_version", "tpsp_password_proctection_warning_trigger", "tpsp_realtime_url_check_mode", "tpsp_safe_browsing_protection_level", "tpsp_screen_lock_secured", "tpsp_secure_boot_enabled", "tpsp_site_isolation_enabled", "tpsp_third_party_blocking_enabled", "tpsp_windows_machine_domain", "tpsp_windows_user_domain"],
        },
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
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withOsVersion":: "Minimum os version of the device in the device assurance policy.",
  withOsVersion(value):: (
    assert std.isString(value) : '"os_version" expected to be of type "string"';

    {
      os_version: value,
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
    assert std.isBoolean(value) : '"secure_hardware_present" expected to be of type "bool"';

    {
      secure_hardware_present: value,
    }
  ),

  "#withThirdPartySignalProviders":: "Check to include third party signal provider",
  withThirdPartySignalProviders(value):: (
    assert std.isBoolean(value) : '"third_party_signal_providers" expected to be of type "bool"';

    {
      third_party_signal_providers: value,
    }
  ),

  "#withTpspBrowserVersion":: "Third party signal provider minimum browser version",
  withTpspBrowserVersion(value):: (
    assert std.isString(value) : '"tpsp_browser_version" expected to be of type "string"';

    {
      tpsp_browser_version: value,
    }
  ),

  "#withTpspBuiltinDnsClientEnabled":: "Third party signal provider builtin dns client enable",
  withTpspBuiltinDnsClientEnabled(value):: (
    assert std.isBoolean(value) : '"tpsp_builtin_dns_client_enabled" expected to be of type "bool"';

    {
      tpsp_builtin_dns_client_enabled: value,
    }
  ),

  "#withTpspChromeRemoteDesktopAppBlocked":: "Third party signal provider chrome remote desktop app blocked",
  withTpspChromeRemoteDesktopAppBlocked(value):: (
    assert std.isBoolean(value) : '"tpsp_chrome_remote_desktop_app_blocked" expected to be of type "bool"';

    {
      tpsp_chrome_remote_desktop_app_blocked: value,
    }
  ),

  "#withTpspCrowdStrikeAgentId":: "Third party signal provider crowdstrike agent id",
  withTpspCrowdStrikeAgentId(value):: (
    assert std.isString(value) : '"tpsp_crowd_strike_agent_id" expected to be of type "string"';

    {
      tpsp_crowd_strike_agent_id: value,
    }
  ),

  "#withTpspCrowdStrikeCustomerId":: "Third party signal provider crowdstrike user id",
  withTpspCrowdStrikeCustomerId(value):: (
    assert std.isString(value) : '"tpsp_crowd_strike_customer_id" expected to be of type "string"';

    {
      tpsp_crowd_strike_customer_id: value,
    }
  ),

  "#withTpspDeviceEnrollmentDomain":: "Third party signal provider device enrollment domain",
  withTpspDeviceEnrollmentDomain(value):: (
    assert std.isString(value) : '"tpsp_device_enrollment_domain" expected to be of type "string"';

    {
      tpsp_device_enrollment_domain: value,
    }
  ),

  "#withTpspDiskEncrypted":: "Third party signal provider disk encrypted",
  withTpspDiskEncrypted(value):: (
    assert std.isBoolean(value) : '"tpsp_disk_encrypted" expected to be of type "bool"';

    {
      tpsp_disk_encrypted: value,
    }
  ),

  "#withTpspKeyTrustLevel":: "Third party signal provider key trust level",
  withTpspKeyTrustLevel(value):: (
    assert std.isString(value) : '"tpsp_key_trust_level" expected to be of type "string"';

    {
      tpsp_key_trust_level: value,
    }
  ),

  "#withTpspOsFirewall":: "Third party signal provider os firewall",
  withTpspOsFirewall(value):: (
    assert std.isBoolean(value) : '"tpsp_os_firewall" expected to be of type "bool"';

    {
      tpsp_os_firewall: value,
    }
  ),

  "#withTpspOsVersion":: "Third party signal provider minimum os version",
  withTpspOsVersion(value):: (
    assert std.isString(value) : '"tpsp_os_version" expected to be of type "string"';

    {
      tpsp_os_version: value,
    }
  ),

  "#withTpspPasswordProctectionWarningTrigger":: "Third party signal provider password protection warning trigger",
  withTpspPasswordProctectionWarningTrigger(value):: (
    assert std.isString(value) : '"tpsp_password_proctection_warning_trigger" expected to be of type "string"';

    {
      tpsp_password_proctection_warning_trigger: value,
    }
  ),

  "#withTpspRealtimeUrlCheckMode":: "Third party signal provider realtime url check mode",
  withTpspRealtimeUrlCheckMode(value):: (
    assert std.isBoolean(value) : '"tpsp_realtime_url_check_mode" expected to be of type "bool"';

    {
      tpsp_realtime_url_check_mode: value,
    }
  ),

  "#withTpspSafeBrowsingProtectionLevel":: "Third party signal provider safe browsing protection level",
  withTpspSafeBrowsingProtectionLevel(value):: (
    assert std.isString(value) : '"tpsp_safe_browsing_protection_level" expected to be of type "string"';

    {
      tpsp_safe_browsing_protection_level: value,
    }
  ),

  "#withTpspScreenLockSecured":: "Third party signal provider screen lock secure",
  withTpspScreenLockSecured(value):: (
    assert std.isBoolean(value) : '"tpsp_screen_lock_secured" expected to be of type "bool"';

    {
      tpsp_screen_lock_secured: value,
    }
  ),

  "#withTpspSecureBootEnabled":: "Third party signal provider secure boot enabled",
  withTpspSecureBootEnabled(value):: (
    assert std.isBoolean(value) : '"tpsp_secure_boot_enabled" expected to be of type "bool"';

    {
      tpsp_secure_boot_enabled: value,
    }
  ),

  "#withTpspSiteIsolationEnabled":: "Third party signal provider site isolation enabled",
  withTpspSiteIsolationEnabled(value):: (
    assert std.isBoolean(value) : '"tpsp_site_isolation_enabled" expected to be of type "bool"';

    {
      tpsp_site_isolation_enabled: value,
    }
  ),

  "#withTpspThirdPartyBlockingEnabled":: "Third party signal provider third party blocking enabled",
  withTpspThirdPartyBlockingEnabled(value):: (
    assert std.isBoolean(value) : '"tpsp_third_party_blocking_enabled" expected to be of type "bool"';

    {
      tpsp_third_party_blocking_enabled: value,
    }
  ),

  "#withTpspWindowsMachineDomain":: "Third party signal provider windows machine domain",
  withTpspWindowsMachineDomain(value):: (
    assert std.isString(value) : '"tpsp_windows_machine_domain" expected to be of type "string"';

    {
      tpsp_windows_machine_domain: value,
    }
  ),

  "#withTpspWindowsUserDomain":: "Third party signal provider windows user domain",
  withTpspWindowsUserDomain(value):: (
    assert std.isString(value) : '"tpsp_windows_user_domain" expected to be of type "string"';

    {
      tpsp_windows_user_domain: value,
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
