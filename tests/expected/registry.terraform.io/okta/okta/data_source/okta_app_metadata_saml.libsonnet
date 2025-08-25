{
  local block = self,
  new(name, app_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_metadata_saml",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["app_id", "certificate", "entity_id", "http_post_binding", "http_redirect_binding", "id", "key_id", "metadata", "want_authn_requests_signed"],
      },
    }
    + block.withAppId(app_id)
  ),
  "#withAppId":: "The application ID.",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKeyId":: "Certificate Key ID.",
  withKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
}
