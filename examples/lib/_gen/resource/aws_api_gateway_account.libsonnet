{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_account",
          type:: "resource",
          attributes:: ["api_key_version", "cloudwatch_role_arn", "features", "id", "region", "throttle_settings"],
        },
      },
    }
  ),
  withCloudwatchRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_role_arn" expected to be of type "string"';
    {
      cloudwatch_role_arn: converted,
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
