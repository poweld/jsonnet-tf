{
  local block = self,

  new(terraformName, buttonSelector, extraFieldSelector, extraFieldValue, label, passwordSelector, url, usernameSelector):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_three_field",
          type:: "resource",
          attributes:: ["accessibility_error_redirect_url", "accessibility_login_redirect_url", "accessibility_self_service", "admin_note", "app_links_json", "auto_submit_toolbar", "button_selector", "credentials_scheme", "enduser_note", "extra_field_selector", "extra_field_value", "hide_ios", "hide_web", "id", "label", "logo", "logo_url", "name", "password_selector", "reveal_password", "shared_password", "shared_username", "sign_on_mode", "status", "url", "url_regex", "user_name_template", "user_name_template_push_status", "user_name_template_suffix", "user_name_template_type", "username_selector"],
        },
      },
    }
    + block.withButtonSelector(buttonSelector)
    + block.withExtraFieldSelector(extraFieldSelector)
    + block.withExtraFieldValue(extraFieldValue)
    + block.withLabel(label)
    + block.withPasswordSelector(passwordSelector)
    + block.withUrl(url)
    + block.withUsernameSelector(usernameSelector)
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

  "#withAutoSubmitToolbar":: "Display auto submit toolbar",
  withAutoSubmitToolbar(value):: (
    assert std.isBoolean(value) : '"auto_submit_toolbar" expected to be of type "bool"';

    {
      auto_submit_toolbar: value,
    }
  ),

  "#withButtonSelector":: "Login button field CSS selector",
  withButtonSelector(value):: (
    assert std.isString(value) : '"button_selector" expected to be of type "string"';

    {
      button_selector: value,
    }
  ),

  "#withCredentialsScheme":: "Application credentials scheme. One of: `EDIT_USERNAME_AND_PASSWORD`, `ADMIN_SETS_CREDENTIALS`, `EDIT_PASSWORD_ONLY`, `EXTERNAL_PASSWORD_SYNC`, or `SHARED_USERNAME_AND_PASSWORD`",
  withCredentialsScheme(value):: (
    assert std.isString(value) : '"credentials_scheme" expected to be of type "string"';

    {
      credentials_scheme: value,
    }
  ),

  "#withEnduserNote":: "Application notes for end users.",
  withEnduserNote(value):: (
    assert std.isString(value) : '"enduser_note" expected to be of type "string"';

    {
      enduser_note: value,
    }
  ),

  "#withExtraFieldSelector":: "Extra field CSS selector",
  withExtraFieldSelector(value):: (
    assert std.isString(value) : '"extra_field_selector" expected to be of type "string"';

    {
      extra_field_selector: value,
    }
  ),

  "#withExtraFieldValue":: "Value for extra form field",
  withExtraFieldValue(value):: (
    assert std.isString(value) : '"extra_field_value" expected to be of type "string"';

    {
      extra_field_value: value,
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

  "#withPasswordSelector":: "Login password field CSS selector",
  withPasswordSelector(value):: (
    assert std.isString(value) : '"password_selector" expected to be of type "string"';

    {
      password_selector: value,
    }
  ),

  "#withRevealPassword":: "Allow user to reveal password. It can not be set to `true` if `credentials_scheme` is `ADMIN_SETS_CREDENTIALS`, `SHARED_USERNAME_AND_PASSWORD` or `EXTERNAL_PASSWORD_SYNC`.",
  withRevealPassword(value):: (
    assert std.isBoolean(value) : '"reveal_password" expected to be of type "bool"';

    {
      reveal_password: value,
    }
  ),

  "#withSharedPassword":: "Shared password, required for certain schemes.",
  withSharedPassword(value):: (
    assert std.isString(value) : '"shared_password" expected to be of type "string"';

    {
      shared_password: value,
    }
  ),

  "#withSharedUsername":: "Shared username, required for certain schemes.",
  withSharedUsername(value):: (
    assert std.isString(value) : '"shared_username" expected to be of type "string"';

    {
      shared_username: value,
    }
  ),

  "#withStatus":: "Status of application. By default, it is `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withUrl":: "Login URL",
  withUrl(value):: (
    assert std.isString(value) : '"url" expected to be of type "string"';

    {
      url: value,
    }
  ),

  "#withUrlRegex":: "A regex that further restricts URL to the specified regex",
  withUrlRegex(value):: (
    assert std.isString(value) : '"url_regex" expected to be of type "string"';

    {
      url_regex: value,
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

  "#withUsernameSelector":: "Login username field CSS selector",
  withUsernameSelector(value):: (
    assert std.isString(value) : '"username_selector" expected to be of type "string"';

    {
      username_selector: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    {
      timeouts: value,
    }
  ),
}
