{
  local block = self,
  new(terraformName, emailDomainId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_email_domain_verification",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["email_domain_id", "id"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withEmailDomainId(emailDomainId)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
