{
  local block = self,

  new(terraformName, appId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_group_assignments",
          type:: "resource",
          attributes:: ["app_id", "id"],
        },
      },
    }
    + block.withAppId(appId)
  ),

  "#withAppId":: "The ID of the application to assign a group to.",
  withAppId(value):: (
    assert std.isString(value) : '"app_id" expected to be of type "string"';

    {
      app_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
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
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    "#withPriority":: "Priority of group assignment",
    withPriority(value):: (
      assert std.isNumber(value) : '"priority" expected to be of type "number"';

      {
        priority: value,
      }
    ),

    "#withProfile":: "JSON document containing [application profile](https://developer.okta.com/docs/reference/api/apps/#profile-object)",
    withProfile(value):: (
      assert std.isString(value) : '"profile" expected to be of type "string"';

      {
        profile: value,
      }
    ),
  },
  timeouts:: {
    local block = self,

    new():: (
      {}
    ),

    withCreate(value):: (
      assert std.isString(value) : '"create" expected to be of type "string"';

      {
        create: value,
      }
    ),

    withRead(value):: (
      assert std.isString(value) : '"read" expected to be of type "string"';

      {
        read: value,
      }
    ),

    withUpdate(value):: (
      assert std.isString(value) : '"update" expected to be of type "string"';

      {
        update: value,
      }
    ),
  },
  withGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      group: converted,
    }
  ),
  withTimeouts(value):: (
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
