{
  local block = self,

  new(terraformName, defaultMode):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_rate_limiting",
          type:: "resource",
          attributes:: ["default_mode", "id"],
        },
      },
    }
    + block.withDefaultMode(defaultMode)
  ),

  withDefaultMode(value):: (
    assert std.isString(value) : '"default_mode" expected to be of type "string"';

    {
      default_mode: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  useCaseModeOverrides:: {
    local block = self,

    new():: (
      {}
    ),

    withLoginPage(value):: (
      assert std.isString(value) : '"login_page" expected to be of type "string"';

      {
        login_page: value,
      }
    ),

    withOauth2Authorize(value):: (
      assert std.isString(value) : '"oauth2_authorize" expected to be of type "string"';

      {
        oauth2_authorize: value,
      }
    ),

    withOieAppIntent(value):: (
      assert std.isString(value) : '"oie_app_intent" expected to be of type "string"';

      {
        oie_app_intent: value,
      }
    ),
  },
  withUseCaseModeOverrides(value):: (
    {
      use_case_mode_overrides: value,
    }
  ),
}
