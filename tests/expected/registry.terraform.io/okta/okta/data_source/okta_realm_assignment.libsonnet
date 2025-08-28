{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_realm_assignment",
        type:: "data",
        attributes:: ["condition_expression", "id", "is_default", "name", "priority", "profile_source_id", "realm_id", "status"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withName":: "The name of the Okta Realm Assignment.",
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
