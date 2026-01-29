{
  local block = self,

  new(terraformName, appId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_signon_policy",
          type:: "data",
          attributes:: ["app_id", "id", "name"],
        },
      },
    }
    + block.withAppId(appId)
  ),

  "#withAppId":: "App ID",
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
