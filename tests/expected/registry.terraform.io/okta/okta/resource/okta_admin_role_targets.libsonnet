{
  local block = self,

  new(terraformName, roleType, userId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_admin_role_targets",
          type:: "resource",
          attributes:: ["apps", "groups", "id", "role_id", "role_type", "user_id"],
        },
      },
    }
    + block.withRoleType(roleType)
    + block.withUserId(userId)
  ),

  "#withApps":: "List of app names (name represents set of app instances) or a combination of app name and app instance ID (like 'salesforce' or 'facebook.0oapsqQ6dv19pqyEo0g3')",
  withApps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';

    {
      apps: converted,
    }
  ),

  "#withAppsMixin":: "List of app names (name represents set of app instances) or a combination of app name and app instance ID (like 'salesforce' or 'facebook.0oapsqQ6dv19pqyEo0g3')",
  withAppsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';

    {
      apps+: converted,
    }
  ),

  "#withGroups":: "List of group IDs. Conflicts with apps",
  withGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';

    {
      groups: converted,
    }
  ),

  "#withGroupsMixin":: "List of group IDs. Conflicts with apps",
  withGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';

    {
      groups+: converted,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withRoleType":: "Type of the role that is assigned to the user and supports optional targets. See [API Docs](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles)",
  withRoleType(value):: (
    assert std.isString(value) : '"role_type" expected to be of type "string"';

    {
      role_type: value,
    }
  ),

  "#withUserId":: "User associated with the role",
  withUserId(value):: (
    assert std.isString(value) : '"user_id" expected to be of type "string"';

    {
      user_id: value,
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
