{
  local block = self,
  new(terraformName, functionName, provisionedConcurrentExecutions, qualifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_provisioned_concurrency_config",
          type:: "resource",
          attributes:: ["function_name", "id", "provisioned_concurrent_executions", "qualifier", "region", "skip_destroy"],
        },
      },
    }
    + block.withFunctionName(functionName)
    + block.withProvisionedConcurrentExecutions(provisionedConcurrentExecutions)
    + block.withQualifier(qualifier)
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
  withProvisionedConcurrentExecutions(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provisioned_concurrent_executions" expected to be of type "number"';
    {
      provisioned_concurrent_executions: converted,
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
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
