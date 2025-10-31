{
  local block = self,
  new(terraformName, licenseConfigurationArn, resourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_licensemanager_association",
          type:: "resource",
          attributes:: ["id", "license_configuration_arn", "region", "resource_arn"],
        },
      },
    }
    + block.withLicenseConfigurationArn(licenseConfigurationArn)
    + block.withResourceArn(resourceArn)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLicenseConfigurationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_configuration_arn" expected to be of type "string"';
    {
      license_configuration_arn: converted,
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
  withResourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
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
