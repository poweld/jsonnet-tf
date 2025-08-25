{
  local block = self,
  new(terraformName, authServerId, trusted):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_trusted_server",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["auth_server_id", "id", "trusted"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAuthServerId(authServerId)
    + block.withTrusted(trusted)
  ),
  "#withAuthServerId":: "Authorization server ID",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  "#withTrusted":: "A list of the authorization server IDs user want to trust",
  withTrusted(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trusted" expected to be of type "set"';
    {
      trusted: converted,
    }
  ),
  "#withTrustedMixin":: "A list of the authorization server IDs user want to trust",
  withTrustedMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trusted" expected to be of type "set"';
    {
      trusted+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
