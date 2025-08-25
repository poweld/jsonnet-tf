{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_realm_assignment",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "condition_expression", "id", "is_default", "priority", "profile_source_id", "realm_id", "status"],
      },
    }
    + block.withName(name)
  ),
  "#withName":: "The name of the Okta Realm Assignment.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
