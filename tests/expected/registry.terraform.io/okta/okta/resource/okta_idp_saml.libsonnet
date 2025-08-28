{
  local block = self,
  new(terraformName, issuer, kid, name, ssoUrl):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_idp_saml",
          type:: "resource",
          attributes:: ["account_link_action", "account_link_group_include", "acs_binding", "acs_type", "audience", "deprovisioned_action", "groups_action", "groups_assignment", "groups_attribute", "groups_filter", "honor_persistent_name_id", "id", "issuer", "issuer_mode", "kid", "max_clock_skew", "name", "name_format", "profile_master", "provisioning_action", "request_signature_algorithm", "request_signature_scope", "response_signature_algorithm", "response_signature_scope", "sso_binding", "sso_destination", "sso_url", "status", "subject_filter", "subject_format", "subject_match_attribute", "subject_match_type", "suspended_action", "type", "user_type_id", "username_template"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withIssuer(issuer)
    + block.withKid(kid)
    + block.withName(name)
    + block.withSsoUrl(ssoUrl)
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
  "#withAcsType":: "The type of ACS. It can be `INSTANCE` or `ORG`. Default: `INSTANCE`",
  withAcsType(value):: (
    local converted = value;
    assert std.isString(converted) : '"acs_type" expected to be of type "string"';
    {
      acs_type: converted,
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
  "#withHonorPersistentNameId":: "Determines if the IdP should persist account linking when the incoming assertion NameID format is urn:oasis:names:tc:SAML:2.0:nameid-format:persistent",
  withHonorPersistentNameId(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"honor_persistent_name_id" expected to be of type "bool"';
    {
      honor_persistent_name_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIssuer":: "URI that identifies the issuer.",
  withIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withKid":: "The ID of the signing key.",
  withKid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
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
  "#withNameFormat":: "The name identifier format to use. By default `urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified`.",
  withNameFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_format" expected to be of type "string"';
    {
      name_format: converted,
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
  "#withProvisioningAction":: "Provisioning action for an IdP user during authentication. Default: `AUTO`",
  withProvisioningAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_action" expected to be of type "string"';
    {
      provisioning_action: converted,
    }
  ),
  "#withRequestSignatureAlgorithm":: "The XML digital Signature Algorithm used when signing an `AuthnRequest` message. It can be `SHA-256` or `SHA-1`. Default: `SHA-256`",
  withRequestSignatureAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_signature_algorithm" expected to be of type "string"';
    {
      request_signature_algorithm: converted,
    }
  ),
  "#withRequestSignatureScope":: "Specifies whether to digitally sign an AuthnRequest messages to the IdP. It can be `REQUEST` or `NONE`. Default: `REQUEST`",
  withRequestSignatureScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_signature_scope" expected to be of type "string"';
    {
      request_signature_scope: converted,
    }
  ),
  "#withResponseSignatureAlgorithm":: "The minimum XML digital signature algorithm allowed when verifying a `SAMLResponse` message or Assertion element. It can be `SHA-256` or `SHA-1`. Default: `SHA-256`",
  withResponseSignatureAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_signature_algorithm" expected to be of type "string"';
    {
      response_signature_algorithm: converted,
    }
  ),
  "#withResponseSignatureScope":: "Specifies whether to verify a `SAMLResponse` message or Assertion element XML digital signature. It can be `RESPONSE`, `ASSERTION`, or `ANY`. Default: `ANY`",
  withResponseSignatureScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_signature_scope" expected to be of type "string"';
    {
      response_signature_scope: converted,
    }
  ),
  "#withSsoBinding":: "The method of making an SSO request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`. Default: `HTTP-POST`",
  withSsoBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_binding" expected to be of type "string"';
    {
      sso_binding: converted,
    }
  ),
  "#withSsoDestination":: "URI reference indicating the address to which the AuthnRequest message is sent.",
  withSsoDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_destination" expected to be of type "string"';
    {
      sso_destination: converted,
    }
  ),
  "#withSsoUrl":: "URL of binding-specific endpoint to send an AuthnRequest message to IdP.",
  withSsoUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_url" expected to be of type "string"';
    {
      sso_url: converted,
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
  "#withSubjectFilter":: "Optional regular expression pattern used to filter untrusted IdP usernames.",
  withSubjectFilter(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_filter" expected to be of type "string"';
    {
      subject_filter: converted,
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
      terraformName:: value,
    },
  },
}
