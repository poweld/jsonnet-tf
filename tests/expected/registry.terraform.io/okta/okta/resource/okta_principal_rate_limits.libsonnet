{
  local block = self,

  new(terraformName, principalId, principalType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_principal_rate_limits",
          type:: "resource",
          attributes:: ["created_by", "created_date", "default_concurrency_percentage", "default_percentage", "id", "last_update", "last_updated_by", "org_id", "principal_id", "principal_type"],
        },
      },
    }
    + block.withPrincipalId(principalId)
    + block.withPrincipalType(principalType)
  ),

  "#withDefaultConcurrencyPercentage":: "The default percentage of a given concurrency limit threshold that the owning principal can consume.",
  withDefaultConcurrencyPercentage(value):: (
    assert std.isNumber(value) : '"default_concurrency_percentage" expected to be of type "number"';

    {
      default_concurrency_percentage: value,
    }
  ),

  "#withDefaultPercentage":: "The default percentage of a given rate limit threshold that the owning principal can consume.",
  withDefaultPercentage(value):: (
    assert std.isNumber(value) : '"default_percentage" expected to be of type "number"';

    {
      default_percentage: value,
    }
  ),

  "#withId":: "The unique identifier of the principle rate limit entity.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withPrincipalId":: "The unique identifier of the principal. This is the ID of the API token or OAuth 2.0 app.",
  withPrincipalId(value):: (
    assert std.isString(value) : '"principal_id" expected to be of type "string"';

    {
      principal_id: value,
    }
  ),

  "#withPrincipalType":: "The type of principal, either an API token or an OAuth 2.0 app.",
  withPrincipalType(value):: (
    assert std.isString(value) : '"principal_type" expected to be of type "string"';

    {
      principal_type: value,
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
