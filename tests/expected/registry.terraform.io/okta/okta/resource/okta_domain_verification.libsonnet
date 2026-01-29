{
  local block = self,

  new(terraformName, domainId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_domain_verification",
          type:: "resource",
          attributes:: ["domain_id", "id"],
        },
      },
    }
    + block.withDomainId(domainId)
  ),

  "#withDomainId":: "Domain's ID",
  withDomainId(value):: (
    assert std.isString(value) : '"domain_id" expected to be of type "string"';

    {
      domain_id: value,
    }
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
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
