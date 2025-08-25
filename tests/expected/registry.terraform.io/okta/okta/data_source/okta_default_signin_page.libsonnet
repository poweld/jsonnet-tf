{
  local block = self,
  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_default_signin_page",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["brand_id", "id", "page_content", "widget_version"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withBrandId(brandId)
  ),
  "#withBrandId":: "brand id of the preview signin page",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
  content_security_policy_setting:: {
    local block = self,
    new():: (
      {}
    ),
  },
  widget_customizations:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withContentSecurityPolicySetting(value):: (
    local converted = value;
    {
      content_security_policy_setting: value,
    }
  ),
  withWidgetCustomizations(value):: (
    local converted = value;
    {
      widget_customizations: value,
    }
  ),
}
