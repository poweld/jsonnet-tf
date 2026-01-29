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
    + block.withLabel(label)
    + block.withType(type)
  ),

  "#withAccessibilityErrorRedirectUrl":: "Custom error page URL",
  withAccessibilityErrorRedirectUrl(value):: (
    assert std.isString(value) : '"accessibility_error_redirect_url" expected to be of type "string"';

    {
      accessibility_error_redirect_url: value,
    }
  ),

  "#withAccessibilityLoginRedirectUrl":: "Custom login page URL",
  withAccessibilityLoginRedirectUrl(value):: (
    assert std.isString(value) : '"accessibility_login_redirect_url" expected to be of type "string"';

    {
      accessibility_login_redirect_url: value,
    }
  ),

  "#withAccessibilitySelfService":: "Enable self service. Default is `false`",
  withAccessibilitySelfService(value):: (
    assert std.isBoolean(value) : '"accessibility_self_service" expected to be of type "bool"';

    {
      accessibility_self_service: value,
    }
  ),

  "#withAdminNote":: "Application notes for admins.",
  withAdminNote(value):: (
    assert std.isString(value) : '"admin_note" expected to be of type "string"';

    {
      admin_note: value,
    }
  ),

  "#withAppLinksJson":: "Displays specific appLinks for the app. The value for each application link should be boolean.",
  withAppLinksJson(value):: (
    assert std.isString(value) : '"app_links_json" expected to be of type "string"';

    {
      app_links_json: value,
    }
  ),

  "#withAppSettingsJson":: "Application settings in JSON format",
  withAppSettingsJson(value):: (
    assert std.isString(value) : '"app_settings_json" expected to be of type "string"';

    {
      app_settings_json: value,
    }
  ),

  "#withAuthenticationPolicy":: "The ID of the associated app_signon_policy. If this property is removed from the application, the default sign-on-policy will be associated with this application. From now on, there is no need to attach authentication_policy for applications of type SERVICE",
  withAuthenticationPolicy(value):: (
    assert std.isString(value) : '"authentication_policy" expected to be of type "string"';

    {
      authentication_policy: value,
    }
  ),

  "#withAutoKeyRotation":: "Requested key rotation mode. If \t\t\t\tauto_key_rotation isn't specified, the client automatically opts in for Okta's \t\t\t\tkey rotation. You can update this property via the API or via the administrator \t\t\t\tUI. \t\t\t\tSee: https://developer.okta.com/docs/reference/api/apps/#oauth-credential-object'",
  withAutoKeyRotation(value):: (
    assert std.isBoolean(value) : '"auto_key_rotation" expected to be of type "bool"';

    {
      auto_key_rotation: value,
    }
  ),

  "#withAutoSubmitToolbar":: "Display auto submit toolbar",
  withAutoSubmitToolbar(value):: (
    assert std.isBoolean(value) : '"auto_submit_toolbar" expected to be of type "bool"';

    {
      auto_submit_toolbar: value,
    }
  ),

  "#withClientBasicSecret":: "The user provided OAuth client secret key value, this can be set when token_endpoint_auth_method is client_secret_basic. This does nothing when `omit_secret is set to true.",
  withClientBasicSecret(value):: (
    assert std.isString(value) : '"client_basic_secret" expected to be of type "string"';

    {
      client_basic_secret: value,
    }
  ),

  "#withClientId":: "OAuth client ID. If set during creation, app is created with this id.",
  withClientId(value):: (
    assert std.isString(value) : '"client_id" expected to be of type "string"';

    {
      client_id: value,
    }
  ),

  "#withClientUri":: "URI to a web page providing information about the client.",
  withClientUri(value):: (
    assert std.isString(value) : '"client_uri" expected to be of type "string"';

    {
      client_uri: value,
    }
  ),

  "#withConsentMethod":: "*Early Access Property*. Indicates whether user consent is required or implicit. Valid values: REQUIRED, TRUSTED. Default value is TRUSTED",
  withConsentMethod(value):: (
    assert std.isString(value) : '"consent_method" expected to be of type "string"';

    {
      consent_method: value,
    }
  ),

  "#withEnduserNote":: "Application notes for end users.",
  withEnduserNote(value):: (
    assert std.isString(value) : '"enduser_note" expected to be of type "string"';

    {
      enduser_note: value,
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
    assert std.isBoolean(value) : '"hide_ios" expected to be of type "bool"';

    {
      hide_ios: value,
    }
  ),

  "#withHideWeb":: "Do not display application icon to users",
  withHideWeb(value):: (
    assert std.isBoolean(value) : '"hide_web" expected to be of type "bool"';

    {
      hide_web: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withImplicitAssignment":: "*Early Access Property*. Enable Federation Broker Mode.",
  withImplicitAssignment(value):: (
    assert std.isBoolean(value) : '"implicit_assignment" expected to be of type "bool"';

    {
      implicit_assignment: value,
    }
  ),

  "#withIssuerMode":: "*Early Access Property*. Indicates whether the Okta Authorization Server uses the original Okta org domain URL or a custom domain URL as the issuer of ID token for this client.",
  withIssuerMode(value):: (
    assert std.isString(value) : '"issuer_mode" expected to be of type "string"';

    {
      issuer_mode: value,
    }
  ),

  "#withJwksUri":: "URL reference to JWKS",
  withJwksUri(value):: (
    assert std.isString(value) : '"jwks_uri" expected to be of type "string"';

    {
      jwks_uri: value,
    }
  ),

  "#withLabel":: "The Application's display name.",
  withLabel(value):: (
    assert std.isString(value) : '"label" expected to be of type "string"';

    {
      label: value,
    }
  ),

  "#withLoginMode":: "The type of Idp-Initiated login that the client supports, if any",
  withLoginMode(value):: (
    assert std.isString(value) : '"login_mode" expected to be of type "string"';

    {
      login_mode: value,
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
    assert std.isString(value) : '"login_uri" expected to be of type "string"';

    {
      login_uri: value,
    }
  ),

  "#withLogo":: "Local file path to the logo. The file must be in PNG, JPG, or GIF format, and less than 1 MB in size.",
  withLogo(value):: (
    assert std.isString(value) : '"logo" expected to be of type "string"';

    {
      logo: value,
    }
  ),

  "#withLogoUri":: "URI that references a logo for the client.",
  withLogoUri(value):: (
    assert std.isString(value) : '"logo_uri" expected to be of type "string"';

    {
      logo_uri: value,
    }
  ),

  "#withOmitSecret":: "This tells the provider not manage the client_secret value in state. When this is false (the default), it will cause the auto-generated client_secret to be persisted in the client_secret attribute in state. This also means that every time an update to this app is run, this value is also set on the API. If this changes from false => true, the `client_secret` is dropped from state and the secret at the time of the apply is what remains. If this is ever changes from true => false your app will be recreated, due to the need to regenerate a secret we can store in state.",
  withOmitSecret(value):: (
    assert std.isBoolean(value) : '"omit_secret" expected to be of type "bool"';

    {
      omit_secret: value,
    }
  ),

  "#withPkceRequired":: "Require Proof Key for Code Exchange (PKCE) for additional verification key rotation mode. See: https://developer.okta.com/docs/reference/api/apps/#oauth-credential-object",
  withPkceRequired(value):: (
    assert std.isBoolean(value) : '"pkce_required" expected to be of type "bool"';

    {
      pkce_required: value,
    }
  ),

  "#withPolicyUri":: "URI to web page providing client policy document.",
  withPolicyUri(value):: (
    assert std.isString(value) : '"policy_uri" expected to be of type "string"';

    {
      policy_uri: value,
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
    assert std.isString(value) : '"profile" expected to be of type "string"';

    {
      profile: value,
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
    assert std.isNumber(value) : '"refresh_token_leeway" expected to be of type "number"';

    {
      refresh_token_leeway: value,
    }
  ),

  "#withRefreshTokenRotation":: "*Early Access Property* Refresh token rotation behavior, required with grant types refresh_token",
  withRefreshTokenRotation(value):: (
    assert std.isString(value) : '"refresh_token_rotation" expected to be of type "string"';

    {
      refresh_token_rotation: value,
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
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withTokenEndpointAuthMethod":: "Requested authentication method for the token endpoint, valid values include:  'client_secret_basic', 'client_secret_post', 'client_secret_jwt', 'private_key_jwt', 'none', etc.",
  withTokenEndpointAuthMethod(value):: (
    assert std.isString(value) : '"token_endpoint_auth_method" expected to be of type "string"';

    {
      token_endpoint_auth_method: value,
    }
  ),

  "#withTosUri":: "URI to web page providing client tos (terms of service).",
  withTosUri(value):: (
    assert std.isString(value) : '"tos_uri" expected to be of type "string"';

    {
      tos_uri: value,
    }
  ),

  "#withType":: "The type of client application.",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
    }
  ),

  "#withUserNameTemplate":: "Username template. Default: `${source.login}`",
  withUserNameTemplate(value):: (
    assert std.isString(value) : '"user_name_template" expected to be of type "string"';

    {
      user_name_template: value,
    }
  ),

  "#withUserNameTemplatePushStatus":: "Push username on update. Valid values: `PUSH` and `DONT_PUSH`",
  withUserNameTemplatePushStatus(value):: (
    assert std.isString(value) : '"user_name_template_push_status" expected to be of type "string"';

    {
      user_name_template_push_status: value,
    }
  ),

  "#withUserNameTemplateSuffix":: "Username template suffix",
  withUserNameTemplateSuffix(value):: (
    assert std.isString(value) : '"user_name_template_suffix" expected to be of type "string"';

    {
      user_name_template_suffix: value,
    }
  ),

  "#withUserNameTemplateType":: "Username template type. Default: `BUILT_IN`",
  withUserNameTemplateType(value):: (
    assert std.isString(value) : '"user_name_template_type" expected to be of type "string"';

    {
      user_name_template_type: value,
    }
  ),

  "#withWildcardRedirect":: "*Early Access Property*. Indicates if the client is allowed to use wildcard matching of redirect_uris",
  withWildcardRedirect(value):: (
    assert std.isString(value) : '"wildcard_redirect" expected to be of type "string"';

    {
      wildcard_redirect: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  groupsClaim:: {
    local block = self,

    new(name, type, value):: (
      {}
      + block.withName(name)
      + block.withType(type)
      + block.withValue(value)
    ),

    "#withFilterType":: "Groups claim filter. Can only be set if type is FILTER.",
    withFilterType(value):: (
      assert std.isString(value) : '"filter_type" expected to be of type "string"';

      {
        filter_type: value,
      }
    ),

    "#withName":: "Name of the claim that will be used in the token.",
    withName(value):: (
      assert std.isString(value) : '"name" expected to be of type "string"';

      {
        name: value,
      }
    ),

    "#withType":: "Groups claim type.",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    "#withValue":: "Value of the claim. Can be an Okta Expression Language statement that evaluates at the time the token is minted.",
    withValue(value):: (
      assert std.isString(value) : '"value" expected to be of type "string"';

      {
        value: value,
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
      assert std.isString(value) : '"e" expected to be of type "string"';

      {
        e: value,
      }
    ),

    "#withKid":: "Key ID",
    withKid(value):: (
      assert std.isString(value) : '"kid" expected to be of type "string"';

      {
        kid: value,
      }
    ),

    "#withKty":: "Key type",
    withKty(value):: (
      assert std.isString(value) : '"kty" expected to be of type "string"';

      {
        kty: value,
      }
    ),

    "#withN":: "RSA Modulus",
    withN(value):: (
      assert std.isString(value) : '"n" expected to be of type "string"';

      {
        n: value,
      }
    ),

    "#withX":: "X coordinate of the elliptic curve point",
    withX(value):: (
      assert std.isString(value) : '"x" expected to be of type "string"';

      {
        x: value,
      }
    ),

    "#withY":: "Y coordinate of the elliptic curve point",
    withY(value):: (
      assert std.isString(value) : '"y" expected to be of type "string"';

      {
        y: value,
      }
    ),
  },
  timeouts:: {
    local block = self,

    new():: (
      {}
    ),

    withCreate(value):: (
      assert std.isString(value) : '"create" expected to be of type "string"';

      {
        create: value,
      }
    ),

    withRead(value):: (
      assert std.isString(value) : '"read" expected to be of type "string"';

      {
        read: value,
      }
    ),

    withUpdate(value):: (
      assert std.isString(value) : '"update" expected to be of type "string"';

      {
        update: value,
      }
    ),
  },
  withGroupsClaim(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups_claim: converted,
    }
  ),
  withJwks(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwks: converted,
    }
  ),
  withTimeouts(value):: (
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
