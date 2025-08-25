{
  local block = self,
  new(name, brand_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_default_signin_page",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["brand_id", "id", "page_content", "widget_version"],
      },
    }
    + block.withBrandId(brand_id)
  ),
  "#withBrandId":: "brand id of the preview signin page",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  content_security_policy_setting:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_default_signin_page",
          terraformType:: "data",
          terraformPrefix:: "data",
          terraformName:: name,
          terraformAttributes:: ["mode", "report_uri", "src_list"],
        },
      }
    ),
  },
  widget_customizations:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_default_signin_page",
          terraformType:: "data",
          terraformPrefix:: "data",
          terraformName:: name,
          terraformAttributes:: ["authenticator_page_custom_link_label", "authenticator_page_custom_link_url", "classic_recovery_flow_email_or_username_label", "custom_link_1_label", "custom_link_1_url", "custom_link_2_label", "custom_link_2_url", "forgot_password_label", "forgot_password_url", "help_label", "help_url", "password_info_tip", "password_label", "show_password_visibility_toggle", "show_user_identifier", "sign_in_label", "unlock_account_label", "unlock_account_url", "username_info_tip", "username_label", "widget_generation"],
        },
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
