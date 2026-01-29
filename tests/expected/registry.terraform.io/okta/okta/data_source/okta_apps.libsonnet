{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_apps",
          type:: "data",
          attributes:: ["active_only", "apps", "include_non_deleted", "label", "label_prefix", "q", "use_optimization"],
        },
      },
    }
  ),

  "#withActiveOnly":: "Search only active applications.",
  withActiveOnly(value):: (
    assert std.isBoolean(value) : '"active_only" expected to be of type "bool"';

    {
      active_only: value,
    }
  ),

  "#withIncludeNonDeleted":: "Specifies whether to include non-active, but not deleted apps in the results.",
  withIncludeNonDeleted(value):: (
    assert std.isBoolean(value) : '"include_non_deleted" expected to be of type "bool"';

    {
      include_non_deleted: value,
    }
  ),

  "#withLabel":: "Searches for applications whose label or name property matches this value exactly.",
  withLabel(value):: (
    assert std.isString(value) : '"label" expected to be of type "string"';

    {
      label: value,
    }
  ),

  "#withLabelPrefix":: "Searches for applications whose label or name property begins with this value.",
  withLabelPrefix(value):: (
    assert std.isString(value) : '"label_prefix" expected to be of type "string"';

    {
      label_prefix: value,
    }
  ),

  "#withQ":: "Searches for applications whose name or label properties that starts with this value.",
  withQ(value):: (
    assert std.isString(value) : '"q" expected to be of type "string"';

    {
      q: value,
    }
  ),

  "#withUseOptimization":: "Specifies whether to use query optimization. If you specify `useOptimization=true` in the request query, the response contains a subset of app instance properties.",
  withUseOptimization(value):: (
    assert std.isBoolean(value) : '"use_optimization" expected to be of type "bool"';

    {
      use_optimization: value,
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
