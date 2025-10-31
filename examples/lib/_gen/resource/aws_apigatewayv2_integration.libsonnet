{
  local block = self,
  new(terraformName, apiId, integrationType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_integration",
          type:: "resource",
          attributes:: ["api_id", "connection_id", "connection_type", "content_handling_strategy", "credentials_arn", "description", "id", "integration_method", "integration_response_selection_expression", "integration_subtype", "integration_type", "integration_uri", "passthrough_behavior", "payload_format_version", "region", "request_parameters", "request_templates", "template_selection_expression", "timeout_milliseconds"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withIntegrationType(integrationType)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withConnectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
    }
  ),
  withConnectionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_type" expected to be of type "string"';
    {
      connection_type: converted,
    }
  ),
  withContentHandlingStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_handling_strategy" expected to be of type "string"';
    {
      content_handling_strategy: converted,
    }
  ),
  withCredentialsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_arn" expected to be of type "string"';
    {
      credentials_arn: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIntegrationMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_method" expected to be of type "string"';
    {
      integration_method: converted,
    }
  ),
  withIntegrationSubtype(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_subtype" expected to be of type "string"';
    {
      integration_subtype: converted,
    }
  ),
  withIntegrationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_type" expected to be of type "string"';
    {
      integration_type: converted,
    }
  ),
  withIntegrationUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_uri" expected to be of type "string"';
    {
      integration_uri: converted,
    }
  ),
  withPassthroughBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"passthrough_behavior" expected to be of type "string"';
    {
      passthrough_behavior: converted,
    }
  ),
  withPayloadFormatVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"payload_format_version" expected to be of type "string"';
    {
      payload_format_version: converted,
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
  withRequestParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_parameters" expected to be of type "map"';
    {
      request_parameters: converted,
    }
  ),
  withRequestTemplates(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_templates" expected to be of type "map"';
    {
      request_templates: converted,
    }
  ),
  withTemplateSelectionExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_selection_expression" expected to be of type "string"';
    {
      template_selection_expression: converted,
    }
  ),
  withTimeoutMilliseconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout_milliseconds" expected to be of type "number"';
    {
      timeout_milliseconds: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  response_parameters:: {
    local block = self,
    new(mappings, statusCode):: (
      {}
      + block.withMappings(mappings)
      + block.withStatusCode(statusCode)
    ),
    withMappings(value):: (
      local converted = value;
      assert std.isObject(converted) : '"mappings" expected to be of type "map"';
      {
        mappings: converted,
      }
    ),
    withStatusCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"status_code" expected to be of type "string"';
      {
        status_code: converted,
      }
    ),
  },
  tls_config:: {
    local block = self,
    new():: (
      {}
    ),
    withServerNameToVerify(value):: (
      local converted = value;
      assert std.isString(converted) : '"server_name_to_verify" expected to be of type "string"';
      {
        server_name_to_verify: converted,
      }
    ),
  },
  withResponseParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      response_parameters: value,
    }
  ),
  withTlsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config: value,
    }
  ),
  withResponseParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      response_parameters+: converted,
    }
  ),
  withTlsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config+: converted,
    }
  ),
}
