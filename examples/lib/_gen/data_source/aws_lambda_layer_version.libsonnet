{
  local block = self,
  new(terraformName, layerName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_layer_version",
          type:: "data",
          attributes:: ["arn", "code_sha256", "compatible_architecture", "compatible_architectures", "compatible_runtime", "compatible_runtimes", "created_date", "description", "id", "layer_arn", "layer_name", "license_info", "region", "signing_job_arn", "signing_profile_version_arn", "source_code_hash", "source_code_size", "version"],
        },
      },
    }
    + block.withLayerName(layerName)
  ),
  withCompatibleArchitecture(value):: (
    local converted = value;
    assert std.isString(converted) : '"compatible_architecture" expected to be of type "string"';
    {
      compatible_architecture: converted,
    }
  ),
  withCompatibleRuntime(value):: (
    local converted = value;
    assert std.isString(converted) : '"compatible_runtime" expected to be of type "string"';
    {
      compatible_runtime: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLayerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"layer_name" expected to be of type "string"';
    {
      layer_name: converted,
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
  withVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version" expected to be of type "number"';
    {
      version: converted,
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
