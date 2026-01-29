{
  local block = self,

  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_brand",
          type:: "data",
          attributes:: ["brand_id", "custom_privacy_policy_url", "id", "links", "name", "remove_powered_by_okta"],
        },
      },
    }
    + block.withBrandId(brandId)
  ),

  "#withBrandId":: "Brand ID",
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
}
