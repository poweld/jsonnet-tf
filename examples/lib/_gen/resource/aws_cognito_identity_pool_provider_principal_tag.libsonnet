{
  local block = self,
  new(terraformName, identityPoolId, identityProviderName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_identity_pool_provider_principal_tag",
          type:: "resource",
          attributes:: ["id", "identity_pool_id", "identity_provider_name", "principal_tags", "region", "use_defaults"],
        },
      },
    }
    + block.withIdentityPoolId(identityPoolId)
    + block.withIdentityProviderName(identityProviderName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentityPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_pool_id" expected to be of type "string"';
    {
      identity_pool_id: converted,
    }
  ),
  withIdentityProviderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider_name" expected to be of type "string"';
    {
      identity_provider_name: converted,
    }
  ),
  withPrincipalTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"principal_tags" expected to be of type "map"';
    {
      principal_tags: converted,
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
  withUseDefaults(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_defaults" expected to be of type "bool"';
    {
      use_defaults: converted,
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
