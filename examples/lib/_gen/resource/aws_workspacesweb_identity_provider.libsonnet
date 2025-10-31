{
  local block = self,
  new(terraformName, identityProviderDetails, identityProviderName, identityProviderType, portalArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_identity_provider",
          type:: "resource",
          attributes:: ["identity_provider_arn", "identity_provider_details", "identity_provider_name", "identity_provider_type", "portal_arn", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withIdentityProviderDetails(identityProviderDetails)
    + block.withIdentityProviderName(identityProviderName)
    + block.withIdentityProviderType(identityProviderType)
    + block.withPortalArn(portalArn)
  ),
  withIdentityProviderDetails(value):: (
    local converted = value;
    assert std.isObject(converted) : '"identity_provider_details" expected to be of type "map"';
    {
      identity_provider_details: converted,
    }
  ),
  withIdentityProviderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider_name" expected to be of type "string"';
    {
      identity_provider_name: converted,
    }
  ),
  withIdentityProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider_type" expected to be of type "string"';
    {
      identity_provider_type: converted,
    }
  ),
  withPortalArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"portal_arn" expected to be of type "string"';
    {
      portal_arn: converted,
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
