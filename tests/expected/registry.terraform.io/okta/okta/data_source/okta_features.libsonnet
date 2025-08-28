{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_features",
          type:: "data",
          attributes:: ["features", "id", "label", "substring"],
        },
      },
    }
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
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
