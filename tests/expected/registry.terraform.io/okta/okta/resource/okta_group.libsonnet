{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_group",
          type:: "resource",
          attributes:: ["custom_profile_attributes", "description", "id", "name", "skip_users"],
        },
      },
    }
    + block.withName(name)
  ),

  "#withCustomProfileAttributes":: "JSON formatted custom attributes for a group. It must be JSON due to various types Okta allows.",
  withCustomProfileAttributes(value):: (
    assert std.isString(value) : '"custom_profile_attributes" expected to be of type "string"';

    {
      custom_profile_attributes: value,
    }
  ),

  "#withDescription":: "The description of the Okta Group.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "The name of the Okta Group.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withSkipUsers":: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  withSkipUsers(value):: (
    assert std.isBoolean(value) : '"skip_users" expected to be of type "bool"';

    {
      skip_users: value,
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
