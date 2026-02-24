{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_entitlement_bundle",
          type:: "resource",
          attributes:: ["description", "id", "name", "status", "target_resource_orn"],
        },
      },
    }
    + block.withName(name)
  ),

  "#withDescription":: "Description of the entitlement bundle",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withName":: "Name of the entitlement bundle",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withStatus":: "status of the entitlement bundle",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withTargetResourceOrn":: "The ORN of the target resource. Required when updating the entitlement bundle",
  withTargetResourceOrn(value):: (
    assert std.isString(value) : '"target_resource_orn" expected to be of type "string"';

    {
      target_resource_orn: value,
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

    new(id):: (
      {}
      + block.withId(id)
    ),

    "#withId":: "Entitlement ID",
    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    values:: {
      local block = self,

      new(id):: (
        {}
        + block.withId(id)
      ),

      "#withId":: "Entitlement value ID",
      withId(value):: (
        assert std.isString(value) : '"id" expected to be of type "string"';

        {
          id: value,
        }
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

    new(externalId, type):: (
      {}
      + block.withExternalId(externalId)
      + block.withType(type)
    ),

    "#withExternalId":: "External ID of the target resource",
    withExternalId(value):: (
      assert std.isString(value) : '"external_id" expected to be of type "string"';

      {
        external_id: value,
      }
    ),

    "#withType":: "Type of the target resource",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
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
