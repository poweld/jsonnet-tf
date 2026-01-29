{
  local block = self,

  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_domain",
          type:: "resource",
          attributes:: ["brand_id", "certificate_source_type", "dns_records", "id", "name", "validation_status"],
        },
      },
    }
    + block.withName(name)
  ),

  "#withBrandId":: "Brand id of the domain",
  withBrandId(value):: (
    assert std.isString(value) : '"brand_id" expected to be of type "string"';

    {
      brand_id: value,
    }
  ),

  "#withCertificateSourceType":: "Certificate source type that indicates whether the certificate is provided by the user or Okta. Accepted values: `MANUAL`, `OKTA_MANAGED`. Warning: Use of OKTA_MANAGED requires a feature flag to be enabled. Default value = MANUAL",
  withCertificateSourceType(value):: (
    assert std.isString(value) : '"certificate_source_type" expected to be of type "string"';

    {
      certificate_source_type: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withName":: "Custom Domain name",
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
