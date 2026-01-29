{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_group",
          type:: "data",
          attributes:: ["delay_read_seconds", "description", "id", "include_users", "name", "type", "users"],
        },
      },
    }
  ),

  "#withDelayReadSeconds":: "Force delay of the group read by N seconds. Useful when eventual consistency of group information needs to be allowed for; for instance, when group rules are known to have been applied.",
  withDelayReadSeconds(value):: (
    assert std.isString(value) : '"delay_read_seconds" expected to be of type "string"';

    {
      delay_read_seconds: value,
    }
  ),

  "#withId":: "ID of group.",
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

  "#withName":: "Name of group.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withType":: "Type of the group. When specified in the terraform resource, will act as a filter when searching for the group",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
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
