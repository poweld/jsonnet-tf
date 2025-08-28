{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_trusted_origins",
        type:: "data",
        attributes:: ["filter", "id", "trusted_origins"],
      },
    }
    + block.withTerraformName(terraformName)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
