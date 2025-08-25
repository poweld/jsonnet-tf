{
  local block = self,
  new(name, brand_id, theme_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_theme",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["background_image_url", "brand_id", "email_template_touch_point_variant", "end_user_dashboard_touch_point_variant", "error_page_touch_point_variant", "favicon_url", "id", "links", "logo_url", "primary_color_contrast_hex", "primary_color_hex", "secondary_color_contrast_hex", "secondary_color_hex", "sign_in_page_touch_point_variant", "theme_id"],
      },
    }
    + block.withBrandId(brand_id)
    + block.withThemeId(theme_id)
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
}
