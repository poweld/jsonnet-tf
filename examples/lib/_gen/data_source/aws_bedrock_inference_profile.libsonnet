{
  local block = self,
  new(terraformName, inferenceProfileId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrock_inference_profile",
          type:: "data",
          attributes:: ["created_at", "description", "inference_profile_arn", "inference_profile_id", "inference_profile_name", "models", "region", "status", "type", "updated_at"],
        },
      },
    }
    + block.withInferenceProfileId(inferenceProfileId)
  ),
  withInferenceProfileId(value):: (
    local converted = value;
    assert std.isString(converted) : '"inference_profile_id" expected to be of type "string"';
    {
      inference_profile_id: converted,
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
