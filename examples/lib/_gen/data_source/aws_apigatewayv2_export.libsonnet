{
  local block = self,
  new(terraformName, apiId, outputType, specification):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_export",
          type:: "data",
          attributes:: ["api_id", "body", "export_version", "id", "include_extensions", "output_type", "region", "specification", "stage_name"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withOutputType(outputType)
    + block.withSpecification(specification)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withExportVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_version" expected to be of type "string"';
    {
      export_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIncludeExtensions(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_extensions" expected to be of type "bool"';
    {
      include_extensions: converted,
    }
  ),
  withOutputType(value):: (
    local converted = value;
    assert std.isString(converted) : '"output_type" expected to be of type "string"';
    {
      output_type: converted,
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
  withSpecification(value):: (
    local converted = value;
    assert std.isString(converted) : '"specification" expected to be of type "string"';
    {
      specification: converted,
    }
  ),
  withStageName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage_name" expected to be of type "string"';
    {
      stage_name: converted,
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
