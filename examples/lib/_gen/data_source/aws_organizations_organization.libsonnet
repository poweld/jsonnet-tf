{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_organization",
          type:: "data",
          attributes:: ["accounts", "arn", "aws_service_access_principals", "enabled_policy_types", "feature_set", "id", "master_account_arn", "master_account_email", "master_account_id", "master_account_name", "non_master_accounts", "roots"],
        },
      },
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
