{
  local block = self,
  new(terraformName, appId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_metadata_saml",
          type:: "data",
          attributes:: ["app_id", "certificate", "entity_id", "http_post_binding", "http_redirect_binding", "id", "key_id", "metadata", "want_authn_requests_signed"],
        },
      },
    }
    + block.withAppId(appId)
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
