{
  local block = self,
  new(terraformName, adminAccountId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_guardduty_organization_admin_account",
          type:: "resource",
          attributes:: ["admin_account_id", "id", "region"],
        },
      },
    }
    + block.withAdminAccountId(adminAccountId)
  ),
  withAdminAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_account_id" expected to be of type "string"';
    {
      admin_account_id: converted,
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
