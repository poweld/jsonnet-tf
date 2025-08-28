{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_group",
          type:: "data",
          attributes:: ["delay_read_seconds", "description", "id", "include_users", "name", "type", "users"],
        },
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withDelayReadSeconds":: "Force delay of the group read by N seconds. Useful when eventual consistency of group information needs to be allowed for; for instance, when group rules are known to have been applied.",
  withDelayReadSeconds(value):: (
    local converted = value;
    assert std.isString(converted) : '"delay_read_seconds" expected to be of type "string"';
    {
      delay_read_seconds: converted,
    }
  ),
  "#withId":: "ID of group.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIncludeUsers":: "Fetch group users, having default off cuts down on API calls.",
  withIncludeUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_users" expected to be of type "bool"';
    {
      include_users: converted,
    }
  ),
  "#withName":: "Name of group.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withType":: "Type of the group. When specified in the terraform resource, will act as a filter when searching for the group",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
