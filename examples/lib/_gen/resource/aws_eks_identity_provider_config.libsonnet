{
  local block = self,
  new(terraformName, clusterName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_eks_identity_provider_config",
          type:: "resource",
          attributes:: ["arn", "cluster_name", "id", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withClusterName(clusterName)
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
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
  oidc:: {
    local block = self,
    new(clientId, identityProviderConfigName, issuerUrl):: (
      {}
      + block.withClientId(clientId)
      + block.withIdentityProviderConfigName(identityProviderConfigName)
      + block.withIssuerUrl(issuerUrl)
    ),
    withClientId(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    withGroupsClaim(value):: (
      local converted = value;
      assert std.isString(converted) : '"groups_claim" expected to be of type "string"';
      {
        groups_claim: converted,
      }
    ),
    withGroupsPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"groups_prefix" expected to be of type "string"';
      {
        groups_prefix: converted,
      }
    ),
    withIdentityProviderConfigName(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_provider_config_name" expected to be of type "string"';
      {
        identity_provider_config_name: converted,
      }
    ),
    withIssuerUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer_url" expected to be of type "string"';
      {
        issuer_url: converted,
      }
    ),
    withRequiredClaims(value):: (
      local converted = value;
      assert std.isObject(converted) : '"required_claims" expected to be of type "map"';
      {
        required_claims: converted,
      }
    ),
    withUsernameClaim(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_claim" expected to be of type "string"';
      {
        username_claim: converted,
      }
    ),
    withUsernamePrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"username_prefix" expected to be of type "string"';
      {
        username_prefix: converted,
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
  },
  withOidc(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withOidcMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc+: converted,
    }
  ),
}
