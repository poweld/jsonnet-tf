{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_organization",
          type:: "resource",
          attributes:: ["accounts", "arn", "aws_service_access_principals", "enabled_policy_types", "feature_set", "id", "master_account_arn", "master_account_email", "master_account_id", "master_account_name", "non_master_accounts", "roots"],
        },
      },
    }
  ),
  withAwsServiceAccessPrincipals(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aws_service_access_principals" expected to be of type "set"';
    {
      aws_service_access_principals: converted,
    }
  ),
  withAwsServiceAccessPrincipalsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aws_service_access_principals" expected to be of type "set"';
    {
      aws_service_access_principals+: converted,
    }
  ),
  withEnabledPolicyTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_policy_types" expected to be of type "set"';
    {
      enabled_policy_types: converted,
    }
  ),
  withEnabledPolicyTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_policy_types" expected to be of type "set"';
    {
      enabled_policy_types+: converted,
    }
  ),
  withFeatureSet(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_set" expected to be of type "string"';
    {
      feature_set: converted,
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
