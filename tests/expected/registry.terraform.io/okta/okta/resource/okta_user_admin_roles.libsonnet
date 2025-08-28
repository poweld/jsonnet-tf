{
  local block = self,
  new(terraformName, adminRoles, userId):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_user_admin_roles",
        type:: "resource",
        attributes:: ["admin_roles", "disable_notifications", "id", "user_id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAdminRoles(adminRoles)
    + block.withUserId(userId)
  ),
  "#withAdminRoles":: "The list of Okta user admin roles, e.g. `['APP_ADMIN', 'USER_ADMIN']` See [API Docs](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles).",
  withAdminRoles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_roles" expected to be of type "set"';
    {
      admin_roles: converted,
    }
  ),
  "#withAdminRolesMixin":: "The list of Okta user admin roles, e.g. `['APP_ADMIN', 'USER_ADMIN']` See [API Docs](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles).",
  withAdminRolesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_roles" expected to be of type "set"';
    {
      admin_roles+: converted,
    }
  ),
  "#withDisableNotifications":: "When this setting is enabled, the admins won't receive any of the default Okta administrator emails. These admins also won't have access to contact Okta Support and open support cases on behalf of your org.",
  withDisableNotifications(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_notifications" expected to be of type "bool"';
    {
      disable_notifications: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withUserId":: "ID of a Okta User",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
