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
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKey":: "A human-readable string that identifies the authenticator.",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withName":: "Name of the authenticator.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
