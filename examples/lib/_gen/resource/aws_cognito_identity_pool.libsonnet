{
  local block = self,
  new(terraformName, identityPoolName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_identity_pool",
          type:: "resource",
          attributes:: ["allow_classic_flow", "allow_unauthenticated_identities", "arn", "developer_provider_name", "id", "identity_pool_name", "openid_connect_provider_arns", "region", "saml_provider_arns", "supported_login_providers", "tags", "tags_all"],
        },
      },
    }
    + block.withIdentityPoolName(identityPoolName)
  ),
  withAllowClassicFlow(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_classic_flow" expected to be of type "bool"';
    {
      allow_classic_flow: converted,
    }
  ),
  withAllowUnauthenticatedIdentities(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_unauthenticated_identities" expected to be of type "bool"';
    {
      allow_unauthenticated_identities: converted,
    }
  ),
  withDeveloperProviderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"developer_provider_name" expected to be of type "string"';
    {
      developer_provider_name: converted,
    }
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
  withOpenidConnectProviderArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"openid_connect_provider_arns" expected to be of type "set"';
    {
      openid_connect_provider_arns: converted,
    }
  ),
  withOpenidConnectProviderArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"openid_connect_provider_arns" expected to be of type "set"';
    {
      openid_connect_provider_arns+: converted,
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
  withSamlProviderArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"saml_provider_arns" expected to be of type "list"';
    {
      saml_provider_arns: converted,
    }
  ),
  withSamlProviderArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"saml_provider_arns" expected to be of type "list"';
    {
      saml_provider_arns+: converted,
    }
  ),
  withSupportedLoginProviders(value):: (
    local converted = value;
    assert std.isObject(converted) : '"supported_login_providers" expected to be of type "map"';
    {
      supported_login_providers: converted,
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
  cognito_identity_providers:: {
    local block = self,
    new():: (
      {}
    ),
    withClientId(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    withProviderName(value):: (
      local converted = value;
      assert std.isString(converted) : '"provider_name" expected to be of type "string"';
      {
        provider_name: converted,
      }
    ),
    withServerSideTokenCheck(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"server_side_token_check" expected to be of type "bool"';
      {
        server_side_token_check: converted,
      }
    ),
  },
  withCognitoIdentityProviders(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_identity_providers: value,
    }
  ),
  withCognitoIdentityProvidersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_identity_providers+: converted,
    }
  ),
}
