{
  local block = self,
  new(terraformName, notificationType, roleType):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_role_subscription",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["id", "notification_type", "role_type", "status"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withNotificationType(notificationType)
    + block.withRoleType(roleType)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withNotificationType":: "Type of the notification. Valid values:  \t- 'CONNECTOR_AGENT' -  Disconnects and reconnects: On-prem provisioning, on-prem MFA agents, and RADIUS server agent. \t- 'USER_LOCKED_OUT' - User lockouts. \t- 'APP_IMPORT' - App user import status. \t- 'LDAP_AGENT' - Disconnects and reconnects: LDAP agent. \t- 'AD_AGENT' - Disconnects and reconnects: AD agent. \t- 'OKTA_ANNOUNCEMENT' - Okta release notes and announcements. \t- 'OKTA_UPDATE' - Scheduled system updates. \t- 'IWA_AGENT' - Disconnects and reconnects: IWA agent. \t- 'USER_DEPROVISION' - User deprovisions. \t- 'REPORT_SUSPICIOUS_ACTIVITY' - User reporting of suspicious activity. \t- 'RATELIMIT_NOTIFICATION' - Rate limit warning and violation. \t- 'AGENT_AUTO_UPDATE_NOTIFICATION' - Agent auto-update notifications: AD Agent.",
  withNotificationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_type" expected to be of type "string"';
    {
      notification_type: converted,
    }
  ),
  "#withRoleType":: "Type of the role. Valid values: \t'API_ADMIN', \t'APP_ADMIN', \t'CUSTOM', \t'GROUP_MEMBERSHIP_ADMIN', \t'HELP_DESK_ADMIN', \t'MOBILE_ADMIN', \t'ORG_ADMIN', \t'READ_ONLY_ADMIN', \t'REPORT_ADMIN', \t'SUPER_ADMIN', \t'USER_ADMIN' \t. See [API docs](https://developer.okta.com/docs/reference/api/admin-notifications/#role-types).",
  withRoleType(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_type" expected to be of type "string"';
    {
      role_type: converted,
    }
  ),
  "#withStatus":: "Subscription status. Valid values: `subscribed`, `unsubscribed`.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
