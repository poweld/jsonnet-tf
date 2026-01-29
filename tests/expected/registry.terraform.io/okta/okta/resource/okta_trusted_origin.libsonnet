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
    assert std.isBoolean(value) : '"active" expected to be of type "bool"';

    {
      active: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Unique name for this trusted origin",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withOrigin":: "Unique origin URL for this trusted origin",
  withOrigin(value):: (
    assert std.isString(value) : '"origin" expected to be of type "string"';

    {
      origin: value,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
