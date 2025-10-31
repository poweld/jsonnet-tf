{
  local block = self,
  new(terraformName, apiId, routeKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_route",
          type:: "resource",
          attributes:: ["api_id", "api_key_required", "authorization_scopes", "authorization_type", "authorizer_id", "id", "model_selection_expression", "operation_name", "region", "request_models", "route_key", "route_response_selection_expression", "target"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withRouteKey(routeKey)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withApiKeyRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"api_key_required" expected to be of type "bool"';
    {
      api_key_required: converted,
    }
  ),
  withAuthorizationScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"authorization_scopes" expected to be of type "set"';
    {
      authorization_scopes: converted,
    }
  ),
  withAuthorizationScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"authorization_scopes" expected to be of type "set"';
    {
      authorization_scopes+: converted,
    }
  ),
  withAuthorizationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
    {
      authorization_type: converted,
    }
  ),
  withAuthorizerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_id" expected to be of type "string"';
    {
      authorizer_id: converted,
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
  withOperationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"operation_name" expected to be of type "string"';
    {
      operation_name: converted,
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
  withRequestModels(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_models" expected to be of type "map"';
    {
      request_models: converted,
    }
  ),
  withRouteKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_key" expected to be of type "string"';
    {
      route_key: converted,
    }
  ),
  withRouteResponseSelectionExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_response_selection_expression" expected to be of type "string"';
    {
      route_response_selection_expression: converted,
    }
  ),
  withTarget(value):: (
    local converted = value;
    assert std.isString(converted) : '"target" expected to be of type "string"';
    {
      target: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  request_parameter:: {
    local block = self,
    new(requestParameterKey, required):: (
      {}
      + block.withRequestParameterKey(requestParameterKey)
      + block.withRequired(required)
    ),
    withRequestParameterKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"request_parameter_key" expected to be of type "string"';
      {
        request_parameter_key: converted,
      }
    ),
    withRequired(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
  },
  withRequestParameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      request_parameter: value,
    }
  ),
  withRequestParameterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      request_parameter+: converted,
    }
  ),
}
