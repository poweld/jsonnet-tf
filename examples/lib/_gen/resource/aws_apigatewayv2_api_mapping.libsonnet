{
  local block = self,
  new(terraformName, apiId, domainName, stage):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_api_mapping",
          type:: "resource",
          attributes:: ["api_id", "api_mapping_key", "domain_name", "id", "region", "stage"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withDomainName(domainName)
    + block.withStage(stage)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withApiMappingKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_mapping_key" expected to be of type "string"';
    {
      api_mapping_key: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  withStage(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage" expected to be of type "string"';
    {
      stage: converted,
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
