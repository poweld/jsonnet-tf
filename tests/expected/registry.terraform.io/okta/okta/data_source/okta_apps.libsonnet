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
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  "#withIncludeNonDeleted":: "Specifies whether to include non-active, but not deleted apps in the results.",
  withIncludeNonDeleted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_non_deleted" expected to be of type "bool"';
    {
      include_non_deleted: converted,
    }
  ),
  "#withLabel":: "Searches for applications whose label or name property matches this value exactly.",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withLabelPrefix":: "Searches for applications whose label or name property begins with this value.",
  withLabelPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  "#withQ":: "Searches for applications whose name or label properties that starts with this value.",
  withQ(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
  "#withUseOptimization":: "Specifies whether to use query optimization. If you specify `useOptimization=true` in the request query, the response contains a subset of app instance properties.",
  withUseOptimization(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_optimization" expected to be of type "bool"';
    {
      use_optimization: converted,
    }
  ),
}
