{
  local block = self,
  new(name, app_id, settings):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_saml_app_settings",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["app_id", "id", "settings"],
      },
    }
    + block.withAppId(app_id)
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
}
