{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_idp_saml",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "acs_binding", "acs_type", "audience", "id", "issuer", "issuer_mode", "kid", "sso_binding", "sso_destination", "sso_url", "subject_filter", "subject_format", "type"],
      },
    }
    + block.withName(name)
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
}
