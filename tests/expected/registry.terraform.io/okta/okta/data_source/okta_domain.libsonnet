{
  local block = self,
  new(name, domain_id_or_name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_domain",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["certificate_source_type", "dns_records", "domain", "domain_id_or_name", "id", "public_certificate", "validation_status"],
      },
    }
    + block.withDomainIdOrName(domain_id_or_name)
  ),
  "#withDomainIdOrName":: "Brand ID",
  withDomainIdOrName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id_or_name" expected to be of type "string"';
    {
      domain_id_or_name: converted,
    }
  ),
}
