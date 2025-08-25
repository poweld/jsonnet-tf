{
  local block = self,
  new(terraformName, authUrl, label, url):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_basic_auth",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["accessibility_error_redirect_url", "accessibility_login_redirect_url", "accessibility_self_service", "admin_note", "app_links_json", "auth_url", "auto_submit_toolbar", "credentials_scheme", "enduser_note", "hide_ios", "hide_web", "id", "label", "logo", "logo_url", "name", "reveal_password", "shared_password", "shared_username", "sign_on_mode", "status", "url", "user_name_template", "user_name_template_push_status", "user_name_template_suffix", "user_name_template_type"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAuthUrl(authUrl)
    + block.withLabel(label)
    + block.withUrl(url)
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
  "#withAuthUrl":: "The URL of the authenticating site for this app.",
  withAuthUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_url" expected to be of type "string"';
    {
      auth_url: converted,
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
  "#withCredentialsScheme":: "Application credentials scheme. One of: `EDIT_USERNAME_AND_PASSWORD`, `ADMIN_SETS_CREDENTIALS`, `EDIT_PASSWORD_ONLY`, `EXTERNAL_PASSWORD_SYNC`, or `SHARED_USERNAME_AND_PASSWORD`",
  withCredentialsScheme(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_scheme" expected to be of type "string"';
    {
      credentials_scheme: converted,
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
  "#withRevealPassword":: "Allow user to reveal password. Default is false. It can not be set to true if credentials_scheme is 'ADMIN_SETS_CREDENTIALS', 'SHARED_USERNAME_AND_PASSWORD' or 'EXTERNAL_PASSWORD_SYNC'.",
  withRevealPassword(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"reveal_password" expected to be of type "bool"';
    {
      reveal_password: converted,
    }
  ),
  "#withSharedPassword":: "Shared password, required for certain schemes.",
  withSharedPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"shared_password" expected to be of type "string"';
    {
      shared_password: converted,
    }
  ),
  "#withSharedUsername":: "Shared username, required for certain schemes.",
  withSharedUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"shared_username" expected to be of type "string"';
    {
      shared_username: converted,
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
  "#withUrl":: "The URL of the sign-in page for this app.",
  withUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
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
  "#withUserNameTemplatePushStatus":: "Push username on update. Valid values: `PUSH`, `DONT_PUSH` and `NOT_CONFIGURED`",
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
  "#withUserNameTemplateType":: "Username template type. Default: `BUILT_IN`. Valid values: `NONE`, `CUSTOM`, `BUILT_IN`",
  withUserNameTemplateType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_type" expected to be of type "string"';
    {
      user_name_template_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
