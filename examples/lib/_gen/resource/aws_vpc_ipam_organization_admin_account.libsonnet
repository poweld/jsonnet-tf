{
  local block = self,
  new(terraformName, delegatedAdminAccountId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_ipam_organization_admin_account",
          type:: "resource",
          attributes:: ["arn", "delegated_admin_account_id", "email", "id", "name", "service_principal"],
        },
      },
    }
    + block.withDelegatedAdminAccountId(delegatedAdminAccountId)
  ),
  withDelegatedAdminAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"delegated_admin_account_id" expected to be of type "string"';
    {
      delegated_admin_account_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
