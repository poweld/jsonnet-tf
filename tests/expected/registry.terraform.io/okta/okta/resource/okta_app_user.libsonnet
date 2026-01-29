{
  local block = self,

  new(terraformName, appId, userId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_user",
          type:: "resource",
          attributes:: ["app_id", "has_shared_username", "id", "password", "profile", "retain_assignment", "user_id", "username"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withUserId(userId)
  ),

  "#withAppId":: "App to associate user with",
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

  "#withPassword":: "The password to use.",
  withPassword(value):: (
    assert std.isString(value) : '"password" expected to be of type "string"';

    {
      password: value,
    }
  ),

  "#withProfile":: "The JSON profile of the App User.",
  withProfile(value):: (
    assert std.isString(value) : '"profile" expected to be of type "string"';

    {
      profile: value,
    }
  ),

  "#withRetainAssignment":: "Retain the user assignment on destroy. If set to true, the resource will be removed from state but not from the Okta app.",
  withRetainAssignment(value):: (
    assert std.isBoolean(value) : '"retain_assignment" expected to be of type "bool"';

    {
      retain_assignment: value,
    }
  ),

  "#withUserId":: "User associated with the application",
  withUserId(value):: (
    assert std.isString(value) : '"user_id" expected to be of type "string"';

    {
      user_id: value,
    }
  ),

  "#withUsername":: "The username to use for the app user. In case the user is assigned to the app with `SHARED_USERNAME_AND_PASSWORD` credentials scheme, this field will be computed and should not be set.",
  withUsername(value):: (
    assert std.isString(value) : '"username" expected to be of type "string"';

    {
      username: value,
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
