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
  "#withPassword":: "The password to use.",
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  "#withProfile":: "The JSON profile of the App User.",
  withProfile(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile" expected to be of type "string"';
    {
      profile: converted,
    }
  ),
  "#withRetainAssignment":: "Retain the user assignment on destroy. If set to true, the resource will be removed from state but not from the Okta app.",
  withRetainAssignment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_assignment" expected to be of type "bool"';
    {
      retain_assignment: converted,
    }
  ),
  "#withUserId":: "User associated with the application",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  "#withUsername":: "The username to use for the app user. In case the user is assigned to the app with `SHARED_USERNAME_AND_PASSWORD` credentials scheme, this field will be computed and should not be set.",
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
