{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_realm_assignment",
          type:: "data",
          attributes:: ["condition_expression", "id", "is_default", "name", "priority", "profile_source_id", "realm_id", "status"],
        },
      },
    }
  ),

  "#withName":: "The name of the Okta Realm Assignment.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
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
