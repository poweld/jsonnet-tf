{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_group_assignments",
          type:: "data",
          attributes:: ["groups", "id"],
        },
      },
    }
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
}
