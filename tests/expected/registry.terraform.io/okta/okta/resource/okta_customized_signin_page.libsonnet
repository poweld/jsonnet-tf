{
  local block = self,

  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_customized_signin_page",
          type:: "resource",
          attributes:: ["brand_id", "id", "page_content", "widget_version"],
        },
      },
    }
    + block.withBrandId(brandId)
  ),

  "#withBrandId":: "brand id of the preview signin page",
  withBrandId(value):: (
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),

  "#withPageContent":: "page content of the preview signin page",
  withPageContent(value):: (
    assert std.isString(value) : '"page_content" expected to be of type "string"';

    {
      page_content: value,
    }
  ),

  "#withWidgetVersion":: "widget version specified as a Semver. The following are currently supported \t\t\t*, ^1, ^2, ^3, ^4, ^5, ^6, ^7, 1.6, 1.7, 1.8, 1.9, 1.10, 1.11, 1.12, 1.13, 2.1, 2.2, 2.3, 2.4, \t\t\t2.5, 2.6, 2.7, 2.8, 2.9, 2.10, 2.11, 2.12, 2.13, 2.14, 2.15, 2.16, 2.17, 2.18, 2.19, 2.20, 2.21, \t\t\t3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7, 3.8, 3.9, 4.0, 4.1, 4.2, 4.3, 4.4, 4.5, 5.0, 5.1, 5.2, 5.3, \t\t\t5.4, 5.5, 5.6, 5.7, 5.8, 5.9, 5.10, 5.11, 5.12, 5.13, 5.14, 5.15, 5.16, 6.0, 6.1, 6.2, 6.3, 6.4, 6.5, \t\t\t6.6, 6.7, 6.8, 6.9, 7.0, 7.1, 7.2, 7.3, 7.4, 7.5, 7.6, 7.7, 7.8, 7.9, 7.10, 7.11, 7.12, 7.13.",
  withWidgetVersion(value):: (
    assert std.isString(value) : '"widget_version" expected to be of type "string"';

    {
      widget_version: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  contentSecurityPolicySetting:: {
    local block = self,

    new():: (
      {}
    ),

    "#withMode":: "enforced or report_only",
    withMode(value):: (
      assert std.isString(value) : '"mode" expected to be of type "string"';

      {
        mode: value,
      }
    ),

    withReportUri(value):: (
      assert std.isString(value) : '"report_uri" expected to be of type "string"';

      {
        report_uri: value,
      }
    ),

    withSrcList(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"src_list" expected to be of type "list"';

      {
        src_list: converted,
      }
    ),

    withSrcListMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"src_list" expected to be of type "list"';

      {
        src_list+: converted,
      }
    ),
  },
  widgetCustomizations:: {
    local block = self,

    new(widgetGeneration):: (
      {}
      + block.withWidgetGeneration(widgetGeneration)
    ),

    withAuthenticatorPageCustomLinkLabel(value):: (
      assert std.isString(value) : '"authenticator_page_custom_link_label" expected to be of type "string"';

      {
        authenticator_page_custom_link_label: value,
      }
    ),

    withAuthenticatorPageCustomLinkUrl(value):: (
      assert std.isString(value) : '"authenticator_page_custom_link_url" expected to be of type "string"';

      {
        authenticator_page_custom_link_url: value,
      }
    ),

    withClassicRecoveryFlowEmailOrUsernameLabel(value):: (
      assert std.isString(value) : '"classic_recovery_flow_email_or_username_label" expected to be of type "string"';

      {
        classic_recovery_flow_email_or_username_label: value,
      }
    ),

    withCustomLink_1Label(value):: (
      assert std.isString(value) : '"custom_link_1_label" expected to be of type "string"';

      {
        custom_link_1_label: value,
      }
    ),

    withCustomLink_1Url(value):: (
      assert std.isString(value) : '"custom_link_1_url" expected to be of type "string"';

      {
        custom_link_1_url: value,
      }
    ),

    withCustomLink_2Label(value):: (
      assert std.isString(value) : '"custom_link_2_label" expected to be of type "string"';

      {
        custom_link_2_label: value,
      }
    ),

    withCustomLink_2Url(value):: (
      assert std.isString(value) : '"custom_link_2_url" expected to be of type "string"';

      {
        custom_link_2_url: value,
      }
    ),

    withForgotPasswordLabel(value):: (
      assert std.isString(value) : '"forgot_password_label" expected to be of type "string"';

      {
        forgot_password_label: value,
      }
    ),

    withForgotPasswordUrl(value):: (
      assert std.isString(value) : '"forgot_password_url" expected to be of type "string"';

      {
        forgot_password_url: value,
      }
    ),

    withHelpLabel(value):: (
      assert std.isString(value) : '"help_label" expected to be of type "string"';

      {
        help_label: value,
      }
    ),

    withHelpUrl(value):: (
      assert std.isString(value) : '"help_url" expected to be of type "string"';

      {
        help_url: value,
      }
    ),

    withPasswordInfoTip(value):: (
      assert std.isString(value) : '"password_info_tip" expected to be of type "string"';

      {
        password_info_tip: value,
      }
    ),

    withPasswordLabel(value):: (
      assert std.isString(value) : '"password_label" expected to be of type "string"';

      {
        password_label: value,
      }
    ),

    withShowPasswordVisibilityToggle(value):: (
      assert std.isBoolean(value) : '"show_password_visibility_toggle" expected to be of type "bool"';

      {
        show_password_visibility_toggle: value,
      }
    ),

    withShowUserIdentifier(value):: (
      assert std.isBoolean(value) : '"show_user_identifier" expected to be of type "bool"';

      {
        show_user_identifier: value,
      }
    ),

    withSignInLabel(value):: (
      assert std.isString(value) : '"sign_in_label" expected to be of type "string"';

      {
        sign_in_label: value,
      }
    ),

    withUnlockAccountLabel(value):: (
      assert std.isString(value) : '"unlock_account_label" expected to be of type "string"';

      {
        unlock_account_label: value,
      }
    ),

    withUnlockAccountUrl(value):: (
      assert std.isString(value) : '"unlock_account_url" expected to be of type "string"';

      {
        unlock_account_url: value,
      }
    ),

    withUsernameInfoTip(value):: (
      assert std.isString(value) : '"username_info_tip" expected to be of type "string"';

      {
        username_info_tip: value,
      }
    ),

    withUsernameLabel(value):: (
      assert std.isString(value) : '"username_label" expected to be of type "string"';

      {
        username_label: value,
      }
    ),

    withWidgetGeneration(value):: (
      assert std.isString(value) : '"widget_generation" expected to be of type "string"';

      {
        widget_generation: value,
      }
    ),
  },
  withContentSecurityPolicySetting(value):: (
    {
      content_security_policy_setting: value,
    }
  ),
  withWidgetCustomizations(value):: (
    {
      widget_customizations: value,
    }
  ),
}
