{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_everyone_group",
          type:: "data",
          attributes:: ["description", "id", "include_users"],
        },
      },
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIncludeUsers":: "Fetch group users, having default off cuts down on API calls.",
  withIncludeUsers(value):: (
    assert std.isBoolean(value) : '"include_users" expected to be of type "bool"';

    {
      include_users: value,
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
