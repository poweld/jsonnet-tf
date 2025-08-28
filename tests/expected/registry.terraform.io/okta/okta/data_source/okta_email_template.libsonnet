{
  local block = self,
  new(terraformName, brandId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          object:: "okta_email_template",
          type:: "data",
          attributes:: ["brand_id", "id", "links", "name"],
        },
      },
    }
    + block.withTerraformName(terraformName)
    + block.withBrandId(brandId)
    + block.withName(name)
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
  "#withName":: "The name of the email template",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
