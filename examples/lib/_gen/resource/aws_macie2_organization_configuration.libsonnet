{
  local block = self,
  new(terraformName, autoEnable):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_macie2_organization_configuration",
          type:: "resource",
          attributes:: ["auto_enable", "region"],
        },
      },
    }
    + block.withAutoEnable(autoEnable)
  ),
  "#withAutoEnable":: "Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations",
  withAutoEnable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_enable" expected to be of type "bool"';
    {
      auto_enable: converted,
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
