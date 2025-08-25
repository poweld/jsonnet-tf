{
  local block = self,
  new(name, brand_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_brand",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["name", "brand_id", "custom_privacy_policy_url", "id", "links", "remove_powered_by_okta"],
      },
    }
    + block.withName(name)
    + block.withBrandId(brand_id)
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withName":: "Brand name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
