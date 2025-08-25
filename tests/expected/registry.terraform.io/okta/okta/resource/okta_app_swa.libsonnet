{
  local block = self,
  new(name, label):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_swa",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "accessibility_error_redirect_url", "accessibility_login_redirect_url", "accessibility_self_service", "admin_note", "app_links_json", "auto_submit_toolbar", "button_field", "checkbox", "enduser_note", "hide_ios", "hide_web", "id", "label", "logo", "logo_url", "password_field", "preconfigured_app", "redirect_url", "sign_on_mode", "status", "url", "url_regex", "user_name_template", "user_name_template_push_status", "user_name_template_suffix", "user_name_template_type", "username_field"],
      },
    }
    + block.withName(name)
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
  "#withAutoSubmitToolbar":: "Display auto submit toolbar",
  withAutoSubmitToolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  "#withButtonField":: "Login button field",
  withButtonField(value):: (
    local converted = value;
    assert std.isString(converted) : '"button_field" expected to be of type "string"';
    {
      button_field: converted,
    }
  ),
  "#withCheckbox":: "CSS selector for the checkbox",
  withCheckbox(value):: (
    local converted = value;
    assert std.isString(converted) : '"checkbox" expected to be of type "string"';
    {
      checkbox: converted,
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  "#withName":: "Name of the app.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPasswordField":: "Login password field",
  withPasswordField(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_field" expected to be of type "string"';
    {
      password_field: converted,
    }
  ),
  "#withPreconfiguredApp":: "Preconfigured app name",
  withPreconfiguredApp(value):: (
    local converted = value;
    assert std.isString(converted) : '"preconfigured_app" expected to be of type "string"';
    {
      preconfigured_app: converted,
    }
  ),
  "#withRedirectUrl":: "If going to the login page URL redirects to another page, then enter that URL here",
  withRedirectUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"redirect_url" expected to be of type "string"';
    {
      redirect_url: converted,
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
  "#withUrl":: "Login URL",
  withUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  "#withUrlRegex":: "A regex that further restricts URL to the specified regex",
  withUrlRegex(value):: (
    local converted = value;
    assert std.isString(converted) : '"url_regex" expected to be of type "string"';
    {
      url_regex: converted,
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
  "#withUsernameField":: "Login username field",
  withUsernameField(value):: (
    local converted = value;
    assert std.isString(converted) : '"username_field" expected to be of type "string"';
    {
      username_field: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_app_swa",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["create", "read", "update"],
        },
      }
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
