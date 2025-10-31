{
  local block = self,
  new(terraformName, policyReferenceName, trustProviderType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedaccess_trust_provider",
          type:: "resource",
          attributes:: ["description", "device_trust_provider_type", "id", "policy_reference_name", "region", "tags", "tags_all", "trust_provider_type", "user_trust_provider_type"],
        },
      },
    }
    + block.withPolicyReferenceName(policyReferenceName)
    + block.withTrustProviderType(trustProviderType)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDeviceTrustProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_trust_provider_type" expected to be of type "string"';
    {
      device_trust_provider_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicyReferenceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_reference_name" expected to be of type "string"';
    {
      policy_reference_name: converted,
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
  withTrustProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_provider_type" expected to be of type "string"';
    {
      trust_provider_type: converted,
    }
  ),
  withUserTrustProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_trust_provider_type" expected to be of type "string"';
    {
      user_trust_provider_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  device_options:: {
    local block = self,
    new():: (
      {}
    ),
    withTenantId(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenant_id" expected to be of type "string"';
      {
        tenant_id: converted,
      }
    ),
  },
  native_application_oidc_options:: {
    local block = self,
    new(clientSecret):: (
      {}
      + block.withClientSecret(clientSecret)
    ),
    withAuthorizationEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"authorization_endpoint" expected to be of type "string"';
      {
        authorization_endpoint: converted,
      }
    ),
    withClientId(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    withClientSecret(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_secret" expected to be of type "string"';
      {
        client_secret: converted,
      }
    ),
    withIssuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
    withPublicSigningKeyEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"public_signing_key_endpoint" expected to be of type "string"';
      {
        public_signing_key_endpoint: converted,
      }
    ),
    withScope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
    withTokenEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"token_endpoint" expected to be of type "string"';
      {
        token_endpoint: converted,
      }
    ),
    withUserInfoEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_info_endpoint" expected to be of type "string"';
      {
        user_info_endpoint: converted,
      }
    ),
  },
  oidc_options:: {
    local block = self,
    new(clientSecret):: (
      {}
      + block.withClientSecret(clientSecret)
    ),
    withAuthorizationEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"authorization_endpoint" expected to be of type "string"';
      {
        authorization_endpoint: converted,
      }
    ),
    withClientId(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    withClientSecret(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_secret" expected to be of type "string"';
      {
        client_secret: converted,
      }
    ),
    withIssuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
    withScope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
    withTokenEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"token_endpoint" expected to be of type "string"';
      {
        token_endpoint: converted,
      }
    ),
    withUserInfoEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_info_endpoint" expected to be of type "string"';
      {
        user_info_endpoint: converted,
      }
    ),
  },
  sse_specification:: {
    local block = self,
    new():: (
      {}
    ),
    withCustomerManagedKeyEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"customer_managed_key_enabled" expected to be of type "bool"';
      {
        customer_managed_key_enabled: converted,
      }
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withDeviceOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device_options: value,
    }
  ),
  withNativeApplicationOidcOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      native_application_oidc_options: value,
    }
  ),
  withOidcOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc_options: value,
    }
  ),
  withSseSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_specification: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDeviceOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device_options+: converted,
    }
  ),
  withNativeApplicationOidcOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      native_application_oidc_options+: converted,
    }
  ),
  withOidcOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc_options+: converted,
    }
  ),
  withSseSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_specification+: converted,
    }
  ),
}
