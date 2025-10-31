{
  local block = self,
  new(terraformName, autoScalingConfigurationArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apprunner_default_auto_scaling_configuration_version",
          type:: "resource",
          attributes:: ["auto_scaling_configuration_arn", "id", "region"],
        },
      },
    }
    + block.withAutoScalingConfigurationArn(autoScalingConfigurationArn)
  ),
  withAutoScalingConfigurationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_scaling_configuration_arn" expected to be of type "string"';
    {
      auto_scaling_configuration_arn: converted,
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
