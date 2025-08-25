{
  local block = self,
  new(name, auth_server_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_auth_server_scope",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "auth_server_id", "consent", "default", "description", "display_name", "id", "metadata_publish", "optional", "system"],
      },
    }
    + block.withName(name)
    + block.withAuthServerId(auth_server_id)
  ),
  "#withAuthServerId":: "Auth server ID",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  "#withConsent":: "Indicates whether a consent dialog is needed for the scope. It can be set to `REQUIRED` or `IMPLICIT`. Default: `IMPLICIT`",
  withConsent(value):: (
    local converted = value;
    assert std.isString(converted) : '"consent" expected to be of type "string"';
    {
      consent: converted,
    }
  ),
  "#withDefault":: "A default scope will be returned in an access token when the client omits the scope parameter in a token request, provided this scope is allowed as part of the access policy rule.",
  withDefault(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default" expected to be of type "bool"';
    {
      default: converted,
    }
  ),
  "#withDescription":: "Description of the Auth Server Scope.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withDisplayName":: "Name of the end user displayed in a consent dialog box",
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withMetadataPublish":: "Whether to publish metadata or not. It can be set to `ALL_CLIENTS` or `NO_CLIENTS`. Default: `ALL_CLIENTS`",
  withMetadataPublish(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata_publish" expected to be of type "string"';
    {
      metadata_publish: converted,
    }
  ),
  "#withName":: "Auth server scope name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withOptional":: "Whether the scope optional",
  withOptional(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"optional" expected to be of type "bool"';
    {
      optional: converted,
    }
  ),
}
