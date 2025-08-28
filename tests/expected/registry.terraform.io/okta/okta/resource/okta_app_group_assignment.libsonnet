{
  local block = self,
  new(terraformName, appId, groupId):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_app_group_assignment",
        type:: "resource",
        attributes:: ["app_id", "group_id", "id", "priority", "profile", "retain_assignment"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAppId(appId)
    + block.withGroupId(groupId)
  ),
  "#withAppId":: "App to associate group with",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  "#withGroupId":: "Group associated with the application",
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
  "#withPriority":: "Priority of group assignment.",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  "#withProfile":: "JSON document containing [application profile](https://developer.okta.com/docs/reference/api/apps/#profile-object)",
  withProfile(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile" expected to be of type "string"';
    {
      profile: converted,
    }
  ),
  "#withRetainAssignment":: "Retain the group assignment on destroy. If set to true, the resource will be removed from state but not from the Okta app.",
  withRetainAssignment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_assignment" expected to be of type "bool"';
    {
      retain_assignment: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
