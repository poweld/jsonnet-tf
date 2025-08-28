{
  local block = self,
  new(terraformName, brandId, themeId):: (
    {
      jsonnetTfMetadata:: {
        object:: "okta_theme",
        type:: "data",
        attributes:: ["background_image_url", "brand_id", "email_template_touch_point_variant", "end_user_dashboard_touch_point_variant", "error_page_touch_point_variant", "favicon_url", "id", "links", "logo_url", "primary_color_contrast_hex", "primary_color_hex", "secondary_color_contrast_hex", "secondary_color_hex", "sign_in_page_touch_point_variant", "theme_id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withBrandId(brandId)
    + block.withThemeId(themeId)
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withThemeId":: "Theme ID",
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
