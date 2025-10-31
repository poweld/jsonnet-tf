{
  local block = self,
  new(terraformName, functionName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_function",
          type:: "data",
          attributes:: ["architectures", "arn", "code_sha256", "code_signing_config_arn", "dead_letter_config", "description", "environment", "ephemeral_storage", "file_system_config", "function_name", "handler", "id", "image_uri", "invoke_arn", "kms_key_arn", "last_modified", "layers", "logging_config", "memory_size", "qualified_arn", "qualified_invoke_arn", "qualifier", "region", "reserved_concurrent_executions", "role", "runtime", "signing_job_arn", "signing_profile_version_arn", "source_code_hash", "source_code_size", "source_kms_key_arn", "tags", "timeout", "tracing_config", "version", "vpc_config"],
        },
      },
    }
    + block.withFunctionName(functionName)
  ),
  withFunctionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withQualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
