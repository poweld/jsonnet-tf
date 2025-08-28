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
  "#withAuthorizationBinding":: "The method of making an authorization request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`.",
  withAuthorizationBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_binding" expected to be of type "string"';
    {
      authorization_binding: converted,
    }
  ),
  "#withAuthorizationUrl":: "IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.",
  withAuthorizationUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_url" expected to be of type "string"';
    {
      authorization_url: converted,
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
  "#withFilter":: "Optional regular expression pattern used to filter untrusted IdP usernames.",
  withFilter(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter" expected to be of type "string"';
    {
      filter: converted,
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
  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, a custom domain URL, or dynamic. It can be `ORG_URL`, `CUSTOM_URL`, or `DYNAMIC`. Default: `ORG_URL`",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withIssuerUrl":: "URI that identifies the issuer.",
  withIssuerUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_url" expected to be of type "string"';
    {
      issuer_url: converted,
    }
  ),
  "#withJwksBinding":: "The method of making a request for the OIDC JWKS. It can be set to `HTTP-POST` or `HTTP-REDIRECT`",
  withJwksBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"jwks_binding" expected to be of type "string"';
    {
      jwks_binding: converted,
    }
  ),
  "#withJwksUrl":: "Endpoint where the keys signer publishes its keys in a JWK Set.",
  withJwksUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"jwks_url" expected to be of type "string"';
    {
      jwks_url: converted,
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
  "#withPkceRequired":: "Require Proof Key for Code Exchange (PKCE) for additional verification key rotation mode. See: https://developer.okta.com/docs/reference/api/idps/#oauth-2-0-and-openid-connect-client-object",
  withPkceRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"pkce_required" expected to be of type "bool"';
    {
      pkce_required: converted,
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
  "#withProtocolType":: " The type of protocol to use. It can be `OIDC` or `OAUTH2`. Default: `OIDC`",
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
  "#withRequestSignatureAlgorithm":: "The HMAC Signature Algorithm used when signing an authorization request. Defaults to `HS256`. It can be `HS256`, `HS384`, `HS512`, `SHA-256`. `RS256`, `RS384`, or `RS512`. NOTE: `SHA-256` an undocumented legacy value and not continue to be valid. See API docs https://developer.okta.com/docs/reference/api/idps/#oidc-request-signature-algorithm-object",
  withRequestSignatureAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_signature_algorithm" expected to be of type "string"';
    {
      request_signature_algorithm: converted,
    }
  ),
  "#withRequestSignatureScope":: "Specifies whether to digitally sign an AuthnRequest messages to the IdP. Defaults to `REQUEST`. It can be `REQUEST` or `NONE`.",
  withRequestSignatureScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_signature_scope" expected to be of type "string"';
    {
      request_signature_scope: converted,
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
  "#withTokenBinding":: "The method of making a token request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`.",
  withTokenBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_binding" expected to be of type "string"';
    {
      token_binding: converted,
    }
  ),
  "#withTokenUrl":: "IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.",
  withTokenUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_url" expected to be of type "string"';
    {
      token_url: converted,
    }
  ),
  withUserInfoBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_info_binding" expected to be of type "string"';
    {
      user_info_binding: converted,
    }
  ),
  "#withUserInfoUrl":: "Protected resource endpoint that returns claims about the authenticated user.",
  withUserInfoUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_info_url" expected to be of type "string"';
    {
      user_info_url: converted,
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
