{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_policy_password_default",
          type:: "resource",
          attributes:: ["call_recovery", "default_auth_provider", "default_included_group_id", "description", "email_recovery", "id", "name", "password_auto_unlock_minutes", "password_dictionary_lookup", "password_exclude_first_name", "password_exclude_last_name", "password_exclude_username", "password_expire_warn_days", "password_history_count", "password_lockout_notification_channels", "password_max_age_days", "password_max_lockout_attempts", "password_min_age_minutes", "password_min_length", "password_min_lowercase", "password_min_number", "password_min_symbol", "password_min_uppercase", "password_show_lockout_failures", "priority", "question_min_length", "question_recovery", "recovery_email_token", "skip_unlock", "sms_recovery", "status"],
        },
      },
    }
  ),

  "#withCallRecovery":: "Enable or disable voice call recovery: ACTIVE or INACTIVE. Default: `INACTIVE`",
  withCallRecovery(value):: (
    assert std.isString(value) : '"call_recovery" expected to be of type "string"';

    {
      call_recovery: value,
    }
  ),

  "#withEmailRecovery":: "Enable or disable email password recovery: ACTIVE or INACTIVE. Default: `ACTIVE`",
  withEmailRecovery(value):: (
    assert std.isString(value) : '"email_recovery" expected to be of type "string"';

    {
      email_recovery: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withPasswordAutoUnlockMinutes":: "Number of minutes before a locked account is unlocked: 0 = no limit. Default: `0`",
  withPasswordAutoUnlockMinutes(value):: (
    assert std.isNumber(value) : '"password_auto_unlock_minutes" expected to be of type "number"';

    {
      password_auto_unlock_minutes: value,
    }
  ),

  "#withPasswordDictionaryLookup":: "Check Passwords Against Common Password Dictionary. Default: `false`",
  withPasswordDictionaryLookup(value):: (
    assert std.isBoolean(value) : '"password_dictionary_lookup" expected to be of type "bool"';

    {
      password_dictionary_lookup: value,
    }
  ),

  "#withPasswordExcludeFirstName":: "User firstName attribute must be excluded from the password",
  withPasswordExcludeFirstName(value):: (
    assert std.isBoolean(value) : '"password_exclude_first_name" expected to be of type "bool"';

    {
      password_exclude_first_name: value,
    }
  ),

  "#withPasswordExcludeLastName":: "User lastName attribute must be excluded from the password",
  withPasswordExcludeLastName(value):: (
    assert std.isBoolean(value) : '"password_exclude_last_name" expected to be of type "bool"';

    {
      password_exclude_last_name: value,
    }
  ),

  "#withPasswordExcludeUsername":: "If the user name must be excluded from the password. Default: `true`",
  withPasswordExcludeUsername(value):: (
    assert std.isBoolean(value) : '"password_exclude_username" expected to be of type "bool"';

    {
      password_exclude_username: value,
    }
  ),

  "#withPasswordExpireWarnDays":: "Length in days a user will be warned before password expiry: 0 = no warning. Default: `0`",
  withPasswordExpireWarnDays(value):: (
    assert std.isNumber(value) : '"password_expire_warn_days" expected to be of type "number"';

    {
      password_expire_warn_days: value,
    }
  ),

  "#withPasswordHistoryCount":: "Number of distinct passwords that must be created before they can be reused: 0 = none. Default: `4`",
  withPasswordHistoryCount(value):: (
    assert std.isNumber(value) : '"password_history_count" expected to be of type "number"';

    {
      password_history_count: value,
    }
  ),

  "#withPasswordLockoutNotificationChannels":: "Notification channels to use to notify a user when their account has been locked.",
  withPasswordLockoutNotificationChannels(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"password_lockout_notification_channels" expected to be of type "set"';

    {
      password_lockout_notification_channels: converted,
    }
  ),

  "#withPasswordLockoutNotificationChannelsMixin":: "Notification channels to use to notify a user when their account has been locked.",
  withPasswordLockoutNotificationChannelsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"password_lockout_notification_channels" expected to be of type "set"';

    {
      password_lockout_notification_channels+: converted,
    }
  ),

  "#withPasswordMaxAgeDays":: "Length in days a password is valid before expiry: 0 = no limit. Default: `0`",
  withPasswordMaxAgeDays(value):: (
    assert std.isNumber(value) : '"password_max_age_days" expected to be of type "number"';

    {
      password_max_age_days: value,
    }
  ),

  "#withPasswordMaxLockoutAttempts":: "Number of unsuccessful login attempts allowed before lockout: 0 = no limit. Default: `10`",
  withPasswordMaxLockoutAttempts(value):: (
    assert std.isNumber(value) : '"password_max_lockout_attempts" expected to be of type "number"';

    {
      password_max_lockout_attempts: value,
    }
  ),

  "#withPasswordMinAgeMinutes":: "Minimum time interval in minutes between password changes: 0 = no limit. Default: `0`",
  withPasswordMinAgeMinutes(value):: (
    assert std.isNumber(value) : '"password_min_age_minutes" expected to be of type "number"';

    {
      password_min_age_minutes: value,
    }
  ),

  "#withPasswordMinLength":: "Minimum password length. Default is `8`.",
  withPasswordMinLength(value):: (
    assert std.isNumber(value) : '"password_min_length" expected to be of type "number"';

    {
      password_min_length: value,
    }
  ),

  "#withPasswordMinLowercase":: "If a password must contain at least one lower case letter: 0 = no, 1 = yes. Default = 1",
  withPasswordMinLowercase(value):: (
    assert std.isNumber(value) : '"password_min_lowercase" expected to be of type "number"';

    {
      password_min_lowercase: value,
    }
  ),

  "#withPasswordMinNumber":: "If a password must contain at least one number: 0 = no, 1 = yes. Default = `1`",
  withPasswordMinNumber(value):: (
    assert std.isNumber(value) : '"password_min_number" expected to be of type "number"';

    {
      password_min_number: value,
    }
  ),

  "#withPasswordMinSymbol":: "If a password must contain at least one symbol (!@#$%^&*): 0 = no, 1 = yes. Default = `0`",
  withPasswordMinSymbol(value):: (
    assert std.isNumber(value) : '"password_min_symbol" expected to be of type "number"';

    {
      password_min_symbol: value,
    }
  ),

  "#withPasswordMinUppercase":: "If a password must contain at least one upper case letter: 0 = no, 1 = yes. Default = 1",
  withPasswordMinUppercase(value):: (
    assert std.isNumber(value) : '"password_min_uppercase" expected to be of type "number"';

    {
      password_min_uppercase: value,
    }
  ),

  "#withPasswordShowLockoutFailures":: "If a user should be informed when their account is locked. Default: `false`",
  withPasswordShowLockoutFailures(value):: (
    assert std.isBoolean(value) : '"password_show_lockout_failures" expected to be of type "bool"';

    {
      password_show_lockout_failures: value,
    }
  ),

  "#withQuestionMinLength":: "Min length of the password recovery question answer. Default: `4`",
  withQuestionMinLength(value):: (
    assert std.isNumber(value) : '"question_min_length" expected to be of type "number"';

    {
      question_min_length: value,
    }
  ),

  "#withQuestionRecovery":: "Enable or disable security question password recovery: ACTIVE or INACTIVE. Default: `ACTIVE`",
  withQuestionRecovery(value):: (
    assert std.isString(value) : '"question_recovery" expected to be of type "string"';

    {
      question_recovery: value,
    }
  ),

  "#withRecoveryEmailToken":: "Lifetime in minutes of the recovery email token. Default: `60`",
  withRecoveryEmailToken(value):: (
    assert std.isNumber(value) : '"recovery_email_token" expected to be of type "number"';

    {
      recovery_email_token: value,
    }
  ),

  "#withSkipUnlock":: "When an Active Directory user is locked out of Okta, the Okta unlock operation should also attempt to unlock the user's Windows account. Default: `false`",
  withSkipUnlock(value):: (
    assert std.isBoolean(value) : '"skip_unlock" expected to be of type "bool"';

    {
      skip_unlock: value,
    }
  ),

  "#withSmsRecovery":: "Enable or disable SMS password recovery: ACTIVE or INACTIVE. Default: `INACTIVE`",
  withSmsRecovery(value):: (
    assert std.isString(value) : '"sms_recovery" expected to be of type "string"';

    {
      sms_recovery: value,
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
