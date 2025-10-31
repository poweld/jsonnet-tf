{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrock_foundation_models",
          type:: "data",
          attributes:: ["by_customization_type", "by_inference_type", "by_output_modality", "by_provider", "id", "model_summaries", "region"],
        },
      },
    }
  ),
  withByCustomizationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"by_customization_type" expected to be of type "string"';
    {
      by_customization_type: converted,
    }
  ),
  withByInferenceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"by_inference_type" expected to be of type "string"';
    {
      by_inference_type: converted,
    }
  ),
  withByOutputModality(value):: (
    local converted = value;
    assert std.isString(converted) : '"by_output_modality" expected to be of type "string"';
    {
      by_output_modality: converted,
    }
  ),
  withByProvider(value):: (
    local converted = value;
    assert std.isString(converted) : '"by_provider" expected to be of type "string"';
    {
      by_provider: converted,
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
