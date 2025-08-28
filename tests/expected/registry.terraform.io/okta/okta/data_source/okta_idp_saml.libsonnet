{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_idp_saml",
        type:: "data",
        attributes:: ["acs_binding", "acs_type", "audience", "id", "issuer", "issuer_mode", "kid", "name", "sso_binding", "sso_destination", "sso_url", "subject_filter", "subject_format", "type"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withId":: "Id of idp.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of the idp.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
