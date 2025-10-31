{
  local block = self,
  new(terraformName, accountAlias):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_account_alias",
          type:: "resource",
          attributes:: ["account_alias", "id"],
        },
      },
    }
    + block.withAccountAlias(accountAlias)
  ),
  withAccountAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_alias" expected to be of type "string"';
    {
      account_alias: converted,
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
