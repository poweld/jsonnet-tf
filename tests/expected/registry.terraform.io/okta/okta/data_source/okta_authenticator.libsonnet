{
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_authenticator",
          type:: "data",
          attributes:: ["id", "key", "name", "provider_auth_port", "provider_hostname", "provider_instance_id", "provider_json", "provider_type", "provider_user_name_template", "settings", "status", "type"],
        },
      },
    }
  ),

  "#withId":: "ID of the authenticator.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withKey":: "A human-readable string that identifies the authenticator.",
  withKey(value):: (
    assert std.isString(value) : '"key" expected to be of type "string"';

    {
      key: value,
    }
  ),

  "#withName":: "Name of the authenticator.",
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
}
