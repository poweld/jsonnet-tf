{
  local block = self,
  new(terraformName, domain, mailFromDomain):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ses_domain_mail_from",
          type:: "resource",
          attributes:: ["behavior_on_mx_failure", "domain", "id", "mail_from_domain", "region"],
        },
      },
    }
    + block.withDomain(domain)
    + block.withMailFromDomain(mailFromDomain)
  ),
  withBehaviorOnMxFailure(value):: (
    local converted = value;
    assert std.isString(converted) : '"behavior_on_mx_failure" expected to be of type "string"';
    {
      behavior_on_mx_failure: converted,
    }
  ),
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMailFromDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"mail_from_domain" expected to be of type "string"';
    {
      mail_from_domain: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
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
