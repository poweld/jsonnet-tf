{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_features",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["features", "id", "label", "substring"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withLabel":: "Searches for features whose label or name property matches this value exactly. Case sensitive",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withSubstring":: "Searches for features whose label or name property substring match this value. Case sensitive",
  withSubstring(value):: (
    local converted = value;
    assert std.isString(converted) : '"substring" expected to be of type "string"';
    {
      substring: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
