{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_security_notification_emails",
          type:: "resource",
          attributes:: ["id", "report_suspicious_activity_enabled", "send_email_for_factor_enrollment_enabled", "send_email_for_factor_reset_enabled", "send_email_for_new_device_enabled", "send_email_for_password_changed_enabled"],
        },
      },
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withReportSuspiciousActivityEnabled":: "Notifies end users about suspicious or unrecognized activity from their account. Default is `true`.",
  withReportSuspiciousActivityEnabled(value):: (
    assert std.isBoolean(value) : '"report_suspicious_activity_enabled" expected to be of type "bool"';

    {
      report_suspicious_activity_enabled: value,
    }
  ),

  "#withSendEmailForFactorEnrollmentEnabled":: "Notifies end users of any activity on their account related to MFA factor enrollment. Default is `true`.",
  withSendEmailForFactorEnrollmentEnabled(value):: (
    assert std.isBoolean(value) : '"send_email_for_factor_enrollment_enabled" expected to be of type "bool"';

    {
      send_email_for_factor_enrollment_enabled: value,
    }
  ),

  "#withSendEmailForFactorResetEnabled":: "Notifies end users that one or more factors have been reset for their account. Default is `true`.",
  withSendEmailForFactorResetEnabled(value):: (
    assert std.isBoolean(value) : '"send_email_for_factor_reset_enabled" expected to be of type "bool"';

    {
      send_email_for_factor_reset_enabled: value,
    }
  ),

  "#withSendEmailForNewDeviceEnabled":: "Notifies end users about new sign-on activity. Default is `true`.",
  withSendEmailForNewDeviceEnabled(value):: (
    assert std.isBoolean(value) : '"send_email_for_new_device_enabled" expected to be of type "bool"';

    {
      send_email_for_new_device_enabled: value,
    }
  ),

  "#withSendEmailForPasswordChangedEnabled":: "Notifies end users that the password for their account has changed. Default is `true`.",
  withSendEmailForPasswordChangedEnabled(value):: (
    assert std.isBoolean(value) : '"send_email_for_password_changed_enabled" expected to be of type "bool"';

    {
      send_email_for_password_changed_enabled: value,
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
