{
  local block = self,
  new(terraformName, apiId, definition, format):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_type",
          type:: "resource",
          attributes:: ["api_id", "arn", "definition", "description", "format", "id", "name", "region"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withDefinition(definition)
    + block.withFormat(format)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"definition" expected to be of type "string"';
    {
      definition: converted,
    }
  ),
  withFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"format" expected to be of type "string"';
    {
      format: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
