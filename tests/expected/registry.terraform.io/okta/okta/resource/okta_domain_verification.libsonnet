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
}
