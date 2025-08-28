{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_auth_server",
        type:: "data",
        attributes:: ["audiences", "credentials_last_rotated", "credentials_next_rotation", "credentials_rotation_mode", "description", "id", "issuer", "issuer_mode", "kid", "name", "status"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "The name of the auth server to retrieve.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
