{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_acm_certificate",
          type:: "resource",
          attributes:: ["arn", "certificate_authority_arn", "certificate_body", "certificate_chain", "domain_name", "domain_validation_options", "early_renewal_duration", "id", "key_algorithm", "not_after", "not_before", "pending_renewal", "private_key", "region", "renewal_eligibility", "renewal_summary", "status", "subject_alternative_names", "tags", "tags_all", "type", "validation_emails", "validation_method"],
        },
      },
    }
  ),
  withCertificateAuthorityArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
    {
      certificate_authority_arn: converted,
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
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withEarlyRenewalDuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"early_renewal_duration" expected to be of type "string"';
    {
      early_renewal_duration: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_algorithm" expected to be of type "string"';
    {
      key_algorithm: converted,
    }
  ),
  withPrivateKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
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
  withSubjectAlternativeNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_alternative_names" expected to be of type "set"';
    {
      subject_alternative_names: converted,
    }
  ),
  withSubjectAlternativeNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_alternative_names" expected to be of type "set"';
    {
      subject_alternative_names+: converted,
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
  withValidationMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_method" expected to be of type "string"';
    {
      validation_method: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  options:: {
    local block = self,
    new():: (
      {}
    ),
    withCertificateTransparencyLoggingPreference(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_transparency_logging_preference" expected to be of type "string"';
      {
        certificate_transparency_logging_preference: converted,
      }
    ),
    withExport(value):: (
      local converted = value;
      assert std.isString(converted) : '"export" expected to be of type "string"';
      {
        export: converted,
      }
    ),
  },
  validation_option:: {
    local block = self,
    new(domainName, validationDomain):: (
      {}
      + block.withDomainName(domainName)
      + block.withValidationDomain(validationDomain)
    ),
    withDomainName(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    withValidationDomain(value):: (
      local converted = value;
      assert std.isString(converted) : '"validation_domain" expected to be of type "string"';
      {
        validation_domain: converted,
      }
    ),
  },
  withOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options: value,
    }
  ),
  withValidationOption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_option: value,
    }
  ),
  withOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options+: converted,
    }
  ),
  withValidationOptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_option+: converted,
    }
  ),
}
