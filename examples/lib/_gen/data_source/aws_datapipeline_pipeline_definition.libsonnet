{
  local block = self,
  new(terraformName, pipelineId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datapipeline_pipeline_definition",
          type:: "data",
          attributes:: ["id", "parameter_object", "pipeline_id", "pipeline_object", "region"],
        },
      },
    }
    + block.withPipelineId(pipelineId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPipelineId(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_id" expected to be of type "string"';
    {
      pipeline_id: converted,
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
  parameter_value:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withParameterValue(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_value: value,
    }
  ),
  withParameterValueMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_value+: converted,
    }
  ),
}
