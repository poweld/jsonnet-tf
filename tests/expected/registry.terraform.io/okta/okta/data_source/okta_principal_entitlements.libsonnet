{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_principal_entitlements",
          type:: "data",
          attributes:: ["id"],
        },
      },
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  data:: {
    local block = self,

    new():: (
      {}
    ),

    parent:: {
      local block = self,

      new():: (
        {}
      ),
    },
    targetPrincipal:: {
      local block = self,

      new():: (
        {}
      ),
    },
    values:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withParent(value):: (
      {
        parent: value,
      }
    ),
    withTargetPrincipal(value):: (
      {
        target_principal: value,
      }
    ),
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
  parent:: {
    local block = self,

    new(externalId, type):: (
      {}
      + block.withExternalId(externalId)
      + block.withType(type)
    ),

    withExternalId(value):: (
      assert std.isString(value) : '"external_id" expected to be of type "string"';

      {
        external_id: value,
      }
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  targetPrincipal:: {
    local block = self,

    new(externalId, type):: (
      {}
      + block.withExternalId(externalId)
      + block.withType(type)
    ),

    withExternalId(value):: (
      assert std.isString(value) : '"external_id" expected to be of type "string"';

      {
        external_id: value,
      }
    ),

    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),
  },
  withData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data: converted,
    }
  ),
  withParent(value):: (
    {
      parent: value,
    }
  ),
  withTargetPrincipal(value):: (
    {
      target_principal: value,
    }
  ),
  withDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data+: converted,
    }
  ),
}
