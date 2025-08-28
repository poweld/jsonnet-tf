{
  local block = self,
  new(terraformName, clientId, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_oauth_role_assignment",
          type:: "resource",
          attributes:: ["client_id", "id", "label", "resource_set", "role", "status", "type"],
        },
      },
    }
    + block.withClientId(clientId)
    + block.withType(type)
  ),
  "#withClientId":: "Client ID for the role to be assigned to",
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  "#withResourceSet":: "Resource set for the custom role to assign, must be the ID of the created resource set.",
  withResourceSet(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set" expected to be of type "string"';
    {
      resource_set: converted,
    }
  ),
  "#withRole":: "Custom Role ID",
  withRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  "#withType":: "Role type to assign. This can be one of the standard Okta roles, such as `HELP_DESK_ADMIN`, or `CUSTOM`. Using custom requires the `resource_set` and `role` attributes to be set.",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
