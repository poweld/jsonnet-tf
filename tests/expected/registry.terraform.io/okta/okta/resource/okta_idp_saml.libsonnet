{
  local block = self,

  new(terraformName, issuer, kid, name, ssoUrl):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_idp_saml",
          type:: "resource",
          attributes:: ["account_link_action", "account_link_group_include", "acs_binding", "acs_type", "audience", "deprovisioned_action", "groups_action", "groups_assignment", "groups_attribute", "groups_filter", "honor_persistent_name_id", "id", "issuer", "issuer_mode", "kid", "max_clock_skew", "name", "name_format", "profile_master", "provisioning_action", "request_signature_algorithm", "request_signature_scope", "response_signature_algorithm", "response_signature_scope", "sso_binding", "sso_destination", "sso_url", "status", "subject_filter", "subject_format", "subject_match_attribute", "subject_match_type", "suspended_action", "type", "user_type_id", "username_template"],
        },
      },
    }
    + block.withIssuer(issuer)
    + block.withKid(kid)
    + block.withName(name)
    + block.withSsoUrl(ssoUrl)
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

  "#withAcsType":: "The type of ACS. It can be `INSTANCE` or `ORG`. Default: `INSTANCE`",
  withAcsType(value):: (
    assert std.isString(value) : '"acs_type" expected to be of type "string"';

    {
      acs_type: value,
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

  "#withHonorPersistentNameId":: "Determines if the IdP should persist account linking when the incoming assertion NameID format is urn:oasis:names:tc:SAML:2.0:nameid-format:persistent",
  withHonorPersistentNameId(value):: (
    assert std.isBoolean(value) : '"honor_persistent_name_id" expected to be of type "bool"';

    {
      honor_persistent_name_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIssuer":: "URI that identifies the issuer.",
  withIssuer(value):: (
    assert std.isString(value) : '"issuer" expected to be of type "string"';

    {
      issuer: value,
    }
  ),

  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL",
  withIssuerMode(value):: (
    assert std.isString(value) : '"issuer_mode" expected to be of type "string"';

    {
      issuer_mode: value,
    }
  ),

  "#withKid":: "The ID of the signing key.",
  withKid(value):: (
    assert std.isString(value) : '"kid" expected to be of type "string"';

    {
      kid: value,
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

  "#withNameFormat":: "The name identifier format to use. By default `urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified`.",
  withNameFormat(value):: (
    assert std.isString(value) : '"name_format" expected to be of type "string"';

    {
      name_format: value,
    }
  ),

  "#withProfileMaster":: "Determines if the IdP should act as a source of truth for user profile attributes.",
  withProfileMaster(value):: (
    assert std.isBoolean(value) : '"profile_master" expected to be of type "bool"';

    {
      profile_master: value,
    }
  ),

  "#withProvisioningAction":: "Provisioning action for an IdP user during authentication. Default: `AUTO`",
  withProvisioningAction(value):: (
    assert std.isString(value) : '"provisioning_action" expected to be of type "string"';

    {
      provisioning_action: value,
    }
  ),

  "#withRequestSignatureAlgorithm":: "The XML digital Signature Algorithm used when signing an `AuthnRequest` message. It can be `SHA-256` or `SHA-1`. Default: `SHA-256`",
  withRequestSignatureAlgorithm(value):: (
    assert std.isString(value) : '"request_signature_algorithm" expected to be of type "string"';

    {
      request_signature_algorithm: value,
    }
  ),

  "#withRequestSignatureScope":: "Specifies whether to digitally sign an AuthnRequest messages to the IdP. It can be `REQUEST` or `NONE`. Default: `REQUEST`",
  withRequestSignatureScope(value):: (
    assert std.isString(value) : '"request_signature_scope" expected to be of type "string"';

    {
      request_signature_scope: value,
    }
  ),

  "#withResponseSignatureAlgorithm":: "The minimum XML digital signature algorithm allowed when verifying a `SAMLResponse` message or Assertion element. It can be `SHA-256` or `SHA-1`. Default: `SHA-256`",
  withResponseSignatureAlgorithm(value):: (
    assert std.isString(value) : '"response_signature_algorithm" expected to be of type "string"';

    {
      response_signature_algorithm: value,
    }
  ),

  "#withResponseSignatureScope":: "Specifies whether to verify a `SAMLResponse` message or Assertion element XML digital signature. It can be `RESPONSE`, `ASSERTION`, or `ANY`. Default: `ANY`",
  withResponseSignatureScope(value):: (
    assert std.isString(value) : '"response_signature_scope" expected to be of type "string"';

    {
      response_signature_scope: value,
    }
  ),

  "#withSsoBinding":: "The method of making an SSO request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`. Default: `HTTP-POST`",
  withSsoBinding(value):: (
    assert std.isString(value) : '"sso_binding" expected to be of type "string"';

    {
      sso_binding: value,
    }
  ),

  "#withSsoDestination":: "URI reference indicating the address to which the AuthnRequest message is sent.",
  withSsoDestination(value):: (
    assert std.isString(value) : '"sso_destination" expected to be of type "string"';

    {
      sso_destination: value,
    }
  ),

  "#withSsoUrl":: "URL of binding-specific endpoint to send an AuthnRequest message to IdP.",
  withSsoUrl(value):: (
    assert std.isString(value) : '"sso_url" expected to be of type "string"';

    {
      sso_url: value,
    }
  ),

  "#withStatus":: "Default to `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withSubjectFilter":: "Optional regular expression pattern used to filter untrusted IdP usernames.",
  withSubjectFilter(value):: (
    assert std.isString(value) : '"subject_filter" expected to be of type "string"';

    {
      subject_filter: value,
    }
  ),

  "#withSubjectFormat":: "The name format.",
  withSubjectFormat(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_format" expected to be of type "set"';

    {
      subject_format: converted,
    }
  ),

  "#withSubjectFormatMixin":: "The name format.",
  withSubjectFormatMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_format" expected to be of type "set"';

    {
      subject_format+: converted,
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
