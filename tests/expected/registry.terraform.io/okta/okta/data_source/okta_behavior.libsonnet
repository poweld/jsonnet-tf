{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_behavior",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["id", "name", "settings", "status", "type"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withId":: "Behavior ID.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Behavior name.",
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
