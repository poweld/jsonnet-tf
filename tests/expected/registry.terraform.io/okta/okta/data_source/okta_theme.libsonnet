{
  local block = self,

  new(terraformName, brandId, themeId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_theme",
          type:: "data",
          attributes:: ["background_image_url", "brand_id", "email_template_touch_point_variant", "end_user_dashboard_touch_point_variant", "error_page_touch_point_variant", "favicon_url", "id", "links", "logo_url", "primary_color_contrast_hex", "primary_color_hex", "secondary_color_contrast_hex", "secondary_color_hex", "sign_in_page_touch_point_variant", "theme_id"],
        },
      },
    }
    + block.withBrandId(brandId)
    + block.withThemeId(themeId)
  ),

  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),

  "#withThemeId":: "Theme ID",
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
