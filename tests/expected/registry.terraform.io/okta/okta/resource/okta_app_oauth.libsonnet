{
  local block = self,
  new(terraformName, label, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_oauth",
          type:: "resource",
          attributes:: ["accessibility_error_redirect_url", "accessibility_login_redirect_url", "accessibility_self_service", "admin_note", "app_links_json", "app_settings_json", "authentication_policy", "auto_key_rotation", "auto_submit_toolbar", "client_basic_secret", "client_id", "client_secret", "client_uri", "consent_method", "enduser_note", "grant_types", "hide_ios", "hide_web", "id", "implicit_assignment", "issuer_mode", "jwks_uri", "label", "login_mode", "login_scopes", "login_uri", "logo", "logo_uri", "logo_url", "name", "omit_secret", "pkce_required", "policy_uri", "post_logout_redirect_uris", "profile", "redirect_uris", "refresh_token_leeway", "refresh_token_rotation", "response_types", "sign_on_mode", "status", "token_endpoint_auth_method", "tos_uri", "type", "user_name_template", "user_name_template_push_status", "user_name_template_suffix", "user_name_template_type", "wildcard_redirect"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withLabel(label)
    + block.withType(type)
  ),
  "#withAccessibilityErrorRedirectUrl":: "Custom error page URL",
  withAccessibilityErrorRedirectUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"accessibility_error_redirect_url" expected to be of type "string"';
    {
      accessibility_error_redirect_url: converted,
    }
  ),
  "#withAccessibilityLoginRedirectUrl":: "Custom login page URL",
  withAccessibilityLoginRedirectUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"accessibility_login_redirect_url" expected to be of type "string"';
    {
      accessibility_login_redirect_url: converted,
    }
  ),
  "#withAccessibilitySelfService":: "Enable self service. Default is `false`",
  withAccessibilitySelfService(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"accessibility_self_service" expected to be of type "bool"';
    {
      accessibility_self_service: converted,
    }
  ),
  "#withAdminNote":: "Application notes for admins.",
  withAdminNote(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_note" expected to be of type "string"';
    {
      admin_note: converted,
    }
  ),
  "#withAppLinksJson":: "Displays specific appLinks for the app. The value for each application link should be boolean.",
  withAppLinksJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_links_json" expected to be of type "string"';
    {
      app_links_json: converted,
    }
  ),
  "#withAppSettingsJson":: "Application settings in JSON format",
  withAppSettingsJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_settings_json" expected to be of type "string"';
    {
      app_settings_json: converted,
    }
  ),
  "#withAuthenticationPolicy":: "The ID of the associated app_signon_policy. If this property is removed from the application, the default sign-on-policy will be associated with this application. From now on, there is no need to attach authentication_policy for applications of type SERVICE",
  withAuthenticationPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_policy" expected to be of type "string"';
    {
      authentication_policy: converted,
    }
  ),
  "#withAutoKeyRotation":: "Requested key rotation mode. If \t\t\t\tauto_key_rotation isn't specified, the client automatically opts in for Okta's \t\t\t\tkey rotation. You can update this property via the API or via the administrator \t\t\t\tUI. \t\t\t\tSee: https://developer.okta.com/docs/reference/api/apps/#oauth-credential-object'",
  withAutoKeyRotation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_key_rotation" expected to be of type "bool"';
    {
      auto_key_rotation: converted,
    }
  ),
  "#withAutoSubmitToolbar":: "Display auto submit toolbar",
  withAutoSubmitToolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  "#withClientBasicSecret":: "The user provided OAuth client secret key value, this can be set when token_endpoint_auth_method is client_secret_basic. This does nothing when `omit_secret is set to true.",
  withClientBasicSecret(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_basic_secret" expected to be of type "string"';
    {
      client_basic_secret: converted,
    }
  ),
  "#withClientId":: "OAuth client ID. If set during creation, app is created with this id.",
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  "#withClientUri":: "URI to a web page providing information about the client.",
  withClientUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_uri" expected to be of type "string"';
    {
      client_uri: converted,
    }
  ),
  "#withConsentMethod":: "*Early Access Property*. Indicates whether user consent is required or implicit. Valid values: REQUIRED, TRUSTED. Default value is TRUSTED",
  withConsentMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"consent_method" expected to be of type "string"';
    {
      consent_method: converted,
    }
  ),
  "#withEnduserNote":: "Application notes for end users.",
  withEnduserNote(value):: (
    local converted = value;
    assert std.isString(converted) : '"enduser_note" expected to be of type "string"';
    {
      enduser_note: converted,
    }
  ),
  "#withGrantTypes":: "List of OAuth 2.0 grant types. Conditional validation params found here https://developer.okta.com/docs/api/resources/apps#credentials-settings-details. Defaults to minimum requirements per app type.",
  withGrantTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_types" expected to be of type "set"';
    {
      grant_types: converted,
    }
  ),
  "#withGrantTypesMixin":: "List of OAuth 2.0 grant types. Conditional validation params found here https://developer.okta.com/docs/api/resources/apps#credentials-settings-details. Defaults to minimum requirements per app type.",
  withGrantTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_types" expected to be of type "set"';
    {
      grant_types+: converted,
    }
  ),
  "#withHideIos":: "Do not display application icon on mobile app",
  withHideIos(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_ios" expected to be of type "bool"';
    {
      hide_ios: converted,
    }
  ),
  "#withHideWeb":: "Do not display application icon to users",
  withHideWeb(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_web" expected to be of type "bool"';
    {
      hide_web: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withImplicitAssignment":: "*Early Access Property*. Enable Federation Broker Mode.",
  withImplicitAssignment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"implicit_assignment" expected to be of type "bool"';
    {
      implicit_assignment: converted,
    }
  ),
  "#withIssuerMode":: "*Early Access Property*. Indicates whether the Okta Authorization Server uses the original Okta org domain URL or a custom domain URL as the issuer of ID token for this client.",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withJwksUri":: "URL reference to JWKS",
  withJwksUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"jwks_uri" expected to be of type "string"';
    {
      jwks_uri: converted,
    }
  ),
  "#withLabel":: "The Application's display name.",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withLoginMode":: "The type of Idp-Initiated login that the client supports, if any",
  withLoginMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_mode" expected to be of type "string"';
    {
      login_mode: converted,
    }
  ),
  "#withLoginScopes":: "List of scopes to use for the request",
  withLoginScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"login_scopes" expected to be of type "set"';
    {
      login_scopes: converted,
    }
  ),
  "#withLoginScopesMixin":: "List of scopes to use for the request",
  withLoginScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"login_scopes" expected to be of type "set"';
    {
      login_scopes+: converted,
    }
  ),
  "#withLoginUri":: "URI that initiates login.",
  withLoginUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_uri" expected to be of type "string"';
    {
      login_uri: converted,
    }
  ),
  "#withLogo":: "Local file path to the logo. The file must be in PNG, JPG, or GIF format, and less than 1 MB in size.",
  withLogo(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo" expected to be of type "string"';
    {
      logo: converted,
    }
  ),
  "#withLogoUri":: "URI that references a logo for the client.",
  withLogoUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo_uri" expected to be of type "string"';
    {
      logo_uri: converted,
    }
  ),
  "#withOmitSecret":: "This tells the provider not manage the client_secret value in state. When this is false (the default), it will cause the auto-generated client_secret to be persisted in the client_secret attribute in state. This also means that every time an update to this app is run, this value is also set on the API. If this changes from false => true, the `client_secret` is dropped from state and the secret at the time of the apply is what remains. If this is ever changes from true => false your app will be recreated, due to the need to regenerate a secret we can store in state.",
  withOmitSecret(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"omit_secret" expected to be of type "bool"';
    {
      omit_secret: converted,
    }
  ),
  "#withPkceRequired":: "Require Proof Key for Code Exchange (PKCE) for additional verification key rotation mode. See: https://developer.okta.com/docs/reference/api/apps/#oauth-credential-object",
  withPkceRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"pkce_required" expected to be of type "bool"';
    {
      pkce_required: converted,
    }
  ),
  "#withPolicyUri":: "URI to web page providing client policy document.",
  withPolicyUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_uri" expected to be of type "string"';
    {
      policy_uri: converted,
    }
  ),
  "#withPostLogoutRedirectUris":: "List of URIs for redirection after logout. Note: see okta_app_oauth_post_logout_redirect_uri for appending to this list in a decentralized way.",
  withPostLogoutRedirectUris(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"post_logout_redirect_uris" expected to be of type "set"';
    {
      post_logout_redirect_uris: converted,
    }
  ),
  "#withPostLogoutRedirectUrisMixin":: "List of URIs for redirection after logout. Note: see okta_app_oauth_post_logout_redirect_uri for appending to this list in a decentralized way.",
  withPostLogoutRedirectUrisMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"post_logout_redirect_uris" expected to be of type "set"';
    {
      post_logout_redirect_uris+: converted,
    }
  ),
  "#withProfile":: "Custom JSON that represents an OAuth application's profile",
  withProfile(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile" expected to be of type "string"';
    {
      profile: converted,
    }
  ),
  "#withRedirectUris":: "List of URIs for use in the redirect-based flow. This is required for all application types except service. Note: see okta_app_oauth_redirect_uri for appending to this list in a decentralized way.",
  withRedirectUris(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"redirect_uris" expected to be of type "list"';
    {
      redirect_uris: converted,
    }
  ),
  "#withRedirectUrisMixin":: "List of URIs for use in the redirect-based flow. This is required for all application types except service. Note: see okta_app_oauth_redirect_uri for appending to this list in a decentralized way.",
  withRedirectUrisMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"redirect_uris" expected to be of type "list"';
    {
      redirect_uris+: converted,
    }
  ),
  "#withRefreshTokenLeeway":: "*Early Access Property* Grace period for token rotation, required with grant types refresh_token",
  withRefreshTokenLeeway(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"refresh_token_leeway" expected to be of type "number"';
    {
      refresh_token_leeway: converted,
    }
  ),
  "#withRefreshTokenRotation":: "*Early Access Property* Refresh token rotation behavior, required with grant types refresh_token",
  withRefreshTokenRotation(value):: (
    local converted = value;
    assert std.isString(converted) : '"refresh_token_rotation" expected to be of type "string"';
    {
      refresh_token_rotation: converted,
    }
  ),
  "#withResponseTypes":: "List of OAuth 2.0 response type strings. Valid values are any combination of: `code`, `token`, and `id_token`.",
  withResponseTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"response_types" expected to be of type "set"';
    {
      response_types: converted,
    }
  ),
  "#withResponseTypesMixin":: "List of OAuth 2.0 response type strings. Valid values are any combination of: `code`, `token`, and `id_token`.",
  withResponseTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"response_types" expected to be of type "set"';
    {
      response_types+: converted,
    }
  ),
  "#withStatus":: "Status of application. By default, it is `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withTokenEndpointAuthMethod":: "Requested authentication method for the token endpoint, valid values include:  'client_secret_basic', 'client_secret_post', 'client_secret_jwt', 'private_key_jwt', 'none', etc.",
  withTokenEndpointAuthMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_endpoint_auth_method" expected to be of type "string"';
    {
      token_endpoint_auth_method: converted,
    }
  ),
  "#withTosUri":: "URI to web page providing client tos (terms of service).",
  withTosUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"tos_uri" expected to be of type "string"';
    {
      tos_uri: converted,
    }
  ),
  "#withType":: "The type of client application.",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUserNameTemplate":: "Username template. Default: `${source.login}`",
  withUserNameTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template" expected to be of type "string"';
    {
      user_name_template: converted,
    }
  ),
  "#withUserNameTemplatePushStatus":: "Push username on update. Valid values: `PUSH` and `DONT_PUSH`",
  withUserNameTemplatePushStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_push_status" expected to be of type "string"';
    {
      user_name_template_push_status: converted,
    }
  ),
  "#withUserNameTemplateSuffix":: "Username template suffix",
  withUserNameTemplateSuffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_suffix" expected to be of type "string"';
    {
      user_name_template_suffix: converted,
    }
  ),
  "#withUserNameTemplateType":: "Username template type. Default: `BUILT_IN`",
  withUserNameTemplateType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_type" expected to be of type "string"';
    {
      user_name_template_type: converted,
    }
  ),
  "#withWildcardRedirect":: "*Early Access Property*. Indicates if the client is allowed to use wildcard matching of redirect_uris",
  withWildcardRedirect(value):: (
    local converted = value;
    assert std.isString(converted) : '"wildcard_redirect" expected to be of type "string"';
    {
      wildcard_redirect: converted,
    }
  ),
  groups_claim:: {
    local block = self,
    new(name, type, value):: (
      {}
      + block.withName(name)
      + block.withType(type)
      + block.withValue(value)
    ),
    "#withFilterType":: "Groups claim filter. Can only be set if type is FILTER.",
    withFilterType(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
      }
    ),
    "#withName":: "Name of the claim that will be used in the token.",
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    "#withType":: "Groups claim type.",
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    "#withValue":: "Value of the claim. Can be an Okta Expression Language statement that evaluates at the time the token is minted.",
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  jwks:: {
    local block = self,
    new(kid, kty):: (
      {}
      + block.withKid(kid)
      + block.withKty(kty)
    ),
    "#withE":: "RSA Exponent",
    withE(value):: (
      local converted = value;
      assert std.isString(converted) : '"e" expected to be of type "string"';
      {
        e: converted,
      }
    ),
    "#withKid":: "Key ID",
    withKid(value):: (
      local converted = value;
      assert std.isString(converted) : '"kid" expected to be of type "string"';
      {
        kid: converted,
      }
    ),
    "#withKty":: "Key type",
    withKty(value):: (
      local converted = value;
      assert std.isString(converted) : '"kty" expected to be of type "string"';
      {
        kty: converted,
      }
    ),
    "#withN":: "RSA Modulus",
    withN(value):: (
      local converted = value;
      assert std.isString(converted) : '"n" expected to be of type "string"';
      {
        n: converted,
      }
    ),
    "#withX":: "X coordinate of the elliptic curve point",
    withX(value):: (
      local converted = value;
      assert std.isString(converted) : '"x" expected to be of type "string"';
      {
        x: converted,
      }
    ),
    "#withY":: "Y coordinate of the elliptic curve point",
    withY(value):: (
      local converted = value;
      assert std.isString(converted) : '"y" expected to be of type "string"';
      {
        y: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withGroupsClaim(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups_claim: value,
    }
  ),
  withJwks(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwks: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withGroupsClaimMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups_claim+: converted,
    }
  ),
  withJwksMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwks+: converted,
    }
  ),
}
