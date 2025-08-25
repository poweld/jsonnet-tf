{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_trusted_origins",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["filter", "id", "trusted_origins"],
      },
    }
  ),
  "#withFilter":: "Filter criteria. Filter value will be URL-encoded by the provider",
  withFilter(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter" expected to be of type "string"';
    {
      filter: converted,
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
