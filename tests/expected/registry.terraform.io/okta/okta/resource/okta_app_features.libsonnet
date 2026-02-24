{
  local block = self,

  new(terraformName, appId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_features",
          type:: "resource",
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

  "#withDescription":: "Description of the feature.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withName":: "Key name of the feature.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withStatus":: "Setting status.",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
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

        "#withStatus":: "Setting status.",
        withStatus(value):: (
          assert std.isString(value) : '"status" expected to be of type "string"';

          {
            status: value,
          }
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

        "#withAllowPartialMatch":: "Allows user import upon partial matching. Partial matching occurs when the first and last names of an imported user match those of an existing Okta user, even if the username or email attributes don't match.",
        withAllowPartialMatch(value):: (
          assert std.isBoolean(value) : '"allow_partial_match" expected to be of type "bool"';

          {
            allow_partial_match: value,
          }
        ),

        "#withAutoActivateNewUsers":: "If set to true, imported new users are automatically activated.",
        withAutoActivateNewUsers(value):: (
          assert std.isBoolean(value) : '"auto_activate_new_users" expected to be of type "bool"';

          {
            auto_activate_new_users: value,
          }
        ),

        "#withAutoconfirmExactMatch":: "If set to true, exact-matched users are automatically confirmed on activation. If set to false, exact-matched users need to be confirmed manually.",
        withAutoconfirmExactMatch(value):: (
          assert std.isBoolean(value) : '"autoconfirm_exact_match" expected to be of type "bool"';

          {
            autoconfirm_exact_match: value,
          }
        ),

        "#withAutoconfirmNewUsers":: "If set to true, imported new users are automatically confirmed on activation. This doesn't apply to imported users that already exist in Okta.",
        withAutoconfirmNewUsers(value):: (
          assert std.isBoolean(value) : '"autoconfirm_new_users" expected to be of type "bool"';

          {
            autoconfirm_new_users: value,
          }
        ),

        "#withAutoconfirmPartialMatch":: "If set to true, partially matched users are automatically confirmed on activation. If set to false, partially matched users need to be confirmed manually.",
        withAutoconfirmPartialMatch(value):: (
          assert std.isBoolean(value) : '"autoconfirm_partial_match" expected to be of type "bool"';

          {
            autoconfirm_partial_match: value,
          }
        ),

        "#withExactMatchCriteria":: "Determines the attribute to match users.",
        withExactMatchCriteria(value):: (
          assert std.isString(value) : '"exact_match_criteria" expected to be of type "string"';

          {
            exact_match_criteria: value,
          }
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

        "#withStatus":: "Setting status.",
        withStatus(value):: (
          assert std.isString(value) : '"status" expected to be of type "string"';

          {
            status: value,
          }
        ),

        fullImport:: {
          local block = self,

          new():: (
            {}
          ),

          "#withExpression":: "The import schedule in UNIX cron format.",
          withExpression(value):: (
            assert std.isString(value) : '"expression" expected to be of type "string"';

            {
              expression: value,
            }
          ),

          "#withTimezone":: "The import schedule time zone in Internet Assigned Numbers Authority (IANA) time zone name format.",
          withTimezone(value):: (
            assert std.isString(value) : '"timezone" expected to be of type "string"';

            {
              timezone: value,
            }
          ),
        },
        incrementalImport:: {
          local block = self,

          new():: (
            {}
          ),

          "#withExpression":: "The import schedule in UNIX cron format.",
          withExpression(value):: (
            assert std.isString(value) : '"expression" expected to be of type "string"';

            {
              expression: value,
            }
          ),

          "#withTimezone":: "The import schedule time zone in Internet Assigned Numbers Authority (IANA) time zone name format.",
          withTimezone(value):: (
            assert std.isString(value) : '"timezone" expected to be of type "string"';

            {
              timezone: value,
            }
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

        "#withUsernameExpression":: "For usernameFormat=CUSTOM, specifies the Okta Expression Language statement for a username format that imported users use to sign in to Okta.",
        withUsernameExpression(value):: (
          assert std.isString(value) : '"username_expression" expected to be of type "string"';

          {
            username_expression: value,
          }
        ),

        "#withUsernameFormat":: "Determines the username format when users sign in to Okta.",
        withUsernameFormat(value):: (
          assert std.isString(value) : '"username_format" expected to be of type "string"';

          {
            username_format: value,
          }
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

        "#withStatus":: "Setting status.",
        withStatus(value):: (
          assert std.isString(value) : '"status" expected to be of type "string"';

          {
            status: value,
          }
        ),
      },
      password:: {
        local block = self,

        new():: (
          {}
        ),

        "#withChange":: "Determines whether a change in a user's password also updates the user's password in the app.",
        withChange(value):: (
          assert std.isString(value) : '"change" expected to be of type "string"';

          {
            change: value,
          }
        ),

        "#withSeed":: "Determines whether the generated password is the user's Okta password or a randomly generated password.",
        withSeed(value):: (
          assert std.isString(value) : '"seed" expected to be of type "string"';

          {
            seed: value,
          }
        ),

        "#withStatus":: "Setting status.",
        withStatus(value):: (
          assert std.isString(value) : '"status" expected to be of type "string"';

          {
            status: value,
          }
        ),
      },
      profile:: {
        local block = self,

        new():: (
          {}
        ),

        "#withStatus":: "Setting status.",
        withStatus(value):: (
          assert std.isString(value) : '"status" expected to be of type "string"';

          {
            status: value,
          }
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
