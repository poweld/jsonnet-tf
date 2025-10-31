{
  local block = self,
  new(terraformName, functionName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_runtime_management_config",
          type:: "resource",
          attributes:: ["function_arn", "function_name", "qualifier", "region", "runtime_version_arn", "update_runtime_on"],
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
  withRuntimeVersionArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime_version_arn" expected to be of type "string"';
    {
      runtime_version_arn: converted,
    }
  ),
  withUpdateRuntimeOn(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_runtime_on" expected to be of type "string"';
    {
      update_runtime_on: converted,
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
