{
  local block = self,

  new(terraformName, appId, uri):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_oauth_redirect_uri",
          type:: "resource",
          attributes:: ["app_id", "id", "uri"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withUri(uri)
  ),

  "#withAppId":: "OAuth application ID.",
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

  "#withUri":: "Redirect URI to append to Okta OIDC application.",
  withUri(value):: (
    assert std.isString(value) : '"uri" expected to be of type "string"';

    {
      uri: value,
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
