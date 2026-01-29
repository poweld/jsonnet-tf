{
  local block = self,

  new(terraformName, appId, issuer, scopes):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_oauth_api_scope",
          type:: "resource",
          attributes:: ["app_id", "id", "issuer", "scopes"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withIssuer(issuer)
    + block.withScopes(scopes)
  ),

  "#withAppId":: "ID of the application.",
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

  "#withIssuer":: "The issuer of your Org Authorization Server, your Org URL.",
  withIssuer(value):: (
    assert std.isString(value) : '"issuer" expected to be of type "string"';

    {
      issuer: value,
    }
  ),

  "#withScopes":: "Scopes of the application for which consent is granted.",
  withScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';

    {
      scopes: converted,
    }
  ),

  "#withScopesMixin":: "Scopes of the application for which consent is granted.",
  withScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';

    {
      scopes+: converted,
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
