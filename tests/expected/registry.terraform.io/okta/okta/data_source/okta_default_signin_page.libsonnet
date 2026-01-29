{
  local block = self,

  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_default_signin_page",
          type:: "data",
          attributes:: ["brand_id", "id", "page_content", "widget_version"],
        },
      },
    }
    + block.withBrandId(brandId)
  ),

  "#withBrandId":: "brand id of the preview signin page",
  withBrandId(value):: (
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  contentSecurityPolicySetting:: {
    local block = self,

    new():: (
      {}
    ),
  },
  widgetCustomizations:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withContentSecurityPolicySetting(value):: (
    {
      content_security_policy_setting: value,
    }
  ),
  withWidgetCustomizations(value):: (
    {
      widget_customizations: value,
    }
  ),
}
