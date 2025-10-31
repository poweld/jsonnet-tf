{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_costoptimizationhub_enrollment_status",
          type:: "resource",
          attributes:: ["id", "include_member_accounts", "status"],
        },
      },
    }
  ),
  withIncludeMemberAccounts(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_member_accounts" expected to be of type "bool"';
    {
      include_member_accounts: converted,
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
