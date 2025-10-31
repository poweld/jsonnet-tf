{
  local block = self,
  new(terraformName, authorizerId, restApiId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_authorizer",
          type:: "data",
          attributes:: ["arn", "authorizer_credentials", "authorizer_id", "authorizer_result_ttl_in_seconds", "authorizer_uri", "id", "identity_source", "identity_validation_expression", "name", "provider_arns", "region", "rest_api_id", "type"],
        },
      },
    }
    + block.withAuthorizerId(authorizerId)
    + block.withRestApiId(restApiId)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
