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
    assert std.isString(value) : '"account_link_action" expected to be of type "string"';

    {
      account_link_action: value,
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
    assert std.isString(value) : '"apple_kid" expected to be of type "string"';

    {
      apple_kid: value,
    }
  ),

  "#withApplePrivateKey":: "The Key ID that you obtained from Apple when you created the private key for the client. PrivateKey is required when resource is first created. For all consecutive updates, it can be empty/omitted and keeps the existing value if it is empty/omitted. PrivateKey isn't returned when importing this resource.",
  withApplePrivateKey(value):: (
    assert std.isString(value) : '"apple_private_key" expected to be of type "string"';

    {
      apple_private_key: value,
    }
  ),

  "#withAppleTeamId":: "The Team ID associated with your Apple developer account",
  withAppleTeamId(value):: (
    assert std.isString(value) : '"apple_team_id" expected to be of type "string"';

    {
      apple_team_id: value,
    }
  ),

  "#withClientId":: "Unique identifier issued by AS for the Okta IdP instance.",
  withClientId(value):: (
    assert std.isString(value) : '"client_id" expected to be of type "string"';

    {
      client_id: value,
    }
  ),

  "#withClientSecret":: "Client secret issued by AS for the Okta IdP instance.",
  withClientSecret(value):: (
    assert std.isString(value) : '"client_secret" expected to be of type "string"';

    {
      client_secret: value,
    }
  ),

  "#withDeprovisionedAction":: "Action for a previously deprovisioned IdP user during authentication. Can be `NONE` or `REACTIVATE`. Default: `NONE`",
  withDeprovisionedAction(value):: (
    assert std.isString(value) : '"deprovisioned_action" expected to be of type "string"';

    {
      deprovisioned_action: value,
    }
  ),

  "#withGroupsAction":: "Provisioning action for IdP user's group memberships. It can be `NONE`, `SYNC`, `APPEND`, or `ASSIGN`. Default: `NONE`",
  withGroupsAction(value):: (
    assert std.isString(value) : '"groups_action" expected to be of type "string"';

    {
      groups_action: value,
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
    assert std.isString(value) : '"groups_attribute" expected to be of type "string"';

    {
      groups_attribute: value,
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
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `ORG_URL` or `CUSTOM_URL`. Default: `ORG_URL`",
  withIssuerMode(value):: (
    assert std.isString(value) : '"issuer_mode" expected to be of type "string"';

    {
      issuer_mode: value,
    }
  ),

  "#withMaxClockSkew":: "Maximum allowable clock-skew when processing messages from the IdP.",
  withMaxClockSkew(value):: (
    assert std.isNumber(value) : '"max_clock_skew" expected to be of type "number"';

    {
      max_clock_skew: value,
    }
  ),

  "#withName":: "Name of the IdP",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withProfileMaster":: "Determines if the IdP should act as a source of truth for user profile attributes.",
  withProfileMaster(value):: (
    assert std.isBoolean(value) : '"profile_master" expected to be of type "bool"';

    {
      profile_master: value,
    }
  ),

  "#withProtocolType":: "The type of protocol to use. It can be `OIDC` or `OAUTH2`. Default: `OAUTH2`",
  withProtocolType(value):: (
    assert std.isString(value) : '"protocol_type" expected to be of type "string"';

    {
      protocol_type: value,
    }
  ),

  "#withProvisioningAction":: "Provisioning action for an IdP user during authentication. Default: `AUTO`",
  withProvisioningAction(value):: (
    assert std.isString(value) : '"provisioning_action" expected to be of type "string"';

    {
      provisioning_action: value,
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
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withSubjectMatchAttribute":: "Okta user profile attribute for matching transformed IdP username. Only for matchType `CUSTOM_ATTRIBUTE`.",
  withSubjectMatchAttribute(value):: (
    assert std.isString(value) : '"subject_match_attribute" expected to be of type "string"';

    {
      subject_match_attribute: value,
    }
  ),

  "#withSubjectMatchType":: "Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default, it is set to `USERNAME`. It can be set to `USERNAME`, `EMAIL`, `USERNAME_OR_EMAIL` or `CUSTOM_ATTRIBUTE`.",
  withSubjectMatchType(value):: (
    assert std.isString(value) : '"subject_match_type" expected to be of type "string"';

    {
      subject_match_type: value,
    }
  ),

  "#withSuspendedAction":: "Action for a previously suspended IdP user during authentication. Can be `NONE` or `REACTIVATE`. Default: `NONE`",
  withSuspendedAction(value):: (
    assert std.isString(value) : '"suspended_action" expected to be of type "string"';

    {
      suspended_action: value,
    }
  ),

  "#withType":: "Identity Provider Types: https://developer.okta.com/docs/reference/api/idps/#identity-provider-type",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
    }
  ),

  "#withUsernameTemplate":: "Okta EL Expression to generate or transform a unique username for the IdP user. Default: `idpuser.email`",
  withUsernameTemplate(value):: (
    assert std.isString(value) : '"username_template" expected to be of type "string"';

    {
      username_template: value,
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
