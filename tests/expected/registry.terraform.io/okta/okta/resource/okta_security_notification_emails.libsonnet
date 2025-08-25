{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_security_notification_emails",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["id", "report_suspicious_activity_enabled", "send_email_for_factor_enrollment_enabled", "send_email_for_factor_reset_enabled", "send_email_for_new_device_enabled", "send_email_for_password_changed_enabled"],
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withReportSuspiciousActivityEnabled":: "Notifies end users about suspicious or unrecognized activity from their account. Default is `true`.",
  withReportSuspiciousActivityEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"report_suspicious_activity_enabled" expected to be of type "bool"';
    {
      report_suspicious_activity_enabled: converted,
    }
  ),
  "#withSendEmailForFactorEnrollmentEnabled":: "Notifies end users of any activity on their account related to MFA factor enrollment. Default is `true`.",
  withSendEmailForFactorEnrollmentEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_for_factor_enrollment_enabled" expected to be of type "bool"';
    {
      send_email_for_factor_enrollment_enabled: converted,
    }
  ),
  "#withSendEmailForFactorResetEnabled":: "Notifies end users that one or more factors have been reset for their account. Default is `true`.",
  withSendEmailForFactorResetEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_for_factor_reset_enabled" expected to be of type "bool"';
    {
      send_email_for_factor_reset_enabled: converted,
    }
  ),
  "#withSendEmailForNewDeviceEnabled":: "Notifies end users about new sign-on activity. Default is `true`.",
  withSendEmailForNewDeviceEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_for_new_device_enabled" expected to be of type "bool"';
    {
      send_email_for_new_device_enabled: converted,
    }
  ),
  "#withSendEmailForPasswordChangedEnabled":: "Notifies end users that the password for their account has changed. Default is `true`.",
  withSendEmailForPasswordChangedEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"send_email_for_password_changed_enabled" expected to be of type "bool"';
    {
      send_email_for_password_changed_enabled: converted,
    }
  ),
}
