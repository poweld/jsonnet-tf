{
  local block = self,
  new(terraformName, accountId, servicePrincipal):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_delegated_administrator",
          type:: "resource",
          attributes:: ["account_id", "arn", "delegation_enabled_date", "email", "id", "joined_method", "joined_timestamp", "name", "service_principal", "status"],
        },
      },
    }
    + block.withAccountId(accountId)
    + block.withServicePrincipal(servicePrincipal)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withServicePrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_principal" expected to be of type "string"';
    {
      service_principal: converted,
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
