{
  local block = self,
  new(terraformName, domainIdOrName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_domain",
          type:: "data",
          attributes:: ["certificate_source_type", "dns_records", "domain", "domain_id_or_name", "id", "public_certificate", "validation_status"],
        },
      },
    }
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
