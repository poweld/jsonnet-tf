{
  local block = self,
  new(terraformName, name, scopes, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_idp_social",
          type:: "resource",
          attributes:: ["account_link_action", "account_link_group_include", "apple_kid", "apple_private_key", "apple_team_id", "authorization_binding", "authorization_url", "client_id", "client_secret", "deprovisioned_action", "groups_action", "groups_assignment", "groups_attribute", "groups_filter", "id", "issuer_mode", "max_clock_skew", "name", "profile_master", "protocol_type", "provisioning_action", "scopes", "status", "subject_match_attribute", "subject_match_type", "suspended_action", "token_binding", "token_url", "trust_audience", "trust_issuer", "trust_kid", "trust_revocation", "trust_revocation_cache_lifetime", "type", "username_template"],
        },
      },
    }
    + block.withName(name)
    + block.withScopes(scopes)
    + block.withType(type)
  ),
  "#withAccountLinkAction":: "Specifies the account linking action for an IdP user. Default: `AUTO`",
  withAccountLinkAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_link_action" expected to be of type "string"';
    {
      account_link_action: converted,
    }
  ),
  "#withAccountLinkGroupInclude":: "Group memberships to determine link candidates.",
  withAccountLinkGroupInclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account_link_group_include" expected to be of type "set"';
    {
      account_link_group_include: converted,
    }
  ),
  "#withAccountLinkGroupIncludeMixin":: "Group memberships to determine link candidates.",
  withAccountLinkGroupIncludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account_link_group_include" expected to be of type "set"';
    {
      account_link_group_include+: converted,
    }
  ),
  "#withAppleKid":: "The Key ID that you obtained from Apple when you created the private key for the client",
  withAppleKid(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_kid" expected to be of type "string"';
    {
      apple_kid: converted,
    }
  ),
  "#withApplePrivateKey":: "The Key ID that you obtained from Apple when you created the private key for the client. PrivateKey is required when resource is first created. For all consecutive updates, it can be empty/omitted and keeps the existing value if it is empty/omitted. PrivateKey isn't returned when importing this resource.",
  withApplePrivateKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_private_key" expected to be of type "string"';
    {
      apple_private_key: converted,
    }
  ),
  "#withAppleTeamId":: "The Team ID associated with your Apple developer account",
  withAppleTeamId(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_team_id" expected to be of type "string"';
    {
      apple_team_id: converted,
    }
  ),
  "#withClientId":: "Unique identifier issued by AS for the Okta IdP instance.",
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  "#withClientSecret":: "Client secret issued by AS for the Okta IdP instance.",
  withClientSecret(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_secret" expected to be of type "string"';
    {
      client_secret: converted,
    }
  ),
  "#withDeprovisionedAction":: "Action for a previously deprovisioned IdP user during authentication. Can be `NONE` or `REACTIVATE`. Default: `NONE`",
  withDeprovisionedAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"deprovisioned_action" expected to be of type "string"';
    {
      deprovisioned_action: converted,
    }
  ),
  "#withGroupsAction":: "Provisioning action for IdP user's group memberships. It can be `NONE`, `SYNC`, `APPEND`, or `ASSIGN`. Default: `NONE`",
  withGroupsAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_action" expected to be of type "string"';
    {
      groups_action: converted,
    }
  ),
  "#withGroupsAssignment":: "List of Okta Group IDs to add an IdP user as a member with the `ASSIGN` `groups_action`.",
  withGroupsAssignment(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_assignment" expected to be of type "set"';
    {
      groups_assignment: converted,
    }
  ),
  "#withGroupsAssignmentMixin":: "List of Okta Group IDs to add an IdP user as a member with the `ASSIGN` `groups_action`.",
  withGroupsAssignmentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_assignment" expected to be of type "set"';
    {
      groups_assignment+: converted,
    }
  ),
  "#withGroupsAttribute":: "IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.",
  withGroupsAttribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_attribute" expected to be of type "string"';
    {
      groups_attribute: converted,
    }
  ),
  "#withGroupsFilter":: "Whitelist of Okta Group identifiers that are allowed for the `APPEND` or `SYNC` `groups_action`.",
  withGroupsFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_filter" expected to be of type "set"';
    {
      groups_filter: converted,
    }
  ),
  "#withGroupsFilterMixin":: "Whitelist of Okta Group identifiers that are allowed for the `APPEND` or `SYNC` `groups_action`.",
  withGroupsFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_filter" expected to be of type "set"';
    {
      groups_filter+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `ORG_URL` or `CUSTOM_URL`. Default: `ORG_URL`",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withMaxClockSkew":: "Maximum allowable clock-skew when processing messages from the IdP.",
  withMaxClockSkew(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_clock_skew" expected to be of type "number"';
    {
      max_clock_skew: converted,
    }
  ),
  "#withName":: "Name of the IdP",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withProfileMaster":: "Determines if the IdP should act as a source of truth for user profile attributes.",
  withProfileMaster(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"profile_master" expected to be of type "bool"';
    {
      profile_master: converted,
    }
  ),
  "#withProtocolType":: "The type of protocol to use. It can be `OIDC` or `OAUTH2`. Default: `OAUTH2`",
  withProtocolType(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_type" expected to be of type "string"';
    {
      protocol_type: converted,
    }
  ),
  "#withProvisioningAction":: "Provisioning action for an IdP user during authentication. Default: `AUTO`",
  withProvisioningAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_action" expected to be of type "string"';
    {
      provisioning_action: converted,
    }
  ),
  "#withScopes":: "The scopes of the IdP.",
  withScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes: converted,
    }
  ),
  "#withScopesMixin":: "The scopes of the IdP.",
  withScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes+: converted,
    }
  ),
  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withSubjectMatchAttribute":: "Okta user profile attribute for matching transformed IdP username. Only for matchType `CUSTOM_ATTRIBUTE`.",
  withSubjectMatchAttribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_match_attribute" expected to be of type "string"';
    {
      subject_match_attribute: converted,
    }
  ),
  "#withSubjectMatchType":: "Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default, it is set to `USERNAME`. It can be set to `USERNAME`, `EMAIL`, `USERNAME_OR_EMAIL` or `CUSTOM_ATTRIBUTE`.",
  withSubjectMatchType(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_match_type" expected to be of type "string"';
    {
      subject_match_type: converted,
    }
  ),
  "#withSuspendedAction":: "Action for a previously suspended IdP user during authentication. Can be `NONE` or `REACTIVATE`. Default: `NONE`",
  withSuspendedAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"suspended_action" expected to be of type "string"';
    {
      suspended_action: converted,
    }
  ),
  "#withType":: "Identity Provider Types: https://developer.okta.com/docs/reference/api/idps/#identity-provider-type",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUsernameTemplate":: "Okta EL Expression to generate or transform a unique username for the IdP user. Default: `idpuser.email`",
  withUsernameTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"username_template" expected to be of type "string"';
    {
      username_template: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
