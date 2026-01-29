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
    assert std.isString(value) : '"app_id" expected to be of type "string"';

    {
      app_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withKeyId":: "Certificate Key ID.",
  withKeyId(value):: (
    assert std.isString(value) : '"key_id" expected to be of type "string"';

    {
      key_id: value,
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
