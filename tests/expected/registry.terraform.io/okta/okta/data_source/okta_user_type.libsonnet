{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_user_type",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "description", "display_name", "id"],
      },
    }
    + block.withName(name)
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
}
