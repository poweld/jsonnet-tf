{
  local block = self,
  new(name, app_id, issuer, scopes):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_oauth_api_scope",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["app_id", "id", "issuer", "scopes"],
      },
    }
    + block.withAppId(app_id)
    + block.withIssuer(issuer)
    + block.withScopes(scopes)
  ),
  "#withAppId":: "ID of the application.",
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
  "#withIssuer":: "The issuer of your Org Authorization Server, your Org URL.",
  withIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
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
}
