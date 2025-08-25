{
  local block = self,
  new(terraformName, appId, settings):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_saml_app_settings",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["app_id", "id", "settings"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAppId(appId)
    + block.withSettings(settings)
  ),
  "#withAppId":: "ID of the application.",
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
  "#withSettings":: "Application settings in JSON format",
  withSettings(value):: (
    local converted = value;
    assert std.isString(converted) : '"settings" expected to be of type "string"';
    {
      settings: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
