{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_org_support",
          type:: "resource",
          attributes:: ["expiration", "extend_by", "id", "status"],
        },
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
