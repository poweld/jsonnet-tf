{
  local block = self,

  new(terraformName, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_api_service_integration",
          type:: "resource",
          attributes:: ["id", "name", "type"],
        },
      },
    }
    + block.withType(type)
  ),

  "#withType":: "The type of the API service integration. This string is an underscore-concatenated, lowercased API service integration name.",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  grantedScopes:: {
    local block = self,

    new(scope):: (
      {}
      + block.withScope(scope)
    ),

    "#withScope":: "The scope of the API service integration",
    withScope(value):: (
      assert std.isString(value) : '"scope" expected to be of type "string"';

      {
        scope: value,
      }
    ),
  },
  withGrantedScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      granted_scopes: converted,
    }
  ),
  withGrantedScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      granted_scopes+: converted,
    }
  ),
}
