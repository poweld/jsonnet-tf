{
  local block = self,
  new(terraformName, brandId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_templates",
          type:: "data",
          attributes:: ["brand_id", "email_templates", "id"],
        },
      },
    }
    + block.withBrandId(brandId)
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
