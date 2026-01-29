{
  local block = self,

  new(terraformName, groupId, users):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_group_memberships",
          type:: "resource",
          attributes:: ["group_id", "id", "track_all_users", "users"],
        },
      },
    }
    + block.withGroupId(groupId)
    + block.withUsers(users)
  ),

  "#withGroupId":: "ID of a Okta group.",
  withGroupId(value):: (
    assert std.isString(value) : '"group_id" expected to be of type "string"';

    {
      group_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withTrackAllUsers":: "The resource concerns itself with all users added/deleted to the group; even those managed outside of the resource.",
  withTrackAllUsers(value):: (
    assert std.isBoolean(value) : '"track_all_users" expected to be of type "bool"';

    {
      track_all_users: value,
    }
  ),

  "#withUsers":: "The list of Okta user IDs which the group should have membership managed for.",
  withUsers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';

    {
      users: converted,
    }
  ),

  "#withUsersMixin":: "The list of Okta user IDs which the group should have membership managed for.",
  withUsersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';

    {
      users+: converted,
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
