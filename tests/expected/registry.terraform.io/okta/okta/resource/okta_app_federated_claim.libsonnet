{
  local block = self,

  new(terraformName, appId, expression, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_federated_claim",
          type:: "resource",
          attributes:: ["app_id", "expression", "id", "name"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withExpression(expression)
    + block.withName(name)
  ),

  "#withAppId":: "`app_id` used to specify the app ID.",
  withAppId(value):: (
    assert std.isString(value) : '"app_id" expected to be of type "string"';

    {
      app_id: value,
    }
  ),

  "#withExpression":: "The Okta Expression Language expression to be evaluated at runtime.",
  withExpression(value):: (
    assert std.isString(value) : '"expression" expected to be of type "string"';

    {
      expression: value,
    }
  ),

  "#withName":: "The name of the claim to be used in the produced token.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
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
