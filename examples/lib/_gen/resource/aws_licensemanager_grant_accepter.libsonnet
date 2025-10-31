{
  local block = self,
  new(terraformName, grantArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_licensemanager_grant_accepter",
          type:: "resource",
          attributes:: ["allowed_operations", "grant_arn", "home_region", "id", "license_arn", "name", "parent_arn", "principal", "region", "status", "version"],
        },
      },
    }
    + block.withGrantArn(grantArn)
  ),
  "#withGrantArn":: "Amazon Resource Name (ARN) of the grant.",
  withGrantArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"grant_arn" expected to be of type "string"';
    {
      grant_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
