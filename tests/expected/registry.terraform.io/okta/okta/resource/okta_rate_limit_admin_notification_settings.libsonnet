{
  local block = self,

  new(terraformName, notificationsEnabled):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_rate_limit_admin_notification_settings",
          type:: "resource",
          attributes:: ["id", "notifications_enabled"],
        },
      },
    }
    + block.withNotificationsEnabled(notificationsEnabled)
  ),

  "#withNotificationsEnabled":: "Enables or disables admin notifications for rate limiting events.",
  withNotificationsEnabled(value):: (
    assert std.isBoolean(value) : '"notifications_enabled" expected to be of type "bool"';

    {
      notifications_enabled: value,
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
