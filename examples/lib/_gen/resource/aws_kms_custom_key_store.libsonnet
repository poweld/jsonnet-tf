{
  local block = self,
  new(terraformName, customKeyStoreName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_custom_key_store",
          type:: "resource",
          attributes:: ["cloud_hsm_cluster_id", "custom_key_store_name", "custom_key_store_type", "id", "key_store_password", "region", "trust_anchor_certificate", "xks_proxy_connectivity", "xks_proxy_uri_endpoint", "xks_proxy_uri_path", "xks_proxy_vpc_endpoint_service_name"],
        },
      },
    }
    + block.withCustomKeyStoreName(customKeyStoreName)
  ),
  withCloudHsmClusterId(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloud_hsm_cluster_id" expected to be of type "string"';
    {
      cloud_hsm_cluster_id: converted,
    }
  ),
  withCustomKeyStoreName(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_name" expected to be of type "string"';
    {
      custom_key_store_name: converted,
    }
  ),
  withCustomKeyStoreType(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_type" expected to be of type "string"';
    {
      custom_key_store_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyStorePassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_store_password" expected to be of type "string"';
    {
      key_store_password: converted,
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
  withTrustAnchorCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_anchor_certificate" expected to be of type "string"';
    {
      trust_anchor_certificate: converted,
    }
  ),
  withXksProxyConnectivity(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_proxy_connectivity" expected to be of type "string"';
    {
      xks_proxy_connectivity: converted,
    }
  ),
  withXksProxyUriEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_proxy_uri_endpoint" expected to be of type "string"';
    {
      xks_proxy_uri_endpoint: converted,
    }
  ),
  withXksProxyUriPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_proxy_uri_path" expected to be of type "string"';
    {
      xks_proxy_uri_path: converted,
    }
  ),
  withXksProxyVpcEndpointServiceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_proxy_vpc_endpoint_service_name" expected to be of type "string"';
    {
      xks_proxy_vpc_endpoint_service_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  xks_proxy_authentication_credential:: {
    local block = self,
    new(accessKeyId, rawSecretAccessKey):: (
      {}
      + block.withAccessKeyId(accessKeyId)
      + block.withRawSecretAccessKey(rawSecretAccessKey)
    ),
    withAccessKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"access_key_id" expected to be of type "string"';
      {
        access_key_id: converted,
      }
    ),
    withRawSecretAccessKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"raw_secret_access_key" expected to be of type "string"';
      {
        raw_secret_access_key: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withXksProxyAuthenticationCredential(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xks_proxy_authentication_credential: value,
    }
  ),
  withXksProxyAuthenticationCredentialMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xks_proxy_authentication_credential+: converted,
    }
  ),
}
