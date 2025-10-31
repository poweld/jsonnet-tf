{
  local block = self,
  new(terraformName, enabledFeatures):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_organizations_features",
          type:: "resource",
          attributes:: ["enabled_features", "id"],
        },
      },
    }
    + block.withEnabledFeatures(enabledFeatures)
  ),
  withEnabledFeatures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_features" expected to be of type "set"';
    {
      enabled_features: converted,
    }
  ),
  withEnabledFeaturesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_features" expected to be of type "set"';
    {
      enabled_features+: converted,
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
