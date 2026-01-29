{
  local block = self,

  new(terraformName, appId, groupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_group_assignment",
          type:: "resource",
          attributes:: ["app_id", "group_id", "id", "priority", "profile", "retain_assignment"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withGroupId(groupId)
  ),

  "#withAppId":: "App to associate group with",
  withAppId(value):: (
    assert std.isString(value) : '"app_id" expected to be of type "string"';

    {
      app_id: value,
    }
  ),

  "#withGroupId":: "Group associated with the application",
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

  "#withPriority":: "Priority of group assignment.",
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

  "#withRetainAssignment":: "Retain the group assignment on destroy. If set to true, the resource will be removed from state but not from the Okta app.",
  withRetainAssignment(value):: (
    assert std.isBoolean(value) : '"retain_assignment" expected to be of type "bool"';

    {
      retain_assignment: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    {
      timeouts: value,
    }
  ),
}
