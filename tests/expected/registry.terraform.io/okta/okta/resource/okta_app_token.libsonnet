{
  local block = self,

  new(terraformName, clientId, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_token",
          type:: "resource",
          attributes:: ["client_id", "id", "status", "user_id"],
        },
      },
    }
    + block.withClientId(clientId)
    + block.withId(id)
  ),

  "#withClientId":: "The unique Okta ID of the application associated with this token.",
  withClientId(value):: (
    assert std.isString(value) : '"client_id" expected to be of type "string"';

    {
      client_id: value,
    }
  ),

  "#withId":: "The unique Okta ID of this key record",
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
}
