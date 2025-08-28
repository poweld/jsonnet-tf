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
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
