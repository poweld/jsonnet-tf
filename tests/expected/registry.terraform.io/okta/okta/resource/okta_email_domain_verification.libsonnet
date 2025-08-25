{
  local block = self,
  new(name, email_domain_id):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_domain_verification",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["email_domain_id", "id"],
      },
    }
    + block.withEmailDomainId(email_domain_id)
  ),
  "#withEmailDomainId":: "Email domain ID",
  withEmailDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_domain_id" expected to be of type "string"';
    {
      email_domain_id: converted,
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
