{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_org_support",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["expiration", "extend_by", "id", "status"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withExtendBy":: "Number of days the support should be extended by",
  withExtendBy(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"extend_by" expected to be of type "number"';
    {
      extend_by: converted,
    }
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
