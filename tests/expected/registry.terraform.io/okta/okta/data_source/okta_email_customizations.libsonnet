{
  local block = self,

  new(terraformName, brandId, templateName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_customizations",
          type:: "data",
          attributes:: ["brand_id", "email_customizations", "id", "template_name"],
        },
      },
    }
    + block.withBrandId(brandId)
    + block.withTemplateName(templateName)
  ),

  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
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
