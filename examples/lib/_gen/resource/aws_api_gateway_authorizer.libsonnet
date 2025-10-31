{
  local block = self,
  new(terraformName, name, restApiId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_authorizer",
          type:: "resource",
          attributes:: ["arn", "authorizer_credentials", "authorizer_result_ttl_in_seconds", "authorizer_uri", "id", "identity_source", "identity_validation_expression", "name", "provider_arns", "region", "rest_api_id", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withRestApiId(restApiId)
  ),
  withAuthorizerCredentials(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_credentials" expected to be of type "string"';
    {
      authorizer_credentials: converted,
    }
  ),
  withAuthorizerResultTtlInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"authorizer_result_ttl_in_seconds" expected to be of type "number"';
    {
      authorizer_result_ttl_in_seconds: converted,
    }
  ),
  withAuthorizerUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_uri" expected to be of type "string"';
    {
      authorizer_uri: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentitySource(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_source" expected to be of type "string"';
    {
      identity_source: converted,
    }
  ),
  withIdentityValidationExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_validation_expression" expected to be of type "string"';
    {
      identity_validation_expression: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProviderArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"provider_arns" expected to be of type "set"';
    {
      provider_arns: converted,
    }
  ),
  withProviderArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"provider_arns" expected to be of type "set"';
    {
      provider_arns+: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
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
