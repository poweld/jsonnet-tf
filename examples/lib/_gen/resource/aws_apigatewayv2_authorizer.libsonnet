{
  local block = self,
  new(terraformName, apiId, authorizerType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_authorizer",
          type:: "resource",
          attributes:: ["api_id", "authorizer_credentials_arn", "authorizer_payload_format_version", "authorizer_result_ttl_in_seconds", "authorizer_type", "authorizer_uri", "enable_simple_responses", "id", "identity_sources", "name", "region"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withAuthorizerType(authorizerType)
    + block.withName(name)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withAuthorizerCredentialsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_credentials_arn" expected to be of type "string"';
    {
      authorizer_credentials_arn: converted,
    }
  ),
  withAuthorizerPayloadFormatVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_payload_format_version" expected to be of type "string"';
    {
      authorizer_payload_format_version: converted,
    }
  ),
  withAuthorizerResultTtlInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"authorizer_result_ttl_in_seconds" expected to be of type "number"';
    {
      authorizer_result_ttl_in_seconds: converted,
    }
  ),
  withAuthorizerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_type" expected to be of type "string"';
    {
      authorizer_type: converted,
    }
  ),
  withAuthorizerUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_uri" expected to be of type "string"';
    {
      authorizer_uri: converted,
    }
  ),
  withEnableSimpleResponses(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_simple_responses" expected to be of type "bool"';
    {
      enable_simple_responses: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentitySources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identity_sources" expected to be of type "set"';
    {
      identity_sources: converted,
    }
  ),
  withIdentitySourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identity_sources" expected to be of type "set"';
    {
      identity_sources+: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  jwt_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAudience(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audience" expected to be of type "set"';
      {
        audience: converted,
      }
    ),
    withAudienceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audience" expected to be of type "set"';
      {
        audience+: converted,
      }
    ),
    withIssuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withJwtConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwt_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withJwtConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwt_configuration+: converted,
    }
  ),
}
