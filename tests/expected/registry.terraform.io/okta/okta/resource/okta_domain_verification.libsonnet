{
  local block = self,
  new(name, domain_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_domain_verification",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["domain_id", "id"],
      },
    }
    + block.withDomainId(domain_id)
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
