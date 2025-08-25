{
  local block = self,
  new(terraformName, groupId, roleType):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_group_role",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["disable_notifications", "group_id", "id", "resource_set_id", "role_id", "role_type", "target_app_list", "target_group_list"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withGroupId(groupId)
    + block.withRoleType(roleType)
  ),
  "#withDisableNotifications":: "When this setting is enabled, the admins won't receive any of the default Okta administrator emails. These admins also won't have access to contact Okta Support and open support cases on behalf of your org.",
  withDisableNotifications(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_notifications" expected to be of type "bool"';
    {
      disable_notifications: converted,
    }
  ),
  "#withGroupId":: "ID of group to attach admin roles to",
  withGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withResourceSetId":: "Resource Set ID. Required for role_type = `CUSTOM`",
  withResourceSetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_id" expected to be of type "string"';
    {
      resource_set_id: converted,
    }
  ),
  "#withRoleId":: "Role ID. Required for role_type = `CUSTOM`",
  withRoleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_id" expected to be of type "string"';
    {
      role_id: converted,
    }
  ),
  "#withRoleType":: "Admin role assigned to the group. It can be any one of the following values: \t'API_ADMIN', \t'APP_ADMIN', \t'CUSTOM', \t'GROUP_MEMBERSHIP_ADMIN', \t'HELP_DESK_ADMIN', \t'MOBILE_ADMIN', \t'ORG_ADMIN', \t'READ_ONLY_ADMIN', \t'REPORT_ADMIN', \t'SUPER_ADMIN', \t'USER_ADMIN' \t. See [API Docs](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles). \t- 'USER_ADMIN' is the Group Administrator.",
  withRoleType(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_type" expected to be of type "string"';
    {
      role_type: converted,
    }
  ),
  "#withTargetAppList":: "A list of app names (name represents set of app instances, like 'salesforce' or 'facebook'), or a combination of app name and app instance ID (like 'facebook.0oapsqQ6dv19pqyEo0g3') you would like as the targets of the admin role. - Only supported when used with the role type `APP_ADMIN`.",
  withTargetAppList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_app_list" expected to be of type "set"';
    {
      target_app_list: converted,
    }
  ),
  "#withTargetAppListMixin":: "A list of app names (name represents set of app instances, like 'salesforce' or 'facebook'), or a combination of app name and app instance ID (like 'facebook.0oapsqQ6dv19pqyEo0g3') you would like as the targets of the admin role. - Only supported when used with the role type `APP_ADMIN`.",
  withTargetAppListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_app_list" expected to be of type "set"';
    {
      target_app_list+: converted,
    }
  ),
  "#withTargetGroupList":: "A list of group IDs you would like as the targets of the admin role. - Only supported when used with the role types: `GROUP_MEMBERSHIP_ADMIN`, `HELP_DESK_ADMIN`, or `USER_ADMIN`.",
  withTargetGroupList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_group_list" expected to be of type "set"';
    {
      target_group_list: converted,
    }
  ),
  "#withTargetGroupListMixin":: "A list of group IDs you would like as the targets of the admin role. - Only supported when used with the role types: `GROUP_MEMBERSHIP_ADMIN`, `HELP_DESK_ADMIN`, or `USER_ADMIN`.",
  withTargetGroupListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_group_list" expected to be of type "set"';
    {
      target_group_list+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
