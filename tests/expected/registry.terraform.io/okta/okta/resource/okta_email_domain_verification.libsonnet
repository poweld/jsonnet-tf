{
  local block = self,

  new(terraformName, emailDomainId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_email_domain_verification",
          type:: "resource",
          attributes:: ["email_domain_id", "id"],
        },
      },
    }
    + block.withEmailDomainId(emailDomainId)
  ),

  "#withEmailDomainId":: "Email domain ID",
  withEmailDomainId(value):: (
    assert std.isString(value) : '"email_domain_id" expected to be of type "string"';

    {
      email_domain_id: value,
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
