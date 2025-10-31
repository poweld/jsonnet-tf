{
  local block = self,
  new(terraformName, responseType, restApiId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_gateway_response",
          type:: "resource",
          attributes:: ["id", "region", "response_parameters", "response_templates", "response_type", "rest_api_id", "status_code"],
        },
      },
    }
    + block.withResponseType(responseType)
    + block.withRestApiId(restApiId)
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
  withResponseParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_parameters" expected to be of type "map"';
    {
      response_parameters: converted,
    }
  ),
  withResponseTemplates(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_templates" expected to be of type "map"';
    {
      response_templates: converted,
    }
  ),
  withResponseType(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_type" expected to be of type "string"';
    {
      response_type: converted,
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
