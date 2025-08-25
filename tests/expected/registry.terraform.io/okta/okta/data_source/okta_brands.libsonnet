{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_brands",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["brands", "id"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
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
