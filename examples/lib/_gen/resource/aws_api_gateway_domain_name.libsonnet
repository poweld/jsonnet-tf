{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_domain_name",
          type:: "resource",
          attributes:: ["arn", "certificate_arn", "certificate_body", "certificate_chain", "certificate_name", "certificate_private_key", "certificate_upload_date", "cloudfront_domain_name", "cloudfront_zone_id", "domain_name", "domain_name_id", "id", "ownership_verification_certificate_arn", "policy", "region", "regional_certificate_arn", "regional_certificate_name", "regional_domain_name", "regional_zone_id", "security_policy", "tags", "tags_all"],
        },
      },
    }
    + block.withDomainName(domainName)
  ),
  withCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  withCertificateBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_body" expected to be of type "string"';
    {
      certificate_body: converted,
    }
  ),
  withCertificateChain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  withCertificateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_name" expected to be of type "string"';
    {
      certificate_name: converted,
    }
  ),
  withCertificatePrivateKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_private_key" expected to be of type "string"';
    {
      certificate_private_key: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOwnershipVerificationCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"ownership_verification_certificate_arn" expected to be of type "string"';
    {
      ownership_verification_certificate_arn: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  withRegionalCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"regional_certificate_arn" expected to be of type "string"';
    {
      regional_certificate_arn: converted,
    }
  ),
  withRegionalCertificateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"regional_certificate_name" expected to be of type "string"';
    {
      regional_certificate_name: converted,
    }
  ),
  withSecurityPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_policy" expected to be of type "string"';
    {
      security_policy: converted,
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
  endpoint_configuration:: {
    local block = self,
    new(types):: (
      {}
      + block.withTypes(types)
    ),
    withIpAddressType(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    withTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"types" expected to be of type "list"';
      {
        types: converted,
      }
    ),
    withTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"types" expected to be of type "list"';
      {
        types+: converted,
      }
    ),
  },
  mutual_tls_authentication:: {
    local block = self,
    new(truststoreUri):: (
      {}
      + block.withTruststoreUri(truststoreUri)
    ),
    withTruststoreUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"truststore_uri" expected to be of type "string"';
      {
        truststore_uri: converted,
      }
    ),
    withTruststoreVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"truststore_version" expected to be of type "string"';
      {
        truststore_version: converted,
      }
    ),
  },
  withEndpointConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration: value,
    }
  ),
  withMutualTlsAuthentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_tls_authentication: value,
    }
  ),
  withEndpointConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration+: converted,
    }
  ),
  withMutualTlsAuthenticationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_tls_authentication+: converted,
    }
  ),
}
