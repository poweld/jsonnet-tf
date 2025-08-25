{
  local block = self,
  new(terraformName, authServerId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_auth_server_claims",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["auth_server_id", "claims", "id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAuthServerId(authServerId)
  ),
  "#withAuthServerId":: "Auth server ID",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
