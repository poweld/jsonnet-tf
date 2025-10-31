{
  local block = self,
  new(terraformName, apiId, integrationId, integrationResponseKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_integration_response",
          type:: "resource",
          attributes:: ["api_id", "content_handling_strategy", "id", "integration_id", "integration_response_key", "region", "response_templates", "template_selection_expression"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withIntegrationId(integrationId)
    + block.withIntegrationResponseKey(integrationResponseKey)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withContentHandlingStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_handling_strategy" expected to be of type "string"';
    {
      content_handling_strategy: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIntegrationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_id" expected to be of type "string"';
    {
      integration_id: converted,
    }
  ),
  withIntegrationResponseKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_response_key" expected to be of type "string"';
    {
      integration_response_key: converted,
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
  withResponseTemplates(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_templates" expected to be of type "map"';
    {
      response_templates: converted,
    }
  ),
  withTemplateSelectionExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_selection_expression" expected to be of type "string"';
    {
      template_selection_expression: converted,
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
