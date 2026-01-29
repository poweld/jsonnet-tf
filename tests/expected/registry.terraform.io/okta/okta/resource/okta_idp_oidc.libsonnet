{
  local block = self,

  new(terraformName, authorizationBinding, authorizationUrl, clientId, clientSecret, issuerUrl, jwksBinding, jwksUrl, name, scopes, tokenBinding, tokenUrl):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_idp_oidc",
          type:: "resource",
          attributes:: ["account_link_action", "account_link_group_include", "authorization_binding", "authorization_url", "client_id", "client_secret", "deprovisioned_action", "filter", "groups_action", "groups_assignment", "groups_attribute", "groups_filter", "id", "issuer_mode", "issuer_url", "jwks_binding", "jwks_url", "max_clock_skew", "name", "pkce_required", "profile_master", "protocol_type", "provisioning_action", "request_signature_algorithm", "request_signature_scope", "scopes", "status", "subject_match_attribute", "subject_match_type", "suspended_action", "token_binding", "token_url", "type", "user_info_binding", "user_info_url", "user_type_id", "username_template"],
        },
      },
    }
    + block.withAuthorizationBinding(authorizationBinding)
    + block.withAuthorizationUrl(authorizationUrl)
    + block.withClientId(clientId)
    + block.withClientSecret(clientSecret)
    + block.withIssuerUrl(issuerUrl)
    + block.withJwksBinding(jwksBinding)
    + block.withJwksUrl(jwksUrl)
    + block.withName(name)
    + block.withScopes(scopes)
    + block.withTokenBinding(tokenBinding)
    + block.withTokenUrl(tokenUrl)
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

  "#withAuthorizationBinding":: "The method of making an authorization request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`.",
  withAuthorizationBinding(value):: (
    assert std.isString(value) : '"authorization_binding" expected to be of type "string"';

    {
      authorization_binding: value,
    }
  ),

  "#withAuthorizationUrl":: "IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.",
  withAuthorizationUrl(value):: (
    assert std.isString(value) : '"authorization_url" expected to be of type "string"';

    {
      authorization_url: value,
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

  "#withFilter":: "Optional regular expression pattern used to filter untrusted IdP usernames.",
  withFilter(value):: (
    assert std.isString(value) : '"filter" expected to be of type "string"';

    {
      filter: value,
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

  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, a custom domain URL, or dynamic. It can be `ORG_URL`, `CUSTOM_URL`, or `DYNAMIC`. Default: `ORG_URL`",
  withIssuerMode(value):: (
    assert std.isString(value) : '"issuer_mode" expected to be of type "string"';

    {
      issuer_mode: value,
    }
  ),

  "#withIssuerUrl":: "URI that identifies the issuer.",
  withIssuerUrl(value):: (
    assert std.isString(value) : '"issuer_url" expected to be of type "string"';

    {
      issuer_url: value,
    }
  ),

  "#withJwksBinding":: "The method of making a request for the OIDC JWKS. It can be set to `HTTP-POST` or `HTTP-REDIRECT`",
  withJwksBinding(value):: (
    assert std.isString(value) : '"jwks_binding" expected to be of type "string"';

    {
      jwks_binding: value,
    }
  ),

  "#withJwksUrl":: "Endpoint where the keys signer publishes its keys in a JWK Set.",
  withJwksUrl(value):: (
    assert std.isString(value) : '"jwks_url" expected to be of type "string"';

    {
      jwks_url: value,
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

  "#withPkceRequired":: "Require Proof Key for Code Exchange (PKCE) for additional verification key rotation mode. See: https://developer.okta.com/docs/reference/api/idps/#oauth-2-0-and-openid-connect-client-object",
  withPkceRequired(value):: (
    assert std.isBoolean(value) : '"pkce_required" expected to be of type "bool"';

    {
      pkce_required: value,
    }
  ),

  "#withProfileMaster":: "Determines if the IdP should act as a source of truth for user profile attributes.",
  withProfileMaster(value):: (
    assert std.isBoolean(value) : '"profile_master" expected to be of type "bool"';

    {
      profile_master: value,
    }
  ),

  "#withProtocolType":: " The type of protocol to use. It can be `OIDC` or `OAUTH2`. Default: `OIDC`",
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

  "#withRequestSignatureAlgorithm":: "The HMAC Signature Algorithm used when signing an authorization request. Defaults to `HS256`. It can be `HS256`, `HS384`, `HS512`, `SHA-256`. `RS256`, `RS384`, or `RS512`. NOTE: `SHA-256` an undocumented legacy value and not continue to be valid. See API docs https://developer.okta.com/docs/reference/api/idps/#oidc-request-signature-algorithm-object",
  withRequestSignatureAlgorithm(value):: (
    assert std.isString(value) : '"request_signature_algorithm" expected to be of type "string"';

    {
      request_signature_algorithm: value,
    }
  ),

  "#withRequestSignatureScope":: "Specifies whether to digitally sign an AuthnRequest messages to the IdP. Defaults to `REQUEST`. It can be `REQUEST` or `NONE`.",
  withRequestSignatureScope(value):: (
    assert std.isString(value) : '"request_signature_scope" expected to be of type "string"';

    {
      request_signature_scope: value,
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

  "#withTokenBinding":: "The method of making a token request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`.",
  withTokenBinding(value):: (
    assert std.isString(value) : '"token_binding" expected to be of type "string"';

    {
      token_binding: value,
    }
  ),

  "#withTokenUrl":: "IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.",
  withTokenUrl(value):: (
    assert std.isString(value) : '"token_url" expected to be of type "string"';

    {
      token_url: value,
    }
  ),

  withUserInfoBinding(value):: (
    assert std.isString(value) : '"user_info_binding" expected to be of type "string"';

    {
      user_info_binding: value,
    }
  ),

  "#withUserInfoUrl":: "Protected resource endpoint that returns claims about the authenticated user.",
  withUserInfoUrl(value):: (
    assert std.isString(value) : '"user_info_url" expected to be of type "string"';

    {
      user_info_url: value,
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
