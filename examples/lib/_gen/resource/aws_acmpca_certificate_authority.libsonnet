{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_acmpca_certificate_authority",
          type:: "resource",
          attributes:: ["arn", "certificate", "certificate_chain", "certificate_signing_request", "enabled", "id", "key_storage_security_standard", "not_after", "not_before", "permanent_deletion_time_in_days", "region", "serial", "tags", "tags_all", "type", "usage_mode"],
        },
      },
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyStorageSecurityStandard(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_storage_security_standard" expected to be of type "string"';
    {
      key_storage_security_standard: converted,
    }
  ),
  withPermanentDeletionTimeInDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"permanent_deletion_time_in_days" expected to be of type "number"';
    {
      permanent_deletion_time_in_days: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withUsageMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_mode" expected to be of type "string"';
    {
      usage_mode: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  certificate_authority_configuration:: {
    local block = self,
    new(keyAlgorithm, signingAlgorithm):: (
      {}
      + block.withKeyAlgorithm(keyAlgorithm)
      + block.withSigningAlgorithm(signingAlgorithm)
    ),
    withKeyAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_algorithm" expected to be of type "string"';
      {
        key_algorithm: converted,
      }
    ),
    withSigningAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"signing_algorithm" expected to be of type "string"';
      {
        signing_algorithm: converted,
      }
    ),
    subject:: {
      local block = self,
      new():: (
        {}
      ),
      withCommonName(value):: (
        local converted = value;
        assert std.isString(converted) : '"common_name" expected to be of type "string"';
        {
          common_name: converted,
        }
      ),
      withCountry(value):: (
        local converted = value;
        assert std.isString(converted) : '"country" expected to be of type "string"';
        {
          country: converted,
        }
      ),
      withDistinguishedNameQualifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"distinguished_name_qualifier" expected to be of type "string"';
        {
          distinguished_name_qualifier: converted,
        }
      ),
      withGenerationQualifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"generation_qualifier" expected to be of type "string"';
        {
          generation_qualifier: converted,
        }
      ),
      withGivenName(value):: (
        local converted = value;
        assert std.isString(converted) : '"given_name" expected to be of type "string"';
        {
          given_name: converted,
        }
      ),
      withInitials(value):: (
        local converted = value;
        assert std.isString(converted) : '"initials" expected to be of type "string"';
        {
          initials: converted,
        }
      ),
      withLocality(value):: (
        local converted = value;
        assert std.isString(converted) : '"locality" expected to be of type "string"';
        {
          locality: converted,
        }
      ),
      withOrganization(value):: (
        local converted = value;
        assert std.isString(converted) : '"organization" expected to be of type "string"';
        {
          organization: converted,
        }
      ),
      withOrganizationalUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"organizational_unit" expected to be of type "string"';
        {
          organizational_unit: converted,
        }
      ),
      withPseudonym(value):: (
        local converted = value;
        assert std.isString(converted) : '"pseudonym" expected to be of type "string"';
        {
          pseudonym: converted,
        }
      ),
      withState(value):: (
        local converted = value;
        assert std.isString(converted) : '"state" expected to be of type "string"';
        {
          state: converted,
        }
      ),
      withSurname(value):: (
        local converted = value;
        assert std.isString(converted) : '"surname" expected to be of type "string"';
        {
          surname: converted,
        }
      ),
      withTitle(value):: (
        local converted = value;
        assert std.isString(converted) : '"title" expected to be of type "string"';
        {
          title: converted,
        }
      ),
    },
    withSubject(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        subject: value,
      }
    ),
    withSubjectMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        subject+: converted,
      }
    ),
  },
  revocation_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    crl_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withCustomCname(value):: (
        local converted = value;
        assert std.isString(converted) : '"custom_cname" expected to be of type "string"';
        {
          custom_cname: converted,
        }
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withExpirationInDays(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"expiration_in_days" expected to be of type "number"';
        {
          expiration_in_days: converted,
        }
      ),
      withS3BucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
        {
          s3_bucket_name: converted,
        }
      ),
      withS3ObjectAcl(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_object_acl" expected to be of type "string"';
        {
          s3_object_acl: converted,
        }
      ),
    },
    ocsp_configuration:: {
      local block = self,
      new(enabled):: (
        {}
        + block.withEnabled(enabled)
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withOcspCustomCname(value):: (
        local converted = value;
        assert std.isString(converted) : '"ocsp_custom_cname" expected to be of type "string"';
        {
          ocsp_custom_cname: converted,
        }
      ),
    },
    withCrlConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        crl_configuration: value,
      }
    ),
    withOcspConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ocsp_configuration: value,
      }
    ),
    withCrlConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        crl_configuration+: converted,
      }
    ),
    withOcspConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ocsp_configuration+: converted,
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
  },
  withCertificateAuthorityConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_authority_configuration: value,
    }
  ),
  withRevocationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      revocation_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCertificateAuthorityConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_authority_configuration+: converted,
    }
  ),
  withRevocationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      revocation_configuration+: converted,
    }
  ),
}
