{
  local block = self,
  new(terraformName, emailIdentity):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_email_identity",
          type:: "resource",
          attributes:: ["arn", "configuration_set_name", "email_identity", "id", "identity_type", "region", "tags", "tags_all", "verification_status", "verified_for_sending_status"],
        },
      },
    }
    + block.withEmailIdentity(emailIdentity)
  ),
  withConfigurationSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
    }
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  dkim_signing_attributes:: {
    local block = self,
    new():: (
      {}
    ),
    withDomainSigningPrivateKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_signing_private_key" expected to be of type "string"';
      {
        domain_signing_private_key: converted,
      }
    ),
    withDomainSigningSelector(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_signing_selector" expected to be of type "string"';
      {
        domain_signing_selector: converted,
      }
    ),
    withNextSigningKeyLength(value):: (
      local converted = value;
      assert std.isString(converted) : '"next_signing_key_length" expected to be of type "string"';
      {
        next_signing_key_length: converted,
      }
    ),
  },
  withDkimSigningAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dkim_signing_attributes: value,
    }
  ),
  withDkimSigningAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dkim_signing_attributes+: converted,
    }
  ),
}
