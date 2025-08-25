{
  local block = self,
  new(name, feature_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_feature",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "description", "feature_id", "id", "life_cycle", "mode", "stage", "status", "type"],
      },
    }
    + block.withName(name)
    + block.withFeatureId(feature_id)
  ),
  "#withFeatureId":: "Okta API for feature only reads and updates therefore the okta_feature resource needs to act as a quasi data source. Do this by setting feature_id",
  withFeatureId(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_id" expected to be of type "string"';
    {
      feature_id: converted,
    }
  ),
  "#withLifeCycle":: "Whether to `ENABLE` or `DISABLE` the feature",
  withLifeCycle(value):: (
    local converted = value;
    assert std.isString(converted) : '"life_cycle" expected to be of type "string"';
    {
      life_cycle: converted,
    }
  ),
  "#withMode":: "Indicates if you want to force enable or disable a feature. Value is `true` meaning force",
  withMode(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"mode" expected to be of type "bool"';
    {
      mode: converted,
    }
  ),
  "#withName":: "Name of the feature.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
