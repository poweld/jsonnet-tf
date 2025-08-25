{
  local block = self,
  new(terraformName, groupId, users):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_group_memberships",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["group_id", "id", "track_all_users", "users"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withGroupId(groupId)
    + block.withUsers(users)
  ),
  "#withGroupId":: "ID of a Okta group.",
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
  "#withTrackAllUsers":: "The resource concerns itself with all users added/deleted to the group; even those managed outside of the resource.",
  withTrackAllUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"track_all_users" expected to be of type "bool"';
    {
      track_all_users: converted,
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
      terraformName:: value,
    },
  },
}
