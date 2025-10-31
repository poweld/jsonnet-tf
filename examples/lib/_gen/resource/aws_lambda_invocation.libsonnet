{
  local block = self,
  new(terraformName, functionName, input):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_invocation",
          type:: "resource",
          attributes:: ["function_name", "id", "input", "lifecycle_scope", "qualifier", "region", "result", "terraform_key", "triggers"],
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
  withLifecycleScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"lifecycle_scope" expected to be of type "string"';
    {
      lifecycle_scope: converted,
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
  withTerraformKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"terraform_key" expected to be of type "string"';
    {
      terraform_key: converted,
    }
  ),
  withTriggers(value):: (
    local converted = value;
    assert std.isObject(converted) : '"triggers" expected to be of type "map"';
    {
      triggers: converted,
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
