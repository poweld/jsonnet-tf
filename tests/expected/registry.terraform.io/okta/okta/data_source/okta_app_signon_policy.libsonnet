{
  local block = self,
  new(terraformName, appId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_signon_policy",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["app_id", "id", "name"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAppId(appId)
  ),
  "#withAppId":: "App ID",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
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
