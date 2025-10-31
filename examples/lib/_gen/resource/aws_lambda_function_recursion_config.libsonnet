{
  local block = self,
  new(terraformName, functionName, recursiveLoop):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_function_recursion_config",
          type:: "resource",
          attributes:: ["function_name", "recursive_loop", "region"],
        },
      },
    }
    + block.withFunctionName(functionName)
    + block.withRecursiveLoop(recursiveLoop)
  ),
  withFunctionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  withRecursiveLoop(value):: (
    local converted = value;
    assert std.isString(converted) : '"recursive_loop" expected to be of type "string"';
    {
      recursive_loop: converted,
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
