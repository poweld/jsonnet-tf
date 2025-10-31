{
  local block = self,
  new(terraformName, modelId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrock_custom_model",
          type:: "data",
          attributes:: ["base_model_arn", "creation_time", "hyperparameters", "id", "job_arn", "job_name", "job_tags", "model_arn", "model_id", "model_kms_key_arn", "model_name", "model_tags", "output_data_config", "region", "training_data_config", "training_metrics", "validation_data_config", "validation_metrics"],
        },
      },
    }
    + block.withModelId(modelId)
  ),
  withModelId(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_id" expected to be of type "string"';
    {
      model_id: converted,
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
