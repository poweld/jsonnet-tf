{
  local block = self,
  new(terraformName, databaseName, tableName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_timestreamwrite_table",
          type:: "resource",
          attributes:: ["arn", "database_name", "id", "region", "table_name", "tags", "tags_all"],
        },
      },
    }
    + block.withDatabaseName(databaseName)
    + block.withTableName(tableName)
  ),
  withDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
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
  withTableName(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_name" expected to be of type "string"';
    {
      table_name: converted,
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
  magnetic_store_write_properties:: {
    local block = self,
    new():: (
      {}
    ),
    withEnableMagneticStoreWrites(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_magnetic_store_writes" expected to be of type "bool"';
      {
        enable_magnetic_store_writes: converted,
      }
    ),
    magnetic_store_rejected_data_location:: {
      local block = self,
      new():: (
        {}
      ),
      s3_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        withEncryptionOption(value):: (
          local converted = value;
          assert std.isString(converted) : '"encryption_option" expected to be of type "string"';
          {
            encryption_option: converted,
          }
        ),
        withKmsKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
          {
            kms_key_id: converted,
          }
        ),
        withObjectKeyPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"object_key_prefix" expected to be of type "string"';
          {
            object_key_prefix: converted,
          }
        ),
      },
      withS3Configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_configuration: value,
        }
      ),
      withS3ConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_configuration+: converted,
        }
      ),
    },
    withMagneticStoreRejectedDataLocation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        magnetic_store_rejected_data_location: value,
      }
    ),
    withMagneticStoreRejectedDataLocationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        magnetic_store_rejected_data_location+: converted,
      }
    ),
  },
  retention_properties:: {
    local block = self,
    new(magneticStoreRetentionPeriodInDays, memoryStoreRetentionPeriodInHours):: (
      {}
      + block.withMagneticStoreRetentionPeriodInDays(magneticStoreRetentionPeriodInDays)
      + block.withMemoryStoreRetentionPeriodInHours(memoryStoreRetentionPeriodInHours)
    ),
    withMagneticStoreRetentionPeriodInDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"magnetic_store_retention_period_in_days" expected to be of type "number"';
      {
        magnetic_store_retention_period_in_days: converted,
      }
    ),
    withMemoryStoreRetentionPeriodInHours(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory_store_retention_period_in_hours" expected to be of type "number"';
      {
        memory_store_retention_period_in_hours: converted,
      }
    ),
  },
  schema:: {
    local block = self,
    new():: (
      {}
    ),
    composite_partition_key:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withEnforcementInRecord(value):: (
        local converted = value;
        assert std.isString(converted) : '"enforcement_in_record" expected to be of type "string"';
        {
          enforcement_in_record: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withCompositePartitionKey(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        composite_partition_key: value,
      }
    ),
    withCompositePartitionKeyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        composite_partition_key+: converted,
      }
    ),
  },
  withMagneticStoreWriteProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      magnetic_store_write_properties: value,
    }
  ),
  withRetentionProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_properties: value,
    }
  ),
  withSchema(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema: value,
    }
  ),
  withMagneticStoreWritePropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      magnetic_store_write_properties+: converted,
    }
  ),
  withRetentionPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_properties+: converted,
    }
  ),
  withSchemaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema+: converted,
    }
  ),
}
