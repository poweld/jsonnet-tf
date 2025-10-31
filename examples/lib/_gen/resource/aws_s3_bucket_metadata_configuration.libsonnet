{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_metadata_configuration",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "region"],
        },
      },
    }
    + block.withBucket(bucket)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withExpectedBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
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
  metadata_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    inventory_table_configuration:: {
      local block = self,
      new(configurationState):: (
        {}
        + block.withConfigurationState(configurationState)
      ),
      withConfigurationState(value):: (
        local converted = value;
        assert std.isString(converted) : '"configuration_state" expected to be of type "string"';
        {
          configuration_state: converted,
        }
      ),
      encryption_configuration:: {
        local block = self,
        new(sseAlgorithm):: (
          {}
          + block.withSseAlgorithm(sseAlgorithm)
        ),
        withKmsKeyArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
          {
            kms_key_arn: converted,
          }
        ),
        withSseAlgorithm(value):: (
          local converted = value;
          assert std.isString(converted) : '"sse_algorithm" expected to be of type "string"';
          {
            sse_algorithm: converted,
          }
        ),
      },
      withEncryptionConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration: value,
        }
      ),
      withEncryptionConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration+: converted,
        }
      ),
    },
    journal_table_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      encryption_configuration:: {
        local block = self,
        new(sseAlgorithm):: (
          {}
          + block.withSseAlgorithm(sseAlgorithm)
        ),
        withKmsKeyArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
          {
            kms_key_arn: converted,
          }
        ),
        withSseAlgorithm(value):: (
          local converted = value;
          assert std.isString(converted) : '"sse_algorithm" expected to be of type "string"';
          {
            sse_algorithm: converted,
          }
        ),
      },
      record_expiration:: {
        local block = self,
        new(expiration):: (
          {}
          + block.withExpiration(expiration)
        ),
        withDays(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"days" expected to be of type "number"';
          {
            days: converted,
          }
        ),
        withExpiration(value):: (
          local converted = value;
          assert std.isString(converted) : '"expiration" expected to be of type "string"';
          {
            expiration: converted,
          }
        ),
      },
      withEncryptionConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration: value,
        }
      ),
      withRecordExpiration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_expiration: value,
        }
      ),
      withEncryptionConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          encryption_configuration+: converted,
        }
      ),
      withRecordExpirationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_expiration+: converted,
        }
      ),
    },
    withInventoryTableConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inventory_table_configuration: value,
      }
    ),
    withJournalTableConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        journal_table_configuration: value,
      }
    ),
    withInventoryTableConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inventory_table_configuration+: converted,
      }
    ),
    withJournalTableConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        journal_table_configuration+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withMetadataConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withMetadataConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_configuration+: converted,
    }
  ),
}
