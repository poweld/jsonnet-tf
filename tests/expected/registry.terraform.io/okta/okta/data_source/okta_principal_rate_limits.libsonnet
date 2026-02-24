{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_principal_rate_limits",
          type:: "data",
          attributes:: ["created_by", "created_date", "default_concurrency_percentage", "default_percentage", "id", "last_update", "last_updated_by", "org_id", "principal_id", "principal_type"],
        },
      },
    }
    + block.withId(id)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
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
