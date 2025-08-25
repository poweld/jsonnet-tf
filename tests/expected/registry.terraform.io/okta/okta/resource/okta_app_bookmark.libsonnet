{
  local block = self,
  new(name, label, url):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_bookmark",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "accessibility_error_redirect_url", "accessibility_login_redirect_url", "accessibility_self_service", "admin_note", "app_links_json", "authentication_policy", "auto_submit_toolbar", "enduser_note", "hide_ios", "hide_web", "id", "label", "logo", "logo_url", "request_integration", "sign_on_mode", "status", "url"],
      },
    }
    + block.withName(name)
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
  "#withAuthenticationPolicy":: "The ID of the associated app_signon_policy. If this property is removed from the application the default sign-on-policy will be associated with this application.",
  withAuthenticationPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_policy" expected to be of type "string"';
    {
      authentication_policy: converted,
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
  "#withRequestIntegration":: "Would you like Okta to add an integration for this app?",
  withRequestIntegration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"request_integration" expected to be of type "bool"';
    {
      request_integration: converted,
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
  "#withUrl":: "The URL of the bookmark.",
  withUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_app_bookmark",
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
