{
  local block = self,
  new(terraformName, pipelineDisplayName, pipelineName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_pipeline",
          type:: "resource",
          attributes:: ["arn", "id", "pipeline_definition", "pipeline_description", "pipeline_display_name", "pipeline_name", "region", "role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withPipelineDisplayName(pipelineDisplayName)
    + block.withPipelineName(pipelineName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPipelineDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_definition" expected to be of type "string"';
    {
      pipeline_definition: converted,
    }
  ),
  withPipelineDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_description" expected to be of type "string"';
    {
      pipeline_description: converted,
    }
  ),
  withPipelineDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_display_name" expected to be of type "string"';
    {
      pipeline_display_name: converted,
    }
  ),
  withPipelineName(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_name" expected to be of type "string"';
    {
      pipeline_name: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  parallelism_configuration:: {
    local block = self,
    new(maxParallelExecutionSteps):: (
      {}
      + block.withMaxParallelExecutionSteps(maxParallelExecutionSteps)
    ),
    withMaxParallelExecutionSteps(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_parallel_execution_steps" expected to be of type "number"';
      {
        max_parallel_execution_steps: converted,
      }
    ),
  },
  pipeline_definition_s3_location:: {
    local block = self,
    new(bucket, objectKey):: (
      {}
      + block.withBucket(bucket)
      + block.withObjectKey(objectKey)
    ),
    withBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    withObjectKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"object_key" expected to be of type "string"';
      {
        object_key: converted,
      }
    ),
    withVersionId(value):: (
      local converted = value;
      assert std.isString(converted) : '"version_id" expected to be of type "string"';
      {
        version_id: converted,
      }
    ),
  },
  withParallelismConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parallelism_configuration: value,
    }
  ),
  withPipelineDefinitionS3Location(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_definition_s3_location: value,
    }
  ),
  withParallelismConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parallelism_configuration+: converted,
    }
  ),
  withPipelineDefinitionS3LocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_definition_s3_location+: converted,
    }
  ),
}
