{
  local block = self,
  new(terraformName, emailIdentity):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_email_identity_mail_from_attributes",
          type:: "data",
          attributes:: ["behavior_on_mx_failure", "email_identity", "id", "mail_from_domain", "region"],
        },
      },
    }
    + block.withEmailIdentity(emailIdentity)
  ),
  withEmailIdentity(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_identity" expected to be of type "string"';
    {
      email_identity: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
