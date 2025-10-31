{
  local block = self,
  new(terraformName, name, restApiId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_request_validator",
          type:: "resource",
          attributes:: ["id", "name", "region", "rest_api_id", "validate_request_body", "validate_request_parameters"],
        },
      },
    }
    + block.withName(name)
    + block.withRestApiId(restApiId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withRestApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  withValidateRequestBody(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"validate_request_body" expected to be of type "bool"';
    {
      validate_request_body: converted,
    }
  ),
  withValidateRequestParameters(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"validate_request_parameters" expected to be of type "bool"';
    {
      validate_request_parameters: converted,
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
