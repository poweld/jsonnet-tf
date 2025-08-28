{
  local block = self,
  new(terraformName, name, origin, scopes):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_trusted_origin",
          type:: "resource",
          attributes:: ["active", "id", "name", "origin", "scopes"],
        },
      },
    }
    + block.withName(name)
    + block.withOrigin(origin)
    + block.withScopes(scopes)
  ),
  "#withActive":: "Whether the Trusted Origin is active or not - can only be issued post-creation. By default, it is `true`.",
  withActive(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
    {
      active: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Unique name for this trusted origin",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withOrigin":: "Unique origin URL for this trusted origin",
  withOrigin(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin" expected to be of type "string"';
    {
      origin: converted,
    }
  ),
  "#withScopes":: "Scopes of the Trusted Origin - can either be `CORS` and/or `REDIRECT`",
  withScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scopes" expected to be of type "list"';
    {
      scopes: converted,
    }
  ),
  "#withScopesMixin":: "Scopes of the Trusted Origin - can either be `CORS` and/or `REDIRECT`",
  withScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scopes" expected to be of type "list"';
    {
      scopes+: converted,
    }
  ),
}
