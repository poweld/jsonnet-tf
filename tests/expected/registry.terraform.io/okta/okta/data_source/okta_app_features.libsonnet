{
  local block = self,

  new(terraformName, appId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_features",
          type:: "data",
          attributes:: ["app_id", "description", "id", "name", "status"],
        },
      },
    }
    + block.withAppId(appId)
    + block.withName(name)
  ),

  "#withAppId":: "`app_id` used to specify the app ID",
  withAppId(value):: (
    assert std.isString(value) : '"app_id" expected to be of type "string"';

    {
      app_id: value,
    }
  ),

  "#withName":: "Key name of the feature.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  capabilities:: {
    local block = self,

    new():: (
      {}
    ),

    create:: {
      local block = self,

      new():: (
        {}
      ),

      lifecycleCreate:: {
        local block = self,

        new():: (
          {}
        ),
      },
      withLifecycleCreate(value):: (
        {
          lifecycle_create: value,
        }
      ),
    },
    importRules:: {
      local block = self,

      new():: (
        {}
      ),

      userCreateAndMatch:: {
        local block = self,

        new():: (
          {}
        ),
      },
      withUserCreateAndMatch(value):: (
        {
          user_create_and_match: value,
        }
      ),
    },
    importSettings:: {
      local block = self,

      new():: (
        {}
      ),

      schedule:: {
        local block = self,

        new():: (
          {}
        ),

        fullImport:: {
          local block = self,

          new():: (
            {}
          ),
        },
        incrementalImport:: {
          local block = self,

          new():: (
            {}
          ),
        },
        withFullImport(value):: (
          {
            full_import: value,
          }
        ),
        withIncrementalImport(value):: (
          {
            incremental_import: value,
          }
        ),
      },
      username:: {
        local block = self,

        new():: (
          {}
        ),
      },
      withSchedule(value):: (
        {
          schedule: value,
        }
      ),
      withUsername(value):: (
        {
          username: value,
        }
      ),
    },
    update:: {
      local block = self,

      new():: (
        {}
      ),

      lifecycleDeactivate:: {
        local block = self,

        new():: (
          {}
        ),
      },
      password:: {
        local block = self,

        new():: (
          {}
        ),
      },
      profile:: {
        local block = self,

        new():: (
          {}
        ),
      },
      withLifecycleDeactivate(value):: (
        {
          lifecycle_deactivate: value,
        }
      ),
      withPassword(value):: (
        {
          password: value,
        }
      ),
      withProfile(value):: (
        {
          profile: value,
        }
      ),
    },
    withCreate(value):: (
      {
        create: value,
      }
    ),
    withImportRules(value):: (
      {
        import_rules: value,
      }
    ),
    withImportSettings(value):: (
      {
        import_settings: value,
      }
    ),
    withUpdate(value):: (
      {
        update: value,
      }
    ),
  },
  withCapabilities(value):: (
    {
      capabilities: value,
    }
  ),
}
