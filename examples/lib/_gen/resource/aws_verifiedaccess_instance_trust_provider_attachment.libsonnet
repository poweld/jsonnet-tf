{
  local block = self,
  new(terraformName, verifiedaccessInstanceId, verifiedaccessTrustProviderId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedaccess_instance_trust_provider_attachment",
          type:: "resource",
          attributes:: ["id", "region", "verifiedaccess_instance_id", "verifiedaccess_trust_provider_id"],
        },
      },
    }
    + block.withVerifiedaccessInstanceId(verifiedaccessInstanceId)
    + block.withVerifiedaccessTrustProviderId(verifiedaccessTrustProviderId)
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
  withVerifiedaccessInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_instance_id" expected to be of type "string"';
    {
      verifiedaccess_instance_id: converted,
    }
  ),
  withVerifiedaccessTrustProviderId(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_trust_provider_id" expected to be of type "string"';
    {
      verifiedaccess_trust_provider_id: converted,
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
