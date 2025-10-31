{
  local block = self,
  new(terraformName, authorization, httpMethod, resourceId, restApiId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_method",
          type:: "resource",
          attributes:: ["api_key_required", "authorization", "authorization_scopes", "authorizer_id", "http_method", "id", "operation_name", "region", "request_models", "request_parameters", "request_validator_id", "resource_id", "rest_api_id"],
        },
      },
    }
    + block.withAuthorization(authorization)
    + block.withHttpMethod(httpMethod)
    + block.withResourceId(resourceId)
    + block.withRestApiId(restApiId)
  ),
  withApiKeyRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"api_key_required" expected to be of type "bool"';
    {
      api_key_required: converted,
    }
  ),
  withAuthorization(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization" expected to be of type "string"';
    {
      authorization: converted,
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
  withAuthorizerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_id" expected to be of type "string"';
    {
      authorizer_id: converted,
    }
  ),
  withHttpMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_method" expected to be of type "string"';
    {
      http_method: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withRequestParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_parameters" expected to be of type "map"';
    {
      request_parameters: converted,
    }
  ),
  withRequestValidatorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_validator_id" expected to be of type "string"';
    {
      request_validator_id: converted,
    }
  ),
  withResourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  withRestApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
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
