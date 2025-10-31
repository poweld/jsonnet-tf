{
  local block = self,
  new(terraformName, httpMethod, resourceId, restApiId, statusCode):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_method_response",
          type:: "resource",
          attributes:: ["http_method", "id", "region", "resource_id", "response_models", "response_parameters", "rest_api_id", "status_code"],
        },
      },
    }
    + block.withHttpMethod(httpMethod)
    + block.withResourceId(resourceId)
    + block.withRestApiId(restApiId)
    + block.withStatusCode(statusCode)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withResourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  withResponseModels(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_models" expected to be of type "map"';
    {
      response_models: converted,
    }
  ),
  withResponseParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_parameters" expected to be of type "map"';
    {
      response_parameters: converted,
    }
  ),
  withRestApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  withStatusCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_code" expected to be of type "string"';
    {
      status_code: converted,
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
