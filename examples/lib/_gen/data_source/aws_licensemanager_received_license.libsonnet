{
  local block = self,
  new(terraformName, licenseArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_licensemanager_received_license",
          type:: "data",
          attributes:: ["beneficiary", "consumption_configuration", "create_time", "entitlements", "home_region", "id", "issuer", "license_arn", "license_metadata", "license_name", "product_name", "product_sku", "received_metadata", "region", "status", "validity", "version"],
        },
      },
    }
    + block.withLicenseArn(licenseArn)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLicenseArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_arn" expected to be of type "string"';
    {
      license_arn: converted,
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
