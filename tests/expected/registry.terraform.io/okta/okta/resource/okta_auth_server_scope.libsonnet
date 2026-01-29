{
  local block = self,

  new(terraformName, authServerId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_auth_server_scope",
          type:: "resource",
          attributes:: ["auth_server_id", "consent", "default", "description", "display_name", "id", "metadata_publish", "name", "optional", "system"],
        },
      },
    }
    + block.withAuthServerId(authServerId)
    + block.withName(name)
  ),

  "#withAuthServerId":: "Auth server ID",
  withAuthServerId(value):: (
    assert std.isString(value) : '"auth_server_id" expected to be of type "string"';

    {
      auth_server_id: value,
    }
  ),

  "#withConsent":: "Indicates whether a consent dialog is needed for the scope. It can be set to `REQUIRED` or `IMPLICIT`. Default: `IMPLICIT`",
  withConsent(value):: (
    assert std.isString(value) : '"consent" expected to be of type "string"';

    {
      consent: value,
    }
  ),

  "#withDefault":: "A default scope will be returned in an access token when the client omits the scope parameter in a token request, provided this scope is allowed as part of the access policy rule.",
  withDefault(value):: (
    assert std.isBoolean(value) : '"default" expected to be of type "bool"';

    {
      default: value,
    }
  ),

  "#withDescription":: "Description of the Auth Server Scope.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withDisplayName":: "Name of the end user displayed in a consent dialog box",
  withDisplayName(value):: (
    assert std.isString(value) : '"display_name" expected to be of type "string"';

    {
      display_name: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withMetadataPublish":: "Whether to publish metadata or not. It can be set to `ALL_CLIENTS` or `NO_CLIENTS`. Default: `ALL_CLIENTS`",
  withMetadataPublish(value):: (
    assert std.isString(value) : '"metadata_publish" expected to be of type "string"';

    {
      metadata_publish: value,
    }
  ),

  "#withName":: "Auth server scope name",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withOptional":: "Whether the scope optional",
  withOptional(value):: (
    assert std.isBoolean(value) : '"optional" expected to be of type "bool"';

    {
      optional: value,
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
