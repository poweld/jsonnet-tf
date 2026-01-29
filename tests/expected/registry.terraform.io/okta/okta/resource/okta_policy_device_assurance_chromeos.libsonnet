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
    + block.withName(name)
  ),

  "#withName":: "Name of the device assurance policy.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withTpspAllowScreenLock":: "Third party signal provider allow screen lock",
  withTpspAllowScreenLock(value):: (
    assert std.isBoolean(value) : '"tpsp_allow_screen_lock" expected to be of type "bool"';

    {
      tpsp_allow_screen_lock: value,
    }
  ),

  "#withTpspBrowserVersion":: "Third party signal provider minimum browser version",
  withTpspBrowserVersion(value):: (
    assert std.isString(value) : '"tpsp_browser_version" expected to be of type "string"';

    {
      tpsp_browser_version: value,
    }
  ),

  "#withTpspBuiltinDnsClientEnabled":: "Third party signal provider builtin dns client enabled",
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

  "#withTpspSiteIsolationEnabled":: "Third party signal provider site isolation enabled",
  withTpspSiteIsolationEnabled(value):: (
    assert std.isBoolean(value) : '"tpsp_site_isolation_enabled" expected to be of type "bool"';

    {
      tpsp_site_isolation_enabled: value,
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
