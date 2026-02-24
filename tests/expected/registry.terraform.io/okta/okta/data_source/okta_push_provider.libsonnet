{
  local block = self,

  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_push_provider",
          type:: "data",
          attributes:: ["id", "last_updated_date", "name", "provider_type"],
        },
      },
    }
    + block.withId(id)
  ),

  "#withId":: "The unique identifier of the push provider.",
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

  configuration:: {
    local block = self,

    new():: (
      {}
    ),

    apnsConfiguration:: {
      local block = self,

      new():: (
        {}
      ),
    },
    fcmConfiguration:: {
      local block = self,

      new():: (
        {}
      ),

      serviceAccountJson:: {
        local block = self,

        new():: (
          {}
        ),
      },
      withServiceAccountJson(value):: (
        {
          service_account_json: value,
        }
      ),
    },
    withApnsConfiguration(value):: (
      {
        apns_configuration: value,
      }
    ),
    withFcmConfiguration(value):: (
      {
        fcm_configuration: value,
      }
    ),
  },
  withConfiguration(value):: (
    {
      configuration: value,
    }
  ),
}
