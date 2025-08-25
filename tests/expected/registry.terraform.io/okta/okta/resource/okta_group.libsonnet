{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_group",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["custom_profile_attributes", "description", "id", "name", "skip_users"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
  ),
  "#withCustomProfileAttributes":: "JSON formatted custom attributes for a group. It must be JSON due to various types Okta allows.",
  withCustomProfileAttributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_profile_attributes" expected to be of type "string"';
    {
      custom_profile_attributes: converted,
    }
  ),
  "#withDescription":: "The description of the Okta Group.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the Okta Group.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withSkipUsers":: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  withSkipUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_users" expected to be of type "bool"';
    {
      skip_users: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
