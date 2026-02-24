{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_entitlement_bundle",
          type:: "data",
          attributes:: ["created", "created_by", "description", "id", "last_updated", "last_updated_by", "name", "status", "target_resource_orn"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The ID of the Entitlement Bundle to retrieve.",
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

  entitlements:: {
    local block = self,

    new():: (
      {}
    ),

    values:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        values+: converted,
      }
    ),
  },
  target:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withEntitlements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      entitlements: converted,
    }
  ),
  withTarget(value):: (
    {
      target: value,
    }
  ),
  withEntitlementsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      entitlements+: converted,
    }
  ),
}
