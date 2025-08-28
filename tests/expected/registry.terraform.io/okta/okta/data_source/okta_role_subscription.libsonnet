{
  local block = self,
  new(terraformName, notificationType, roleType):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_role_subscription",
        type:: "data",
        attributes:: ["id", "notification_type", "role_type", "status"],
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
  "#withNotificationType":: "Type of the notification",
  withNotificationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_type" expected to be of type "string"';
    {
      notification_type: converted,
    }
  ),
  "#withRoleType":: "Type of the role",
  withRoleType(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_type" expected to be of type "string"';
    {
      role_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
