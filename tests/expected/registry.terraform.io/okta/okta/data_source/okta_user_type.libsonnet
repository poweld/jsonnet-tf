{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_user_type",
        type:: "data",
        attributes:: ["description", "display_name", "id", "name"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withId":: "ID of the user type to retrieve, conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of user type to retrieve, conflicts with `id`.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
