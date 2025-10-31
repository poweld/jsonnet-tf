{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apigatewayv2_domain_name",
          type:: "resource",
          attributes:: ["api_mapping_selection_expression", "arn", "domain_name", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDomainName(domainName)
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
  domain_name_configuration:: {
    local block = self,
    new(certificateArn, endpointType, securityPolicy):: (
      {}
      + block.withCertificateArn(certificateArn)
      + block.withEndpointType(endpointType)
      + block.withSecurityPolicy(securityPolicy)
    ),
    withCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
      {
        certificate_arn: converted,
      }
    ),
    withEndpointType(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
      {
        endpoint_type: converted,
      }
    ),
    withIpAddressType(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    withOwnershipVerificationCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ownership_verification_certificate_arn" expected to be of type "string"';
      {
        ownership_verification_certificate_arn: converted,
      }
    ),
    withSecurityPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_policy" expected to be of type "string"';
      {
        security_policy: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withDomainNameConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_name_configuration: value,
    }
  ),
  withMutualTlsAuthentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_tls_authentication: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDomainNameConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      domain_name_configuration+: converted,
    }
  ),
  withMutualTlsAuthenticationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_tls_authentication+: converted,
    }
  ),
}
