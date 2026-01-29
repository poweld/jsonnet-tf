{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_idp_saml",
          type:: "data",
          attributes:: ["acs_binding", "acs_type", "audience", "id", "issuer", "issuer_mode", "kid", "name", "sso_binding", "sso_destination", "sso_url", "subject_filter", "subject_format", "type"],
        },
      },
    }
  ),

  "#withId":: "Id of idp.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Name of the idp.",
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
