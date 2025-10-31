{
  local block = self,
  new(terraformName, accountId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudtrail_organization_delegated_admin_account",
          type:: "resource",
          attributes:: ["account_id", "arn", "email", "id", "name", "service_principal"],
        },
      },
    }
    + block.withAccountId(accountId)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
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
