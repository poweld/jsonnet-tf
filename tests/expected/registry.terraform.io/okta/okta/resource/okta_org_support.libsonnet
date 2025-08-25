{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_org_support",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["expiration", "extend_by", "id", "status"],
      },
    }
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
}
