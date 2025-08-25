{
  local block = self,
  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_theme",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["background_image", "background_image_url", "brand_id", "email_template_touch_point_variant", "end_user_dashboard_touch_point_variant", "error_page_touch_point_variant", "favicon", "favicon_url", "id", "links", "logo", "logo_url", "primary_color_contrast_hex", "primary_color_hex", "secondary_color_contrast_hex", "secondary_color_hex", "sign_in_page_touch_point_variant", "theme_id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withBrandId(brandId)
  ),
  "#withBackgroundImage":: "Path to local file",
  withBackgroundImage(value):: (
    local converted = value;
    assert std.isString(converted) : '"background_image" expected to be of type "string"';
    {
      background_image: converted,
    }
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withEmailTemplateTouchPointVariant":: "Variant for email templates (`OKTA_DEFAULT`, `FULL_THEME`)",
  withEmailTemplateTouchPointVariant(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_template_touch_point_variant" expected to be of type "string"';
    {
      email_template_touch_point_variant: converted,
    }
  ),
  "#withEndUserDashboardTouchPointVariant":: "Variant for the Okta End-User Dashboard (`OKTA_DEFAULT`, `WHITE_LOGO_BACKGROUND`, `FULL_THEME`, `LOGO_ON_FULL_WHITE_BACKGROUND`)",
  withEndUserDashboardTouchPointVariant(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_user_dashboard_touch_point_variant" expected to be of type "string"';
    {
      end_user_dashboard_touch_point_variant: converted,
    }
  ),
  "#withErrorPageTouchPointVariant":: "Variant for the error page (`OKTA_DEFAULT`, `BACKGROUND_SECONDARY_COLOR`, `BACKGROUND_IMAGE`)",
  withErrorPageTouchPointVariant(value):: (
    local converted = value;
    assert std.isString(converted) : '"error_page_touch_point_variant" expected to be of type "string"';
    {
      error_page_touch_point_variant: converted,
    }
  ),
  "#withFavicon":: "Path to local file",
  withFavicon(value):: (
    local converted = value;
    assert std.isString(converted) : '"favicon" expected to be of type "string"';
    {
      favicon: converted,
    }
  ),
  "#withLogo":: "Path to local file",
  withLogo(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo" expected to be of type "string"';
    {
      logo: converted,
    }
  ),
  "#withPrimaryColorContrastHex":: "Primary color contrast hex code",
  withPrimaryColorContrastHex(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_color_contrast_hex" expected to be of type "string"';
    {
      primary_color_contrast_hex: converted,
    }
  ),
  "#withPrimaryColorHex":: "Primary color hex code",
  withPrimaryColorHex(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_color_hex" expected to be of type "string"';
    {
      primary_color_hex: converted,
    }
  ),
  "#withSecondaryColorContrastHex":: "Secondary color contrast hex code",
  withSecondaryColorContrastHex(value):: (
    local converted = value;
    assert std.isString(converted) : '"secondary_color_contrast_hex" expected to be of type "string"';
    {
      secondary_color_contrast_hex: converted,
    }
  ),
  "#withSecondaryColorHex":: "Secondary color hex code",
  withSecondaryColorHex(value):: (
    local converted = value;
    assert std.isString(converted) : '"secondary_color_hex" expected to be of type "string"';
    {
      secondary_color_hex: converted,
    }
  ),
  "#withSignInPageTouchPointVariant":: "Variant for the Okta Sign-In Page (`OKTA_DEFAULT`, `BACKGROUND_SECONDARY_COLOR`, `BACKGROUND_IMAGE`)",
  withSignInPageTouchPointVariant(value):: (
    local converted = value;
    assert std.isString(converted) : '"sign_in_page_touch_point_variant" expected to be of type "string"';
    {
      sign_in_page_touch_point_variant: converted,
    }
  ),
  "#withThemeId":: "Theme ID - Note: Okta API for theme only reads and updates therefore the okta_theme resource needs to act as a quasi data source. Do this by setting theme_id.",
  withThemeId(value):: (
    local converted = value;
    assert std.isString(converted) : '"theme_id" expected to be of type "string"';
    {
      theme_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
