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
    + block.withTerraformName(terraformName)
    + block.withBrandId(brandId)
    + block.withDisplayName(displayName)
    + block.withDomain(domain)
    + block.withUserName(userName)
  ),
  "#withBrandId":: "Brand id of the email domain.",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withDisplayName":: "Display name of the email domain.",
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  "#withDomain":: "Mail domain to send from.",
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withUserName":: "User name of the email domain.",
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
}
