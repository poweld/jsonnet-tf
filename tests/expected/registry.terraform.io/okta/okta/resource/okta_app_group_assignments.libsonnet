{
  local block = self,
  new(terraformName, appId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_group_assignments",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["app_id", "id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAppId(appId)
  ),
  "#withAppId":: "The ID of the application to assign a group to.",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
  group:: {
    local block = self,
    new(id):: (
      {}
      + block.withId(id)
    ),
    "#withId":: "A group to associate with the application",
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    "#withPriority":: "Priority of group assignment",
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
  withGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      group: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      group+: converted,
    }
  ),
}
