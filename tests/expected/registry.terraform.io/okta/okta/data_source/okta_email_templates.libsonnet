{
  local block = self,
  new(name, brand_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_templates",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["brand_id", "email_templates", "id"],
      },
    }
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
