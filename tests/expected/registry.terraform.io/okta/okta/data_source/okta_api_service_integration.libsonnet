{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_api_service_integration",
          type:: "data",
          attributes:: ["config_guide_url", "created", "created_by", "id", "name", "type"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The ID of the API service integration",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
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

    new():: (
      {}
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
