{
  local block = self,
  new(terraformName, domainIdOrName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_domain",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["certificate_source_type", "dns_records", "domain", "domain_id_or_name", "id", "public_certificate", "validation_status"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withDomainIdOrName(domainIdOrName)
  ),
  "#withDomainIdOrName":: "Brand ID",
  withDomainIdOrName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id_or_name" expected to be of type "string"';
    {
      domain_id_or_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
