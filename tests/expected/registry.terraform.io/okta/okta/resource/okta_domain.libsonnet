{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_domain",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["brand_id", "certificate_source_type", "dns_records", "id", "name", "validation_status"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
  ),
  "#withBrandId":: "Brand id of the domain",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withCertificateSourceType":: "Certificate source type that indicates whether the certificate is provided by the user or Okta. Accepted values: `MANUAL`, `OKTA_MANAGED`. Warning: Use of OKTA_MANAGED requires a feature flag to be enabled. Default value = MANUAL",
  withCertificateSourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_source_type" expected to be of type "string"';
    {
      certificate_source_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Custom Domain name",
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
