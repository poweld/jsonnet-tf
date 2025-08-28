{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_device_assurance_chromeos",
          type:: "resource",
          attributes:: ["created_by", "created_date", "id", "last_update", "last_updated_by", "name", "platform", "tpsp_allow_screen_lock", "tpsp_browser_version", "tpsp_builtin_dns_client_enabled", "tpsp_chrome_remote_desktop_app_blocked", "tpsp_device_enrollment_domain", "tpsp_disk_encrypted", "tpsp_key_trust_level", "tpsp_os_firewall", "tpsp_os_version", "tpsp_password_proctection_warning_trigger", "tpsp_realtime_url_check_mode", "tpsp_safe_browsing_protection_level", "tpsp_screen_lock_secured", "tpsp_site_isolation_enabled"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
  ),
  "#withName":: "Name of the device assurance policy.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withTpspAllowScreenLock":: "Third party signal provider allow screen lock",
  withTpspAllowScreenLock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tpsp_allow_screen_lock" expected to be of type "bool"';
    {
      tpsp_allow_screen_lock: converted,
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
  "#withTpspBuiltinDnsClientEnabled":: "Third party signal provider builtin dns client enabled",
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
