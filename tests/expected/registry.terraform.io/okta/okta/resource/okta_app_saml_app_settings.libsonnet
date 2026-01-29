{
  local block = self,

  new(terraformName, appId, settings):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_saml_app_settings",
          type:: "resource",
          attributes:: ["app_id", "id", "settings"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withSettings(settings)
  ),

  "#withAppId":: "ID of the application.",
  withAppId(value):: (
    assert std.isString(value) : '"app_id" expected to be of type "string"';

    {
      app_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withSettings":: "Application settings in JSON format",
  withSettings(value):: (
    assert std.isString(value) : '"settings" expected to be of type "string"';

    {
      settings: value,
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
