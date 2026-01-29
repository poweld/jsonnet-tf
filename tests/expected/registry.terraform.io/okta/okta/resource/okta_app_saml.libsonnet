{
  local block = self,

  new(terraformName, label):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_saml",
          type:: "resource",
          attributes:: ["accessibility_error_redirect_url", "accessibility_login_redirect_url", "accessibility_self_service", "acs_endpoints", "admin_note", "app_links_json", "app_settings_json", "assertion_signed", "audience", "authentication_policy", "authn_context_class_ref", "auto_submit_toolbar", "certificate", "default_relay_state", "destination", "digest_algorithm", "embed_url", "enduser_note", "entity_key", "entity_url", "features", "hide_ios", "hide_web", "honor_force_authn", "http_post_binding", "http_redirect_binding", "id", "idp_issuer", "implicit_assignment", "inline_hook_id", "key_id", "key_name", "key_years_valid", "keys", "label", "logo", "logo_url", "metadata", "metadata_url", "name", "preconfigured_app", "recipient", "request_compressed", "response_signed", "saml_signed_request_enabled", "saml_version", "sign_on_mode", "signature_algorithm", "single_logout_certificate", "single_logout_issuer", "single_logout_url", "sp_issuer", "sso_url", "status", "subject_name_id_format", "subject_name_id_template", "user_name_template", "user_name_template_push_status", "user_name_template_suffix", "user_name_template_type"],
        },
      },
    }
    + block.withLabel(label)
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

  "#withAcsEndpoints":: "An array of ACS endpoints. You can configure a maximum of 100 endpoints.",
  withAcsEndpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"acs_endpoints" expected to be of type "list"';

    {
      acs_endpoints: converted,
    }
  ),

  "#withAcsEndpointsMixin":: "An array of ACS endpoints. You can configure a maximum of 100 endpoints.",
  withAcsEndpointsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"acs_endpoints" expected to be of type "list"';

    {
      acs_endpoints+: converted,
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

  "#withAssertionSigned":: "Determines whether the SAML assertion is digitally signed",
  withAssertionSigned(value):: (
    assert std.isBoolean(value) : '"assertion_signed" expected to be of type "bool"';

    {
      assertion_signed: value,
    }
  ),

  "#withAudience":: "Audience Restriction",
  withAudience(value):: (
    assert std.isString(value) : '"audience" expected to be of type "string"';

    {
      audience: value,
    }
  ),

  "#withAuthenticationPolicy":: "The ID of the associated `app_signon_policy`. If this property is removed from the application the `default` sign-on-policy will be associated with this application.y",
  withAuthenticationPolicy(value):: (
    assert std.isString(value) : '"authentication_policy" expected to be of type "string"';

    {
      authentication_policy: value,
    }
  ),

  "#withAuthnContextClassRef":: "Identifies the SAML authentication context class for the assertion’s authentication statement",
  withAuthnContextClassRef(value):: (
    assert std.isString(value) : '"authn_context_class_ref" expected to be of type "string"';

    {
      authn_context_class_ref: value,
    }
  ),

  "#withAutoSubmitToolbar":: "Display auto submit toolbar. Default is: `false`",
  withAutoSubmitToolbar(value):: (
    assert std.isBoolean(value) : '"auto_submit_toolbar" expected to be of type "bool"';

    {
      auto_submit_toolbar: value,
    }
  ),

  "#withDefaultRelayState":: "Identifies a specific application resource in an IDP initiated SSO scenario.",
  withDefaultRelayState(value):: (
    assert std.isString(value) : '"default_relay_state" expected to be of type "string"';

    {
      default_relay_state: value,
    }
  ),

  "#withDestination":: "Identifies the location where the SAML response is intended to be sent inside of the SAML assertion",
  withDestination(value):: (
    assert std.isString(value) : '"destination" expected to be of type "string"';

    {
      destination: value,
    }
  ),

  "#withDigestAlgorithm":: "Determines the digest algorithm used to digitally sign the SAML assertion and response",
  withDigestAlgorithm(value):: (
    assert std.isString(value) : '"digest_algorithm" expected to be of type "string"';

    {
      digest_algorithm: value,
    }
  ),

  "#withEnduserNote":: "Application notes for end users.",
  withEnduserNote(value):: (
    assert std.isString(value) : '"enduser_note" expected to be of type "string"';

    {
      enduser_note: value,
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

  "#withHonorForceAuthn":: "Prompt user to re-authenticate if SP asks for it. Default is: `false`",
  withHonorForceAuthn(value):: (
    assert std.isBoolean(value) : '"honor_force_authn" expected to be of type "bool"';

    {
      honor_force_authn: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withIdpIssuer":: "SAML issuer ID",
  withIdpIssuer(value):: (
    assert std.isString(value) : '"idp_issuer" expected to be of type "string"';

    {
      idp_issuer: value,
    }
  ),

  "#withImplicitAssignment":: "*Early Access Property*. Enable Federation Broker Mode.",
  withImplicitAssignment(value):: (
    assert std.isBoolean(value) : '"implicit_assignment" expected to be of type "bool"';

    {
      implicit_assignment: value,
    }
  ),

  "#withInlineHookId":: "Saml Inline Hook setting",
  withInlineHookId(value):: (
    assert std.isString(value) : '"inline_hook_id" expected to be of type "string"';

    {
      inline_hook_id: value,
    }
  ),

  "#withKeyName":: "Certificate name. This modulates the rotation of keys. New name == new key. Required to be set with `key_years_valid`",
  withKeyName(value):: (
    assert std.isString(value) : '"key_name" expected to be of type "string"';

    {
      key_name: value,
    }
  ),

  "#withKeyYearsValid":: "Number of years the certificate is valid (2 - 10 years).",
  withKeyYearsValid(value):: (
    assert std.isNumber(value) : '"key_years_valid" expected to be of type "number"';

    {
      key_years_valid: value,
    }
  ),

  "#withLabel":: "The Application's display name.",
  withLabel(value):: (
    assert std.isString(value) : '"label" expected to be of type "string"';

    {
      label: value,
    }
  ),

  "#withLogo":: "Local file path to the logo. The file must be in PNG, JPG, or GIF format, and less than 1 MB in size.",
  withLogo(value):: (
    assert std.isString(value) : '"logo" expected to be of type "string"';

    {
      logo: value,
    }
  ),

  "#withPreconfiguredApp":: "Name of application from the Okta Integration Network. For instance 'slack'. If not included a custom app will be created.  If not provided the following arguments are required: 'sso_url' 'recipient' 'destination' 'audience' 'subject_name_id_template' 'subject_name_id_format' 'signature_algorithm' 'digest_algorithm' 'authn_context_class_ref'",
  withPreconfiguredApp(value):: (
    assert std.isString(value) : '"preconfigured_app" expected to be of type "string"';

    {
      preconfigured_app: value,
    }
  ),

  "#withRecipient":: "The location where the app may present the SAML assertion",
  withRecipient(value):: (
    assert std.isString(value) : '"recipient" expected to be of type "string"';

    {
      recipient: value,
    }
  ),

  "#withRequestCompressed":: "Denotes whether the request is compressed or not.",
  withRequestCompressed(value):: (
    assert std.isBoolean(value) : '"request_compressed" expected to be of type "bool"';

    {
      request_compressed: value,
    }
  ),

  "#withResponseSigned":: "Determines whether the SAML auth response message is digitally signed",
  withResponseSigned(value):: (
    assert std.isBoolean(value) : '"response_signed" expected to be of type "bool"';

    {
      response_signed: value,
    }
  ),

  "#withSamlSignedRequestEnabled":: "SAML Signed Request enabled",
  withSamlSignedRequestEnabled(value):: (
    assert std.isBoolean(value) : '"saml_signed_request_enabled" expected to be of type "bool"';

    {
      saml_signed_request_enabled: value,
    }
  ),

  "#withSamlVersion":: "SAML version for the app's sign-on mode. Valid values are: `2.0` or `1.1`. Default is `2.0`",
  withSamlVersion(value):: (
    assert std.isString(value) : '"saml_version" expected to be of type "string"';

    {
      saml_version: value,
    }
  ),

  "#withSignatureAlgorithm":: "Signature algorithm used to digitally sign the assertion and response",
  withSignatureAlgorithm(value):: (
    assert std.isString(value) : '"signature_algorithm" expected to be of type "string"';

    {
      signature_algorithm: value,
    }
  ),

  "#withSingleLogoutCertificate":: "x509 encoded certificate that the Service Provider uses to sign Single Logout requests. Note: should be provided without `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`, see [official documentation](https://developer.okta.com/docs/reference/api/apps/#service-provider-certificate).",
  withSingleLogoutCertificate(value):: (
    assert std.isString(value) : '"single_logout_certificate" expected to be of type "string"';

    {
      single_logout_certificate: value,
    }
  ),

  "#withSingleLogoutIssuer":: "The issuer of the Service Provider that generates the Single Logout request",
  withSingleLogoutIssuer(value):: (
    assert std.isString(value) : '"single_logout_issuer" expected to be of type "string"';

    {
      single_logout_issuer: value,
    }
  ),

  "#withSingleLogoutUrl":: "The location where the logout response is sent",
  withSingleLogoutUrl(value):: (
    assert std.isString(value) : '"single_logout_url" expected to be of type "string"';

    {
      single_logout_url: value,
    }
  ),

  "#withSpIssuer":: "SAML SP issuer ID",
  withSpIssuer(value):: (
    assert std.isString(value) : '"sp_issuer" expected to be of type "string"';

    {
      sp_issuer: value,
    }
  ),

  "#withSsoUrl":: "Single Sign On URL",
  withSsoUrl(value):: (
    assert std.isString(value) : '"sso_url" expected to be of type "string"';

    {
      sso_url: value,
    }
  ),

  "#withStatus":: "Status of application. By default, it is `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withSubjectNameIdFormat":: "Identifies the SAML processing rules.",
  withSubjectNameIdFormat(value):: (
    assert std.isString(value) : '"subject_name_id_format" expected to be of type "string"';

    {
      subject_name_id_format: value,
    }
  ),

  "#withSubjectNameIdTemplate":: "Template for app user's username when a user is assigned to the app",
  withSubjectNameIdTemplate(value):: (
    assert std.isString(value) : '"subject_name_id_template" expected to be of type "string"';

    {
      subject_name_id_template: value,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  acsEndpointsIndices:: {
    local block = self,

    new(index, url):: (
      {}
      + block.withIndex(index)
      + block.withUrl(url)
    ),

    withIndex(value):: (
      assert std.isNumber(value) : '"index" expected to be of type "number"';

      {
        index: value,
      }
    ),

    withUrl(value):: (
      assert std.isString(value) : '"url" expected to be of type "string"';

      {
        url: value,
      }
    ),
  },
  attributeStatements:: {
    local block = self,

    new(name):: (
      {}
      + block.withName(name)
    ),

    "#withFilterType":: "Type of group attribute filter. Valid values are: `STARTS_WITH`, `EQUALS`, `CONTAINS`, or `REGEX`",
    withFilterType(value):: (
      assert std.isString(value) : '"filter_type" expected to be of type "string"';

      {
        filter_type: value,
      }
    ),

    "#withFilterValue":: "Filter value to use",
    withFilterValue(value):: (
      assert std.isString(value) : '"filter_value" expected to be of type "string"';

      {
        filter_value: value,
      }
    ),

    "#withName":: "The reference name of the attribute statement",
    withName(value):: (
      assert std.isString(value) : '"name" expected to be of type "string"';

      {
        name: value,
      }
    ),

    "#withNamespace":: "The attribute namespace. It can be set to `urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified`, `urn:oasis:names:tc:SAML:2.0:attrname-format:uri`, or `urn:oasis:names:tc:SAML:2.0:attrname-format:basic`",
    withNamespace(value):: (
      assert std.isString(value) : '"namespace" expected to be of type "string"';

      {
        namespace: value,
      }
    ),

    "#withType":: "The type of attribute statements object",
    withType(value):: (
      assert std.isString(value) : '"type" expected to be of type "string"';

      {
        type: value,
      }
    ),

    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';

      {
        values: converted,
      }
    ),

    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';

      {
        values+: converted,
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
  withAcsEndpointsIndices(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acs_endpoints_indices: converted,
    }
  ),
  withAttributeStatements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute_statements: converted,
    }
  ),
  withTimeouts(value):: (
    {
      timeouts: value,
    }
  ),
  withAcsEndpointsIndicesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acs_endpoints_indices+: converted,
    }
  ),
  withAttributeStatementsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute_statements+: converted,
    }
  ),
}
