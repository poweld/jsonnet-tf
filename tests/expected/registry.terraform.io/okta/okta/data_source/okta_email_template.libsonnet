{
  local block = self,

  new(terraformName, brandId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_template",
          type:: "data",
          attributes:: ["brand_id", "id", "links", "name"],
        },
      },
    }
    + block.withBrandId(brandId)
    + block.withName(name)
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

  "#withName":: "The name of the email template",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
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
