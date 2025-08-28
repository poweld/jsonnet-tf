{
  local block = self,
  new(terraformName, brandId, pageContent, widgetVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_preview_signin_page",
          type:: "resource",
          attributes:: ["brand_id", "id", "page_content", "widget_version"],
        },
      },
    }
    + block.withBrandId(brandId)
    + block.withPageContent(pageContent)
    + block.withWidgetVersion(widgetVersion)
  ),
  "#withBrandId":: "brand id of the preview signin page",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withPageContent":: "page content of the preview signin page",
  withPageContent(value):: (
    local converted = value;
    assert std.isString(converted) : '"page_content" expected to be of type "string"';
    {
      page_content: converted,
    }
  ),
  "#withWidgetVersion":: "widget version specified as a Semver. The following are currently supported \t\t\t*, ^1, ^2, ^3, ^4, ^5, ^6, ^7, 1.6, 1.7, 1.8, 1.9, 1.10, 1.11, 1.12, 1.13, 2.1, 2.2, 2.3, 2.4, \t\t\t2.5, 2.6, 2.7, 2.8, 2.9, 2.10, 2.11, 2.12, 2.13, 2.14, 2.15, 2.16, 2.17, 2.18, 2.19, 2.20, 2.21, \t\t\t3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7, 3.8, 3.9, 4.0, 4.1, 4.2, 4.3, 4.4, 4.5, 5.0, 5.1, 5.2, 5.3, \t\t\t5.4, 5.5, 5.6, 5.7, 5.8, 5.9, 5.10, 5.11, 5.12, 5.13, 5.14, 5.15, 5.16, 6.0, 6.1, 6.2, 6.3, 6.4, 6.5, \t\t\t6.6, 6.7, 6.8, 6.9, 7.0, 7.1, 7.2, 7.3, 7.4, 7.5, 7.6, 7.7, 7.8, 7.9, 7.10, 7.11, 7.12, 7.13.",
  withWidgetVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"widget_version" expected to be of type "string"';
    {
      widget_version: converted,
    }
  ),
  content_security_policy_setting:: {
    local block = self,
    new():: (
      {}
    ),
    "#withMode":: "enforced or report_only",
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    withReportUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"report_uri" expected to be of type "string"';
      {
        report_uri: converted,
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
  widget_customizations:: {
    local block = self,
    new(widgetGeneration):: (
      {}
      + block.withWidgetGeneration(widgetGeneration)
    ),
    withAuthenticatorPageCustomLinkLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"authenticator_page_custom_link_label" expected to be of type "string"';
      {
        authenticator_page_custom_link_label: converted,
      }
    ),
    withAuthenticatorPageCustomLinkUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"authenticator_page_custom_link_url" expected to be of type "string"';
      {
        authenticator_page_custom_link_url: converted,
      }
    ),
    withClassicRecoveryFlowEmailOrUsernameLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"classic_recovery_flow_email_or_username_label" expected to be of type "string"';
      {
        classic_recovery_flow_email_or_username_label: converted,
      }
    ),
    withCustomLink_1Label(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_1_label" expected to be of type "string"';
      {
        custom_link_1_label: converted,
      }
    ),
    withCustomLink_1Url(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_1_url" expected to be of type "string"';
      {
        custom_link_1_url: converted,
      }
    ),
    withCustomLink_2Label(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_2_label" expected to be of type "string"';
      {
        custom_link_2_label: converted,
      }
    ),
    withCustomLink_2Url(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_link_2_url" expected to be of type "string"';
      {
        custom_link_2_url: converted,
      }
    ),
    withForgotPasswordLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"forgot_password_label" expected to be of type "string"';
      {
        forgot_password_label: converted,
      }
    ),
    withForgotPasswordUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"forgot_password_url" expected to be of type "string"';
      {
        forgot_password_url: converted,
      }
    ),
    withHelpLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"help_label" expected to be of type "string"';
      {
        help_label: converted,
      }
    ),
    withHelpUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"help_url" expected to be of type "string"';
      {
        help_url: converted,
      }
    ),
    withPasswordInfoTip(value):: (
      local converted = value;
      assert std.isString(converted) : '"password_info_tip" expected to be of type "string"';
      {
        password_info_tip: converted,
      }
    ),
    withPasswordLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"password_label" expected to be of type "string"';
      {
        password_label: converted,
      }
    ),
    withShowPasswordVisibilityToggle(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"show_password_visibility_toggle" expected to be of type "bool"';
      {
        show_password_visibility_toggle: converted,
      }
    ),
    withShowUserIdentifier(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"show_user_identifier" expected to be of type "bool"';
      {
        show_user_identifier: converted,
      }
    ),
    withSignInLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"sign_in_label" expected to be of type "string"';
      {
        sign_in_label: converted,
      }
    ),
    withUnlockAccountLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"unlock_account_label" expected to be of type "string"';
      {
        unlock_account_label: converted,
      }
    ),
    withUnlockAccountUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"unlock_account_url" expected to be of type "string"';
      {
        unlock_account_url: converted,
      }
    ),
    withUsernameInfoTip(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_info_tip" expected to be of type "string"';
      {
        username_info_tip: converted,
      }
    ),
    withUsernameLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_label" expected to be of type "string"';
      {
        username_label: converted,
      }
    ),
    withWidgetGeneration(value):: (
      local converted = value;
      assert std.isString(converted) : '"widget_generation" expected to be of type "string"';
      {
        widget_generation: converted,
      }
    ),
  },
  withContentSecurityPolicySetting(value):: (
    local converted = value;
    {
      content_security_policy_setting: value,
    }
  ),
  withWidgetCustomizations(value):: (
    local converted = value;
    {
      widget_customizations: value,
    }
  ),
}
