{
  local block = self,
  new(name, brand_id, customization_id, template_name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_customization",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["body", "brand_id", "customization_id", "id", "is_default", "language", "links", "subject", "template_name"],
      },
    }
    + block.withBrandId(brand_id)
    + block.withCustomizationId(customization_id)
    + block.withTemplateName(template_name)
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withCustomizationId":: "The ID of the customization",
  withCustomizationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"customization_id" expected to be of type "string"';
    {
      customization_id: converted,
    }
  ),
  "#withTemplateName":: "Template Name",
  withTemplateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
}
