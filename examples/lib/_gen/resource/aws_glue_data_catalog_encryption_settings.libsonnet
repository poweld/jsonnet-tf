{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_data_catalog_encryption_settings",
          type:: "resource",
          attributes:: ["catalog_id", "id", "region"],
        },
      },
    }
  ),
  withCatalogId(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  data_catalog_encryption_settings:: {
    local block = self,
    new():: (
      {}
    ),
    connection_password_encryption:: {
      local block = self,
      new(returnConnectionPasswordEncrypted):: (
        {}
        + block.withReturnConnectionPasswordEncrypted(returnConnectionPasswordEncrypted)
      ),
      withAwsKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"aws_kms_key_id" expected to be of type "string"';
        {
          aws_kms_key_id: converted,
        }
      ),
      withReturnConnectionPasswordEncrypted(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"return_connection_password_encrypted" expected to be of type "bool"';
        {
          return_connection_password_encrypted: converted,
        }
      ),
    },
    encryption_at_rest:: {
      local block = self,
      new(catalogEncryptionMode):: (
        {}
        + block.withCatalogEncryptionMode(catalogEncryptionMode)
      ),
      withCatalogEncryptionMode(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog_encryption_mode" expected to be of type "string"';
        {
          catalog_encryption_mode: converted,
        }
      ),
      withCatalogEncryptionServiceRole(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog_encryption_service_role" expected to be of type "string"';
        {
          catalog_encryption_service_role: converted,
        }
      ),
      withSseAwsKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"sse_aws_kms_key_id" expected to be of type "string"';
        {
          sse_aws_kms_key_id: converted,
        }
      ),
    },
    withConnectionPasswordEncryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_password_encryption: value,
      }
    ),
    withEncryptionAtRest(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_at_rest: value,
      }
    ),
    withConnectionPasswordEncryptionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_password_encryption+: converted,
      }
    ),
    withEncryptionAtRestMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        encryption_at_rest+: converted,
      }
    ),
  },
  withDataCatalogEncryptionSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_catalog_encryption_settings: value,
    }
  ),
  withDataCatalogEncryptionSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_catalog_encryption_settings+: converted,
    }
  ),
}
