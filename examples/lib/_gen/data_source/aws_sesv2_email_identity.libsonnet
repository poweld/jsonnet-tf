{
  local block = self,
  new(terraformName, emailIdentity):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_email_identity",
          type:: "data",
          attributes:: ["arn", "configuration_set_name", "dkim_signing_attributes", "email_identity", "id", "identity_type", "region", "tags", "verification_status", "verified_for_sending_status"],
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
