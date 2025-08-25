{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_policy_password",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "auth_provider", "call_recovery", "description", "email_recovery", "groups_included", "id", "password_auto_unlock_minutes", "password_dictionary_lookup", "password_exclude_first_name", "password_exclude_last_name", "password_exclude_username", "password_expire_warn_days", "password_history_count", "password_lockout_notification_channels", "password_max_age_days", "password_max_lockout_attempts", "password_min_age_minutes", "password_min_length", "password_min_lowercase", "password_min_number", "password_min_symbol", "password_min_uppercase", "password_show_lockout_failures", "priority", "question_min_length", "question_recovery", "recovery_email_token", "skip_unlock", "sms_recovery", "status"],
      },
    }
    + block.withName(name)
  ),
  "#withAuthProvider":: "Authentication Provider: `OKTA`, `ACTIVE_DIRECTORY` or `LDAP`. Default: `OKTA`",
  withAuthProvider(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_provider" expected to be of type "string"';
    {
      auth_provider: converted,
    }
  ),
  "#withCallRecovery":: "Enable or disable voice call recovery: `ACTIVE` or `INACTIVE`. Default: `INACTIVE`",
  withCallRecovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"call_recovery" expected to be of type "string"';
    {
      call_recovery: converted,
    }
  ),
  "#withDescription":: "Policy Description",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withEmailRecovery":: "Enable or disable email password recovery: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
  withEmailRecovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_recovery" expected to be of type "string"';
    {
      email_recovery: converted,
    }
  ),
  "#withGroupsIncluded":: "List of Group IDs to Include",
  withGroupsIncluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included: converted,
    }
  ),
  "#withGroupsIncludedMixin":: "List of Group IDs to Include",
  withGroupsIncludedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Policy Name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPasswordAutoUnlockMinutes":: "Number of minutes before a locked account is unlocked: 0 = no limit. Default: `0`",
  withPasswordAutoUnlockMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_auto_unlock_minutes" expected to be of type "number"';
    {
      password_auto_unlock_minutes: converted,
    }
  ),
  "#withPasswordDictionaryLookup":: "Check Passwords Against Common Password Dictionary. Default: `false`",
  withPasswordDictionaryLookup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_dictionary_lookup" expected to be of type "bool"';
    {
      password_dictionary_lookup: converted,
    }
  ),
  "#withPasswordExcludeFirstName":: "User firstName attribute must be excluded from the password",
  withPasswordExcludeFirstName(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_exclude_first_name" expected to be of type "bool"';
    {
      password_exclude_first_name: converted,
    }
  ),
  "#withPasswordExcludeLastName":: "User lastName attribute must be excluded from the password",
  withPasswordExcludeLastName(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_exclude_last_name" expected to be of type "bool"';
    {
      password_exclude_last_name: converted,
    }
  ),
  "#withPasswordExcludeUsername":: "If the user name must be excluded from the password. Default: `true`",
  withPasswordExcludeUsername(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_exclude_username" expected to be of type "bool"';
    {
      password_exclude_username: converted,
    }
  ),
  "#withPasswordExpireWarnDays":: "Length in days a user will be warned before password expiry: 0 = no warning. Default: `0`",
  withPasswordExpireWarnDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_expire_warn_days" expected to be of type "number"';
    {
      password_expire_warn_days: converted,
    }
  ),
  "#withPasswordHistoryCount":: "Number of distinct passwords that must be created before they can be reused: 0 = none. Default: `0`",
  withPasswordHistoryCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_history_count" expected to be of type "number"';
    {
      password_history_count: converted,
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
    local converted = value;
    assert std.isNumber(converted) : '"password_max_age_days" expected to be of type "number"';
    {
      password_max_age_days: converted,
    }
  ),
  "#withPasswordMaxLockoutAttempts":: "Number of unsuccessful login attempts allowed before lockout: 0 = no limit. Default: `10`",
  withPasswordMaxLockoutAttempts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_max_lockout_attempts" expected to be of type "number"';
    {
      password_max_lockout_attempts: converted,
    }
  ),
  "#withPasswordMinAgeMinutes":: "Minimum time interval in minutes between password changes: 0 = no limit. Default: `0`",
  withPasswordMinAgeMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_age_minutes" expected to be of type "number"';
    {
      password_min_age_minutes: converted,
    }
  ),
  "#withPasswordMinLength":: "Minimum password length. Default: `8`",
  withPasswordMinLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_length" expected to be of type "number"';
    {
      password_min_length: converted,
    }
  ),
  "#withPasswordMinLowercase":: "If a password must contain at least one lower case letter: 0 = no, 1 = yes. Default: `1`",
  withPasswordMinLowercase(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_lowercase" expected to be of type "number"';
    {
      password_min_lowercase: converted,
    }
  ),
  "#withPasswordMinNumber":: "If a password must contain at least one number: 0 = no, 1 = yes. Default: `1`",
  withPasswordMinNumber(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_number" expected to be of type "number"';
    {
      password_min_number: converted,
    }
  ),
  "#withPasswordMinSymbol":: "If a password must contain at least one symbol (!@#$%^&*): 0 = no, 1 = yes. Default: `0`",
  withPasswordMinSymbol(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_symbol" expected to be of type "number"';
    {
      password_min_symbol: converted,
    }
  ),
  "#withPasswordMinUppercase":: "If a password must contain at least one upper case letter: 0 = no, 1 = yes. Default: `1`",
  withPasswordMinUppercase(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_min_uppercase" expected to be of type "number"';
    {
      password_min_uppercase: converted,
    }
  ),
  "#withPasswordShowLockoutFailures":: "If a user should be informed when their account is locked. Default: `false`",
  withPasswordShowLockoutFailures(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_show_lockout_failures" expected to be of type "bool"';
    {
      password_show_lockout_failures: converted,
    }
  ),
  "#withPriority":: "Policy Priority, this attribute can be set to a valid priority. To avoid endless diff situation we error if an invalid priority is provided. API defaults it to the last (lowest) if not there.",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  "#withQuestionMinLength":: "Min length of the password recovery question answer. Default: `4`",
  withQuestionMinLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"question_min_length" expected to be of type "number"';
    {
      question_min_length: converted,
    }
  ),
  "#withQuestionRecovery":: "Enable or disable security question password recovery: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
  withQuestionRecovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"question_recovery" expected to be of type "string"';
    {
      question_recovery: converted,
    }
  ),
  "#withRecoveryEmailToken":: "Lifetime in minutes of the recovery email token. Default: `60`",
  withRecoveryEmailToken(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"recovery_email_token" expected to be of type "number"';
    {
      recovery_email_token: converted,
    }
  ),
  "#withSkipUnlock":: "When an Active Directory user is locked out of Okta, the Okta unlock operation should also attempt to unlock the user's Windows account. Default: `false`",
  withSkipUnlock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_unlock" expected to be of type "bool"';
    {
      skip_unlock: converted,
    }
  ),
  "#withSmsRecovery":: "Enable or disable SMS password recovery: `ACTIVE` or `INACTIVE`. Default: `INACTIVE`",
  withSmsRecovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"sms_recovery" expected to be of type "string"';
    {
      sms_recovery: converted,
    }
  ),
  "#withStatus":: "Policy Status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
