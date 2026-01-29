{
  local block = self,

  new(terraformName, notificationType, roleType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_role_subscription",
          type:: "data",
          attributes:: ["id", "notification_type", "role_type", "status"],
        },
      },
    }
    + block.withNotificationType(notificationType)
    + block.withRoleType(roleType)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withNotificationType":: "Type of the notification",
  withNotificationType(value):: (
    assert std.isString(value) : '"notification_type" expected to be of type "string"';

    {
      notification_type: value,
    }
  ),

  "#withRoleType":: "Type of the role",
  withRoleType(value):: (
    assert std.isString(value) : '"role_type" expected to be of type "string"';

    {
      role_type: value,
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
