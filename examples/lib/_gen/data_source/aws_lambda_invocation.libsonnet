{
  local block = self,
  new(terraformName, functionName, input):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_invocation",
          type:: "data",
          attributes:: ["function_name", "id", "input", "qualifier", "region", "result"],
        },
      },
    }
    + block.withFunctionName(functionName)
    + block.withInput(input)
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
  withInput(value):: (
    local converted = value;
    assert std.isString(converted) : '"input" expected to be of type "string"';
    {
      input: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
