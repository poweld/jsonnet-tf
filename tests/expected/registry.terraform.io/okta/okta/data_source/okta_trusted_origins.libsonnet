{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_trusted_origins",
          type:: "data",
          attributes:: ["filter", "id", "trusted_origins"],
        },
      },
    }
  ),

  "#withFilter":: "Filter criteria. Filter value will be URL-encoded by the provider",
  withFilter(value):: (
    assert std.isString(value) : '"filter" expected to be of type "string"';

    {
      filter: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
