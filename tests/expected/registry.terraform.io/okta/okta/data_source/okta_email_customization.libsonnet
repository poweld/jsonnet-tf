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
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),

  "#withCustomizationId":: "The ID of the customization",
  withCustomizationId(value):: (
    assert std.isString(value) : '"customization_id" expected to be of type "string"';

    {
      customization_id: value,
    }
  ),

  "#withTemplateName":: "Template Name",
  withTemplateName(value):: (
    assert std.isString(value) : '"template_name" expected to be of type "string"';

    {
      template_name: value,
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
