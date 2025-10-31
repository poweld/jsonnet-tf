{
  local block = self,
  new(terraformName, apiId, routeId, routeResponseKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_route_response",
          type:: "resource",
          attributes:: ["api_id", "id", "model_selection_expression", "region", "response_models", "route_id", "route_response_key"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withRouteId(routeId)
    + block.withRouteResponseKey(routeResponseKey)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withModelSelectionExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_selection_expression" expected to be of type "string"';
    {
      model_selection_expression: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withResponseModels(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_models" expected to be of type "map"';
    {
      response_models: converted,
    }
  ),
  withRouteId(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_id" expected to be of type "string"';
    {
      route_id: converted,
    }
  ),
  withRouteResponseKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_response_key" expected to be of type "string"';
    {
      route_response_key: converted,
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
