{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_domain_configuration",
          type:: "resource",
          attributes:: ["application_protocol", "arn", "authentication_type", "domain_name", "domain_type", "id", "name", "region", "server_certificate_arns", "service_type", "status", "tags", "tags_all", "validation_certificate_arn"],
        },
      },
    }
    + block.withName(name)
  ),
  withApplicationProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_protocol" expected to be of type "string"';
    {
      application_protocol: converted,
    }
  ),
  withAuthenticationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
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
  withServerCertificateArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"server_certificate_arns" expected to be of type "set"';
    {
      server_certificate_arns: converted,
    }
  ),
  withServerCertificateArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"server_certificate_arns" expected to be of type "set"';
    {
      server_certificate_arns+: converted,
    }
  ),
  withServiceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_type" expected to be of type "string"';
    {
      service_type: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  withValidationCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_certificate_arn" expected to be of type "string"';
    {
      validation_certificate_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  authorizer_config:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowAuthorizerOverride(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_authorizer_override" expected to be of type "bool"';
      {
        allow_authorizer_override: converted,
      }
    ),
    withDefaultAuthorizerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_authorizer_name" expected to be of type "string"';
      {
        default_authorizer_name: converted,
      }
    ),
  },
  tls_config:: {
    local block = self,
    new():: (
      {}
    ),
    withSecurityPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_policy" expected to be of type "string"';
      {
        security_policy: converted,
      }
    ),
  },
  withAuthorizerConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authorizer_config: value,
    }
  ),
  withTlsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config: value,
    }
  ),
  withAuthorizerConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authorizer_config+: converted,
    }
  ),
  withTlsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config+: converted,
    }
  ),
}
