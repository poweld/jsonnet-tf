{
  local block = self,
  new(terraformName, modelId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrock_foundation_model",
          type:: "data",
          attributes:: ["customizations_supported", "id", "inference_types_supported", "input_modalities", "model_arn", "model_id", "model_name", "output_modalities", "provider_name", "region", "response_streaming_supported"],
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
