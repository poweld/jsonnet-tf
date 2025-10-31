{
  local block = self,
  new(terraformName, accessRole, url):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_connector",
          type:: "resource",
          attributes:: ["access_role", "arn", "connector_id", "id", "logging_role", "region", "security_policy_name", "tags", "tags_all", "url"],
        },
      },
    }
    + block.withAccessRole(accessRole)
    + block.withUrl(url)
  ),
  withAccessRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_role" expected to be of type "string"';
    {
      access_role: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLoggingRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"logging_role" expected to be of type "string"';
    {
      logging_role: converted,
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
  withSecurityPolicyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_policy_name" expected to be of type "string"';
    {
      security_policy_name: converted,
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
  withUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  as2_config:: {
    local block = self,
    new(compression, encryptionAlgorithm, localProfileId, mdnResponse, partnerProfileId, signingAlgorithm):: (
      {}
      + block.withCompression(compression)
      + block.withEncryptionAlgorithm(encryptionAlgorithm)
      + block.withLocalProfileId(localProfileId)
      + block.withMdnResponse(mdnResponse)
      + block.withPartnerProfileId(partnerProfileId)
      + block.withSigningAlgorithm(signingAlgorithm)
    ),
    withCompression(value):: (
      local converted = value;
      assert std.isString(converted) : '"compression" expected to be of type "string"';
      {
        compression: converted,
      }
    ),
    withEncryptionAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_algorithm" expected to be of type "string"';
      {
        encryption_algorithm: converted,
      }
    ),
    withLocalProfileId(value):: (
      local converted = value;
      assert std.isString(converted) : '"local_profile_id" expected to be of type "string"';
      {
        local_profile_id: converted,
      }
    ),
    withMdnResponse(value):: (
      local converted = value;
      assert std.isString(converted) : '"mdn_response" expected to be of type "string"';
      {
        mdn_response: converted,
      }
    ),
    withMdnSigningAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"mdn_signing_algorithm" expected to be of type "string"';
      {
        mdn_signing_algorithm: converted,
      }
    ),
    withMessageSubject(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_subject" expected to be of type "string"';
      {
        message_subject: converted,
      }
    ),
    withPartnerProfileId(value):: (
      local converted = value;
      assert std.isString(converted) : '"partner_profile_id" expected to be of type "string"';
      {
        partner_profile_id: converted,
      }
    ),
    withSigningAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"signing_algorithm" expected to be of type "string"';
      {
        signing_algorithm: converted,
      }
    ),
  },
  sftp_config:: {
    local block = self,
    new():: (
      {}
    ),
    withTrustedHostKeys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trusted_host_keys" expected to be of type "set"';
      {
        trusted_host_keys: converted,
      }
    ),
    withTrustedHostKeysMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trusted_host_keys" expected to be of type "set"';
      {
        trusted_host_keys+: converted,
      }
    ),
    withUserSecretId(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_secret_id" expected to be of type "string"';
      {
        user_secret_id: converted,
      }
    ),
  },
  withAs2Config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      as2_config: value,
    }
  ),
  withSftpConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sftp_config: value,
    }
  ),
  withAs2ConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      as2_config+: converted,
    }
  ),
  withSftpConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sftp_config+: converted,
    }
  ),
}
