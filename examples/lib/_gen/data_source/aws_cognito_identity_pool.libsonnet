{
  local block = self,
  new(terraformName, identityPoolName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_identity_pool",
          type:: "data",
          attributes:: ["allow_classic_flow", "allow_unauthenticated_identities", "arn", "cognito_identity_providers", "developer_provider_name", "id", "identity_pool_name", "openid_connect_provider_arns", "region", "saml_provider_arns", "supported_login_providers", "tags"],
        },
      },
    }
    + block.withIdentityPoolName(identityPoolName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentityPoolName(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_pool_name" expected to be of type "string"';
    {
      identity_pool_name: converted,
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
