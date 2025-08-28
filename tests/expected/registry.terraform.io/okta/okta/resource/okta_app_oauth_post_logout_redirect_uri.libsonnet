{
  local block = self,
  new(terraformName, appId, uri):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_oauth_post_logout_redirect_uri",
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
  "#withUri":: "Post Logout Redirect URI to append to Okta OIDC application.",
  withUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
}
