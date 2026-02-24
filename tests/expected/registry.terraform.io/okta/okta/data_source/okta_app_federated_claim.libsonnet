{
  local block = self,

  new(terraformName, appId, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_federated_claim",
          type:: "data",
          attributes:: ["app_id", "expression", "id", "name"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withId(id)
  ),

  "#withAppId":: "`app_id` used to specify the app ID.",
  withAppId(value):: (
    assert std.isString(value) : '"app_id" expected to be of type "string"';

    {
      app_id: value,
    }
  ),

  "#withId":: "`id` used to specify the app feature ID. Its a combination of `app_id` and `name` separated by a forward slash (/).",
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
