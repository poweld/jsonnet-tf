{
  local block = self,

  new(terraformName, id, resourceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_condition",
          type:: "data",
          attributes:: ["created", "created_by", "id", "last_updated", "last_updated_by", "name", "priority", "resource_id", "status"],
        },
      },
    }
    + block.withId(id)
    + block.withResourceId(resourceId)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withResourceId":: "The id of the resource in Okta ID format.",
  withResourceId(value):: (
    assert std.isString(value) : '"resource_id" expected to be of type "string"';

    {
      resource_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  accessScopeSettings:: {
    local block = self,

    new():: (
      {}
    ),

    ids:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ids: converted,
      }
    ),
    withIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ids+: converted,
      }
    ),
  },
  requesterSettings:: {
    local block = self,

    new():: (
      {}
    ),

    ids:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ids: converted,
      }
    ),
    withIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ids+: converted,
      }
    ),
  },
  withAccessScopeSettings(value):: (
    {
      access_scope_settings: value,
    }
  ),
  withRequesterSettings(value):: (
    {
      requester_settings: value,
    }
  ),
}
