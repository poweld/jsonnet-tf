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
  "#withAssertionSigned":: "Determines whether the SAML assertion is digitally signed",
  withAssertionSigned(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assertion_signed" expected to be of type "bool"';
    {
      assertion_signed: converted,
    }
  ),
  "#withAudience":: "Audience Restriction",
  withAudience(value):: (
    local converted = value;
    assert std.isString(converted) : '"audience" expected to be of type "string"';
    {
      audience: converted,
    }
  ),
  "#withAuthenticationPolicy":: "The ID of the associated `app_signon_policy`. If this property is removed from the application the `default` sign-on-policy will be associated with this application.y",
  withAuthenticationPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_policy" expected to be of type "string"';
    {
      authentication_policy: converted,
    }
  ),
  "#withAuthnContextClassRef":: "Identifies the SAML authentication context class for the assertion’s authentication statement",
  withAuthnContextClassRef(value):: (
    local converted = value;
    assert std.isString(converted) : '"authn_context_class_ref" expected to be of type "string"';
    {
      authn_context_class_ref: converted,
    }
  ),
  "#withAutoSubmitToolbar":: "Display auto submit toolbar. Default is: `false`",
  withAutoSubmitToolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  "#withDefaultRelayState":: "Identifies a specific application resource in an IDP initiated SSO scenario.",
  withDefaultRelayState(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_relay_state" expected to be of type "string"';
    {
      default_relay_state: converted,
    }
  ),
  "#withDestination":: "Identifies the location where the SAML response is intended to be sent inside of the SAML assertion",
  withDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  "#withDigestAlgorithm":: "Determines the digest algorithm used to digitally sign the SAML assertion and response",
  withDigestAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"digest_algorithm" expected to be of type "string"';
    {
      digest_algorithm: converted,
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
  "#withHonorForceAuthn":: "Prompt user to re-authenticate if SP asks for it. Default is: `false`",
  withHonorForceAuthn(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"honor_force_authn" expected to be of type "bool"';
    {
      honor_force_authn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIdpIssuer":: "SAML issuer ID",
  withIdpIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_issuer" expected to be of type "string"';
    {
      idp_issuer: converted,
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
  "#withInlineHookId":: "Saml Inline Hook setting",
  withInlineHookId(value):: (
    local converted = value;
    assert std.isString(converted) : '"inline_hook_id" expected to be of type "string"';
    {
      inline_hook_id: converted,
    }
  ),
  "#withKeyName":: "Certificate name. This modulates the rotation of keys. New name == new key. Required to be set with `key_years_valid`",
  withKeyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  "#withKeyYearsValid":: "Number of years the certificate is valid (2 - 10 years).",
  withKeyYearsValid(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"key_years_valid" expected to be of type "number"';
    {
      key_years_valid: converted,
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
  "#withLogo":: "Local file path to the logo. The file must be in PNG, JPG, or GIF format, and less than 1 MB in size.",
  withLogo(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo" expected to be of type "string"';
    {
      logo: converted,
    }
  ),
  "#withPreconfiguredApp":: "Name of application from the Okta Integration Network. For instance 'slack'. If not included a custom app will be created.  If not provided the following arguments are required: 'sso_url' 'recipient' 'destination' 'audience' 'subject_name_id_template' 'subject_name_id_format' 'signature_algorithm' 'digest_algorithm' 'authn_context_class_ref'",
  withPreconfiguredApp(value):: (
    local converted = value;
    assert std.isString(converted) : '"preconfigured_app" expected to be of type "string"';
    {
      preconfigured_app: converted,
    }
  ),
  "#withRecipient":: "The location where the app may present the SAML assertion",
  withRecipient(value):: (
    local converted = value;
    assert std.isString(converted) : '"recipient" expected to be of type "string"';
    {
      recipient: converted,
    }
  ),
  "#withRequestCompressed":: "Denotes whether the request is compressed or not.",
  withRequestCompressed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"request_compressed" expected to be of type "bool"';
    {
      request_compressed: converted,
    }
  ),
  "#withResponseSigned":: "Determines whether the SAML auth response message is digitally signed",
  withResponseSigned(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"response_signed" expected to be of type "bool"';
    {
      response_signed: converted,
    }
  ),
  "#withSamlSignedRequestEnabled":: "SAML Signed Request enabled",
  withSamlSignedRequestEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"saml_signed_request_enabled" expected to be of type "bool"';
    {
      saml_signed_request_enabled: converted,
    }
  ),
  "#withSamlVersion":: "SAML version for the app's sign-on mode. Valid values are: `2.0` or `1.1`. Default is `2.0`",
  withSamlVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"saml_version" expected to be of type "string"';
    {
      saml_version: converted,
    }
  ),
  "#withSignatureAlgorithm":: "Signature algorithm used to digitally sign the assertion and response",
  withSignatureAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"signature_algorithm" expected to be of type "string"';
    {
      signature_algorithm: converted,
    }
  ),
  "#withSingleLogoutCertificate":: "x509 encoded certificate that the Service Provider uses to sign Single Logout requests. Note: should be provided without `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`, see [official documentation](https://developer.okta.com/docs/reference/api/apps/#service-provider-certificate).",
  withSingleLogoutCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_certificate" expected to be of type "string"';
    {
      single_logout_certificate: converted,
    }
  ),
  "#withSingleLogoutIssuer":: "The issuer of the Service Provider that generates the Single Logout request",
  withSingleLogoutIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_issuer" expected to be of type "string"';
    {
      single_logout_issuer: converted,
    }
  ),
  "#withSingleLogoutUrl":: "The location where the logout response is sent",
  withSingleLogoutUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_url" expected to be of type "string"';
    {
      single_logout_url: converted,
    }
  ),
  "#withSpIssuer":: "SAML SP issuer ID",
  withSpIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"sp_issuer" expected to be of type "string"';
    {
      sp_issuer: converted,
    }
  ),
  "#withSsoUrl":: "Single Sign On URL",
  withSsoUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_url" expected to be of type "string"';
    {
      sso_url: converted,
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
  "#withSubjectNameIdFormat":: "Identifies the SAML processing rules.",
  withSubjectNameIdFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_name_id_format" expected to be of type "string"';
    {
      subject_name_id_format: converted,
    }
  ),
  "#withSubjectNameIdTemplate":: "Template for app user's username when a user is assigned to the app",
  withSubjectNameIdTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_name_id_template" expected to be of type "string"';
    {
      subject_name_id_template: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  acs_endpoints_indices:: {
    local block = self,
    new(index, url):: (
      {}
      + block.withIndex(index)
      + block.withUrl(url)
    ),
    withIndex(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"index" expected to be of type "number"';
      {
        index: converted,
      }
    ),
    withUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
  },
  attribute_statements:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    "#withFilterType":: "Type of group attribute filter. Valid values are: `STARTS_WITH`, `EQUALS`, `CONTAINS`, or `REGEX`",
    withFilterType(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
      }
    ),
    "#withFilterValue":: "Filter value to use",
    withFilterValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_value" expected to be of type "string"';
      {
        filter_value: converted,
      }
    ),
    "#withName":: "The reference name of the attribute statement",
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    "#withNamespace":: "The attribute namespace. It can be set to `urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified`, `urn:oasis:names:tc:SAML:2.0:attrname-format:uri`, or `urn:oasis:names:tc:SAML:2.0:attrname-format:basic`",
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    "#withType":: "The type of attribute statements object",
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  withAcsEndpointsIndices(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acs_endpoints_indices: value,
    }
  ),
  withAttributeStatements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute_statements: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
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
