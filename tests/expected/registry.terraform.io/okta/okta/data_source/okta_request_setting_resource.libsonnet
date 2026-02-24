{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_request_setting_resource",
          type:: "data",
          attributes:: ["id"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The id of the resource in Okta ID format.",
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

  requestOnBehalfOfSettings:: {
    local block = self,

    new():: (
      {}
    ),

    onlyFor:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withOnlyFor(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        only_for: converted,
      }
    ),
    withOnlyForMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        only_for+: converted,
      }
    ),
  },
  riskSettings:: {
    local block = self,

    new():: (
      {}
    ),

    defaultSetting:: {
      local block = self,

      new():: (
        {}
      ),

      accessDurationSettings:: {
        local block = self,

        new():: (
          {}
        ),
      },
      withAccessDurationSettings(value):: (
        {
          access_duration_settings: value,
        }
      ),
    },
    withDefaultSetting(value):: (
      {
        default_setting: value,
      }
    ),
  },
  validAccessDurationSettings:: {
    local block = self,

    new():: (
      {}
    ),

    supportedTypes:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withSupportedTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        supported_types: converted,
      }
    ),
    withSupportedTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        supported_types+: converted,
      }
    ),
  },
  validAccessScopeSettings:: {
    local block = self,

    new():: (
      {}
    ),
  },
  validRequesterSettings:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withRequestOnBehalfOfSettings(value):: (
    {
      request_on_behalf_of_settings: value,
    }
  ),
  withRiskSettings(value):: (
    {
      risk_settings: value,
    }
  ),
  withValidAccessDurationSettings(value):: (
    {
      valid_access_duration_settings: value,
    }
  ),
  withValidAccessScopeSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      valid_access_scope_settings: converted,
    }
  ),
  withValidRequesterSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      valid_requester_settings: converted,
    }
  ),
  withValidAccessScopeSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      valid_access_scope_settings+: converted,
    }
  ),
  withValidRequesterSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      valid_requester_settings+: converted,
    }
  ),
}
