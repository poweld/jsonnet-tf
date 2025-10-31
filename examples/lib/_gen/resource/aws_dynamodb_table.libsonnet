{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dynamodb_table",
          type:: "resource",
          attributes:: ["arn", "billing_mode", "deletion_protection_enabled", "hash_key", "id", "name", "range_key", "read_capacity", "region", "restore_date_time", "restore_source_name", "restore_source_table_arn", "restore_to_latest_time", "stream_arn", "stream_enabled", "stream_label", "stream_view_type", "table_class", "tags", "tags_all", "write_capacity"],
        },
      },
    }
    + block.withName(name)
  ),
  withBillingMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"billing_mode" expected to be of type "string"';
    {
      billing_mode: converted,
    }
  ),
  withDeletionProtectionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection_enabled" expected to be of type "bool"';
    {
      deletion_protection_enabled: converted,
    }
  ),
  withHashKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"hash_key" expected to be of type "string"';
    {
      hash_key: converted,
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
  withRangeKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"range_key" expected to be of type "string"';
    {
      range_key: converted,
    }
  ),
  withReadCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"read_capacity" expected to be of type "number"';
    {
      read_capacity: converted,
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
  withRestoreDateTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"restore_date_time" expected to be of type "string"';
    {
      restore_date_time: converted,
    }
  ),
  withRestoreSourceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"restore_source_name" expected to be of type "string"';
    {
      restore_source_name: converted,
    }
  ),
  withRestoreSourceTableArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"restore_source_table_arn" expected to be of type "string"';
    {
      restore_source_table_arn: converted,
    }
  ),
  withRestoreToLatestTime(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"restore_to_latest_time" expected to be of type "bool"';
    {
      restore_to_latest_time: converted,
    }
  ),
  withStreamEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"stream_enabled" expected to be of type "bool"';
    {
      stream_enabled: converted,
    }
  ),
  withStreamViewType(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_view_type" expected to be of type "string"';
    {
      stream_view_type: converted,
    }
  ),
  withTableClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_class" expected to be of type "string"';
    {
      table_class: converted,
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
  withWriteCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"write_capacity" expected to be of type "number"';
    {
      write_capacity: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  attribute:: {
    local block = self,
    new(name, type):: (
      {}
      + block.withName(name)
      + block.withType(type)
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
  global_secondary_index:: {
    local block = self,
    new(hashKey, name, projectionType):: (
      {}
      + block.withHashKey(hashKey)
      + block.withName(name)
      + block.withProjectionType(projectionType)
    ),
    withHashKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"hash_key" expected to be of type "string"';
      {
        hash_key: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withNonKeyAttributes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"non_key_attributes" expected to be of type "set"';
      {
        non_key_attributes: converted,
      }
    ),
    withNonKeyAttributesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"non_key_attributes" expected to be of type "set"';
      {
        non_key_attributes+: converted,
      }
    ),
    withProjectionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"projection_type" expected to be of type "string"';
      {
        projection_type: converted,
      }
    ),
    withRangeKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key" expected to be of type "string"';
      {
        range_key: converted,
      }
    ),
    withReadCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"read_capacity" expected to be of type "number"';
      {
        read_capacity: converted,
      }
    ),
    withWriteCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"write_capacity" expected to be of type "number"';
      {
        write_capacity: converted,
      }
    ),
    on_demand_throughput:: {
      local block = self,
      new():: (
        {}
      ),
      withMaxReadRequestUnits(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_read_request_units" expected to be of type "number"';
        {
          max_read_request_units: converted,
        }
      ),
      withMaxWriteRequestUnits(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_write_request_units" expected to be of type "number"';
        {
          max_write_request_units: converted,
        }
      ),
    },
    warm_throughput:: {
      local block = self,
      new():: (
        {}
      ),
      withReadUnitsPerSecond(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"read_units_per_second" expected to be of type "number"';
        {
          read_units_per_second: converted,
        }
      ),
      withWriteUnitsPerSecond(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"write_units_per_second" expected to be of type "number"';
        {
          write_units_per_second: converted,
        }
      ),
    },
    withOnDemandThroughput(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_demand_throughput: value,
      }
    ),
    withWarmThroughput(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        warm_throughput: value,
      }
    ),
    withOnDemandThroughputMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_demand_throughput+: converted,
      }
    ),
    withWarmThroughputMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        warm_throughput+: converted,
      }
    ),
  },
  import_table:: {
    local block = self,
    new(inputFormat):: (
      {}
      + block.withInputFormat(inputFormat)
    ),
    withInputCompressionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_compression_type" expected to be of type "string"';
      {
        input_compression_type: converted,
      }
    ),
    withInputFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_format" expected to be of type "string"';
      {
        input_format: converted,
      }
    ),
    input_format_options:: {
      local block = self,
      new():: (
        {}
      ),
      csv:: {
        local block = self,
        new():: (
          {}
        ),
        withDelimiter(value):: (
          local converted = value;
          assert std.isString(converted) : '"delimiter" expected to be of type "string"';
          {
            delimiter: converted,
          }
        ),
        withHeaderList(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"header_list" expected to be of type "set"';
          {
            header_list: converted,
          }
        ),
        withHeaderListMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"header_list" expected to be of type "set"';
          {
            header_list+: converted,
          }
        ),
      },
      withCsv(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          csv: value,
        }
      ),
      withCsvMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          csv+: converted,
        }
      ),
    },
    s3_bucket_source:: {
      local block = self,
      new(bucket):: (
        {}
        + block.withBucket(bucket)
      ),
      withBucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      withBucketOwner(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner" expected to be of type "string"';
        {
          bucket_owner: converted,
        }
      ),
      withKeyPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
        {
          key_prefix: converted,
        }
      ),
    },
    withInputFormatOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_format_options: value,
      }
    ),
    withS3BucketSource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_bucket_source: value,
      }
    ),
    withInputFormatOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        input_format_options+: converted,
      }
    ),
    withS3BucketSourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_bucket_source+: converted,
      }
    ),
  },
  local_secondary_index:: {
    local block = self,
    new(name, projectionType, rangeKey):: (
      {}
      + block.withName(name)
      + block.withProjectionType(projectionType)
      + block.withRangeKey(rangeKey)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withNonKeyAttributes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"non_key_attributes" expected to be of type "list"';
      {
        non_key_attributes: converted,
      }
    ),
    withNonKeyAttributesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"non_key_attributes" expected to be of type "list"';
      {
        non_key_attributes+: converted,
      }
    ),
    withProjectionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"projection_type" expected to be of type "string"';
      {
        projection_type: converted,
      }
    ),
    withRangeKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key" expected to be of type "string"';
      {
        range_key: converted,
      }
    ),
  },
  on_demand_throughput:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxReadRequestUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_read_request_units" expected to be of type "number"';
      {
        max_read_request_units: converted,
      }
    ),
    withMaxWriteRequestUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_write_request_units" expected to be of type "number"';
      {
        max_write_request_units: converted,
      }
    ),
  },
  point_in_time_recovery:: {
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
    withRecoveryPeriodInDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"recovery_period_in_days" expected to be of type "number"';
      {
        recovery_period_in_days: converted,
      }
    ),
  },
  replica:: {
    local block = self,
    new(regionName):: (
      {}
      + block.withRegionName(regionName)
    ),
    withConsistencyMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"consistency_mode" expected to be of type "string"';
      {
        consistency_mode: converted,
      }
    ),
    withDeletionProtectionEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"deletion_protection_enabled" expected to be of type "bool"';
      {
        deletion_protection_enabled: converted,
      }
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    withPointInTimeRecovery(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"point_in_time_recovery" expected to be of type "bool"';
      {
        point_in_time_recovery: converted,
      }
    ),
    withPropagateTags(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"propagate_tags" expected to be of type "bool"';
      {
        propagate_tags: converted,
      }
    ),
    withRegionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"region_name" expected to be of type "string"';
      {
        region_name: converted,
      }
    ),
  },
  server_side_encryption:: {
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
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
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
  ttl:: {
    local block = self,
    new():: (
      {}
    ),
    withAttributeName(value):: (
      local converted = value;
      assert std.isString(converted) : '"attribute_name" expected to be of type "string"';
      {
        attribute_name: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  warm_throughput:: {
    local block = self,
    new():: (
      {}
    ),
    withReadUnitsPerSecond(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"read_units_per_second" expected to be of type "number"';
      {
        read_units_per_second: converted,
      }
    ),
    withWriteUnitsPerSecond(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"write_units_per_second" expected to be of type "number"';
      {
        write_units_per_second: converted,
      }
    ),
  },
  withAttribute(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute: value,
    }
  ),
  withGlobalSecondaryIndex(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      global_secondary_index: value,
    }
  ),
  withImportTable(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      import_table: value,
    }
  ),
  withLocalSecondaryIndex(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      local_secondary_index: value,
    }
  ),
  withOnDemandThroughput(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_demand_throughput: value,
    }
  ),
  withPointInTimeRecovery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      point_in_time_recovery: value,
    }
  ),
  withReplica(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replica: value,
    }
  ),
  withServerSideEncryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTtl(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ttl: value,
    }
  ),
  withWarmThroughput(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      warm_throughput: value,
    }
  ),
  withAttributeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute+: converted,
    }
  ),
  withGlobalSecondaryIndexMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      global_secondary_index+: converted,
    }
  ),
  withImportTableMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      import_table+: converted,
    }
  ),
  withLocalSecondaryIndexMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      local_secondary_index+: converted,
    }
  ),
  withOnDemandThroughputMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_demand_throughput+: converted,
    }
  ),
  withPointInTimeRecoveryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      point_in_time_recovery+: converted,
    }
  ),
  withReplicaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replica+: converted,
    }
  ),
  withServerSideEncryptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption+: converted,
    }
  ),
  withTtlMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ttl+: converted,
    }
  ),
  withWarmThroughputMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      warm_throughput+: converted,
    }
  ),
}
