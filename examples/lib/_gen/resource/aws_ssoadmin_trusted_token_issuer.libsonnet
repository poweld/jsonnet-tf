{
  local block = self,
  new(terraformName, instanceArn, name, trustedTokenIssuerType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_trusted_token_issuer",
          type:: "resource",
          attributes:: ["arn", "client_token", "id", "instance_arn", "name", "region", "tags", "tags_all", "trusted_token_issuer_type"],
        },
      },
    }
    + block.withInstanceArn(instanceArn)
    + block.withName(name)
    + block.withTrustedTokenIssuerType(trustedTokenIssuerType)
  ),
  withClientToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_token" expected to be of type "string"';
    {
      client_token: converted,
    }
  ),
  withInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withTrustedTokenIssuerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"trusted_token_issuer_type" expected to be of type "string"';
    {
      trusted_token_issuer_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  trusted_token_issuer_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    oidc_jwt_configuration:: {
      local block = self,
      new(claimAttributePath, identityStoreAttributePath, issuerUrl, jwksRetrievalOption):: (
        {}
        + block.withClaimAttributePath(claimAttributePath)
        + block.withIdentityStoreAttributePath(identityStoreAttributePath)
        + block.withIssuerUrl(issuerUrl)
        + block.withJwksRetrievalOption(jwksRetrievalOption)
      ),
      withClaimAttributePath(value):: (
        local converted = value;
        assert std.isString(converted) : '"claim_attribute_path" expected to be of type "string"';
        {
          claim_attribute_path: converted,
        }
      ),
      withIdentityStoreAttributePath(value):: (
        local converted = value;
        assert std.isString(converted) : '"identity_store_attribute_path" expected to be of type "string"';
        {
          identity_store_attribute_path: converted,
        }
      ),
      withIssuerUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer_url" expected to be of type "string"';
        {
          issuer_url: converted,
        }
      ),
      withJwksRetrievalOption(value):: (
        local converted = value;
        assert std.isString(converted) : '"jwks_retrieval_option" expected to be of type "string"';
        {
          jwks_retrieval_option: converted,
        }
      ),
    },
    withOidcJwtConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oidc_jwt_configuration: value,
      }
    ),
    withOidcJwtConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oidc_jwt_configuration+: converted,
      }
    ),
  },
  withTrustedTokenIssuerConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trusted_token_issuer_configuration: value,
    }
  ),
  withTrustedTokenIssuerConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trusted_token_issuer_configuration+: converted,
    }
  ),
}
