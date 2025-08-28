{
  local block = self,
  new(terraformName, brandId, customizationId, templateName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_customization",
          type:: "data",
          attributes:: ["body", "brand_id", "customization_id", "id", "is_default", "language", "links", "subject", "template_name"],
        },
      },
    }
    + block.withBrandId(brandId)
    + block.withCustomizationId(customizationId)
    + block.withTemplateName(templateName)
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
