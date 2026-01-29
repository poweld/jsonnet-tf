{
  local block = self,

  new(terraformName, brandId, displayName, domain, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_domain",
          type:: "resource",
          attributes:: ["brand_id", "display_name", "dns_validation_records", "domain", "id", "user_name", "validation_status"],
        },
      },
    }
    + block.withBrandId(brandId)
    + block.withDisplayName(displayName)
    + block.withDomain(domain)
    + block.withUserName(userName)
  ),

  "#withBrandId":: "Brand id of the email domain.",
  withBrandId(value):: (
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),

  "#withDisplayName":: "Display name of the email domain.",
  withDisplayName(value):: (
    assert std.isString(value) : '"display_name" expected to be of type "string"';

    {
      display_name: value,
    }
  ),

  "#withDomain":: "Mail domain to send from.",
  withDomain(value):: (
    assert std.isString(value) : '"domain" expected to be of type "string"';

    {
      domain: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withUserName":: "User name of the email domain.",
  withUserName(value):: (
    assert std.isString(value) : '"user_name" expected to be of type "string"';

    {
      user_name: value,
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
