{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_idp_oidc",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "authorization_binding", "authorization_url", "client_id", "client_secret", "id", "issuer_mode", "issuer_url", "jwks_binding", "jwks_url", "max_clock_skew", "protocol_type", "scopes", "token_binding", "token_url", "type", "user_info_binding", "user_info_url"],
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
