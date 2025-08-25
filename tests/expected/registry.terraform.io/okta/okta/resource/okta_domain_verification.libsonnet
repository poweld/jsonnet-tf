{
  local block = self,
  new(terraformName, domainId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_domain_verification",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["domain_id", "id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withDomainId(domainId)
  ),
  "#withDomainId":: "Domain's ID",
  withDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
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
      terraformName:: value,
    },
  },
}
