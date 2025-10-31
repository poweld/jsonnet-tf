{
  local block = self,
  new(terraformName, functionArn, instanceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_lambda_function_association",
          type:: "data",
          attributes:: ["function_arn", "id", "instance_id", "region"],
        },
      },
    }
    + block.withFunctionArn(functionArn)
    + block.withInstanceId(instanceId)
  ),
  withFunctionArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_arn" expected to be of type "string"';
    {
      function_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
