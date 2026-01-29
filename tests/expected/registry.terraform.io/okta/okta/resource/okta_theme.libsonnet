{
  local block = self,

  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_theme",
          type:: "resource",
          attributes:: ["background_image", "background_image_url", "brand_id", "email_template_touch_point_variant", "end_user_dashboard_touch_point_variant", "error_page_touch_point_variant", "favicon", "favicon_url", "id", "links", "logo", "logo_url", "primary_color_contrast_hex", "primary_color_hex", "secondary_color_contrast_hex", "secondary_color_hex", "sign_in_page_touch_point_variant", "theme_id"],
        },
      },
    }
    + block.withBrandId(brandId)
  ),

  "#withBackgroundImage":: "Path to local file",
  withBackgroundImage(value):: (
    assert std.isString(value) : '"background_image" expected to be of type "string"';

    {
      background_image: value,
    }
  ),

  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),

  "#withEmailTemplateTouchPointVariant":: "Variant for email templates (`OKTA_DEFAULT`, `FULL_THEME`)",
  withEmailTemplateTouchPointVariant(value):: (
    assert std.isString(value) : '"email_template_touch_point_variant" expected to be of type "string"';

    {
      email_template_touch_point_variant: value,
    }
  ),

  "#withEndUserDashboardTouchPointVariant":: "Variant for the Okta End-User Dashboard (`OKTA_DEFAULT`, `WHITE_LOGO_BACKGROUND`, `FULL_THEME`, `LOGO_ON_FULL_WHITE_BACKGROUND`)",
  withEndUserDashboardTouchPointVariant(value):: (
    assert std.isString(value) : '"end_user_dashboard_touch_point_variant" expected to be of type "string"';

    {
      end_user_dashboard_touch_point_variant: value,
    }
  ),

  "#withErrorPageTouchPointVariant":: "Variant for the error page (`OKTA_DEFAULT`, `BACKGROUND_SECONDARY_COLOR`, `BACKGROUND_IMAGE`)",
  withErrorPageTouchPointVariant(value):: (
    assert std.isString(value) : '"error_page_touch_point_variant" expected to be of type "string"';

    {
      error_page_touch_point_variant: value,
    }
  ),

  "#withFavicon":: "Path to local file",
  withFavicon(value):: (
    assert std.isString(value) : '"favicon" expected to be of type "string"';

    {
      favicon: value,
    }
  ),

  "#withLogo":: "Path to local file",
  withLogo(value):: (
    assert std.isString(value) : '"logo" expected to be of type "string"';

    {
      logo: value,
    }
  ),

  "#withPrimaryColorContrastHex":: "Primary color contrast hex code",
  withPrimaryColorContrastHex(value):: (
    assert std.isString(value) : '"primary_color_contrast_hex" expected to be of type "string"';

    {
      primary_color_contrast_hex: value,
    }
  ),

  "#withPrimaryColorHex":: "Primary color hex code",
  withPrimaryColorHex(value):: (
    assert std.isString(value) : '"primary_color_hex" expected to be of type "string"';

    {
      primary_color_hex: value,
    }
  ),

  "#withSecondaryColorContrastHex":: "Secondary color contrast hex code",
  withSecondaryColorContrastHex(value):: (
    assert std.isString(value) : '"secondary_color_contrast_hex" expected to be of type "string"';

    {
      secondary_color_contrast_hex: value,
    }
  ),

  "#withSecondaryColorHex":: "Secondary color hex code",
  withSecondaryColorHex(value):: (
    assert std.isString(value) : '"secondary_color_hex" expected to be of type "string"';

    {
      secondary_color_hex: value,
    }
  ),

  "#withSignInPageTouchPointVariant":: "Variant for the Okta Sign-In Page (`OKTA_DEFAULT`, `BACKGROUND_SECONDARY_COLOR`, `BACKGROUND_IMAGE`)",
  withSignInPageTouchPointVariant(value):: (
    assert std.isString(value) : '"sign_in_page_touch_point_variant" expected to be of type "string"';

    {
      sign_in_page_touch_point_variant: value,
    }
  ),

  "#withThemeId":: "Theme ID - Note: Okta API for theme only reads and updates therefore the okta_theme resource needs to act as a quasi data source. Do this by setting theme_id.",
  withThemeId(value):: (
    assert std.isString(value) : '"theme_id" expected to be of type "string"';

    {
      theme_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
