{
  local block = self,
  new(terraformName, brandId, templateName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_customizations",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["brand_id", "email_customizations", "id", "template_name"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withBrandId(brandId)
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
