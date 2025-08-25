{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_group_assignments",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["groups", "id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withId(id)
  ),
  "#withId":: "ID of the Okta App being queried for groups",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
