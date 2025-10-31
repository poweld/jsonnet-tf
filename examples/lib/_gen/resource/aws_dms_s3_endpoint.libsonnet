{
  local block = self,
  new(terraformName, bucketName, endpointId, endpointType, serviceAccessRoleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_s3_endpoint",
          type:: "resource",
          attributes:: ["add_column_name", "add_trailing_padding_character", "bucket_folder", "bucket_name", "canned_acl_for_objects", "cdc_inserts_and_updates", "cdc_inserts_only", "cdc_max_batch_interval", "cdc_min_file_size", "cdc_path", "certificate_arn", "compression_type", "csv_delimiter", "csv_no_sup_value", "csv_null_value", "csv_row_delimiter", "data_format", "data_page_size", "date_partition_delimiter", "date_partition_enabled", "date_partition_sequence", "date_partition_timezone", "detach_target_on_lob_lookup_failure_parquet", "dict_page_size_limit", "enable_statistics", "encoding_type", "encryption_mode", "endpoint_arn", "endpoint_id", "endpoint_type", "engine_display_name", "expected_bucket_owner", "external_id", "external_table_definition", "glue_catalog_generation", "id", "ignore_header_rows", "include_op_for_full_load", "kms_key_arn", "max_file_size", "parquet_timestamp_in_millisecond", "parquet_version", "preserve_transactions", "region", "rfc_4180", "row_group_length", "server_side_encryption_kms_key_id", "service_access_role_arn", "ssl_mode", "status", "tags", "tags_all", "timestamp_column_name", "use_csv_no_sup_value", "use_task_start_time_for_full_load_timestamp"],
        },
      },
    }
    + block.withBucketName(bucketName)
    + block.withEndpointId(endpointId)
    + block.withEndpointType(endpointType)
    + block.withServiceAccessRoleArn(serviceAccessRoleArn)
  ),
  withAddColumnName(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"add_column_name" expected to be of type "bool"';
    {
      add_column_name: converted,
    }
  ),
  withAddTrailingPaddingCharacter(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"add_trailing_padding_character" expected to be of type "bool"';
    {
      add_trailing_padding_character: converted,
    }
  ),
  withBucketFolder(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_folder" expected to be of type "string"';
    {
      bucket_folder: converted,
    }
  ),
  withBucketName(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
    {
      bucket_name: converted,
    }
  ),
  withCannedAclForObjects(value):: (
    local converted = value;
    assert std.isString(converted) : '"canned_acl_for_objects" expected to be of type "string"';
    {
      canned_acl_for_objects: converted,
    }
  ),
  withCdcInsertsAndUpdates(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cdc_inserts_and_updates" expected to be of type "bool"';
    {
      cdc_inserts_and_updates: converted,
    }
  ),
  withCdcInsertsOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cdc_inserts_only" expected to be of type "bool"';
    {
      cdc_inserts_only: converted,
    }
  ),
  withCdcMaxBatchInterval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cdc_max_batch_interval" expected to be of type "number"';
    {
      cdc_max_batch_interval: converted,
    }
  ),
  withCdcMinFileSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cdc_min_file_size" expected to be of type "number"';
    {
      cdc_min_file_size: converted,
    }
  ),
  withCdcPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"cdc_path" expected to be of type "string"';
    {
      cdc_path: converted,
    }
  ),
  withCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  withCompressionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"compression_type" expected to be of type "string"';
    {
      compression_type: converted,
    }
  ),
  withCsvDelimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"csv_delimiter" expected to be of type "string"';
    {
      csv_delimiter: converted,
    }
  ),
  withCsvNoSupValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"csv_no_sup_value" expected to be of type "string"';
    {
      csv_no_sup_value: converted,
    }
  ),
  withCsvNullValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"csv_null_value" expected to be of type "string"';
    {
      csv_null_value: converted,
    }
  ),
  withCsvRowDelimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"csv_row_delimiter" expected to be of type "string"';
    {
      csv_row_delimiter: converted,
    }
  ),
  withDataFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_format" expected to be of type "string"';
    {
      data_format: converted,
    }
  ),
  withDataPageSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"data_page_size" expected to be of type "number"';
    {
      data_page_size: converted,
    }
  ),
  withDatePartitionDelimiter(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_partition_delimiter" expected to be of type "string"';
    {
      date_partition_delimiter: converted,
    }
  ),
  withDatePartitionEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"date_partition_enabled" expected to be of type "bool"';
    {
      date_partition_enabled: converted,
    }
  ),
  withDatePartitionSequence(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_partition_sequence" expected to be of type "string"';
    {
      date_partition_sequence: converted,
    }
  ),
  withDatePartitionTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"date_partition_timezone" expected to be of type "string"';
    {
      date_partition_timezone: converted,
    }
  ),
  withDetachTargetOnLobLookupFailureParquet(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"detach_target_on_lob_lookup_failure_parquet" expected to be of type "bool"';
    {
      detach_target_on_lob_lookup_failure_parquet: converted,
    }
  ),
  withDictPageSizeLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"dict_page_size_limit" expected to be of type "number"';
    {
      dict_page_size_limit: converted,
    }
  ),
  withEnableStatistics(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_statistics" expected to be of type "bool"';
    {
      enable_statistics: converted,
    }
  ),
  withEncodingType(value):: (
    local converted = value;
    assert std.isString(converted) : '"encoding_type" expected to be of type "string"';
    {
      encoding_type: converted,
    }
  ),
  withEncryptionMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_mode" expected to be of type "string"';
    {
      encryption_mode: converted,
    }
  ),
  withEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
    {
      endpoint_id: converted,
    }
  ),
  withEndpointType(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  withExpectedBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
    }
  ),
  withExternalTableDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_table_definition" expected to be of type "string"';
    {
      external_table_definition: converted,
    }
  ),
  withGlueCatalogGeneration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"glue_catalog_generation" expected to be of type "bool"';
    {
      glue_catalog_generation: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIgnoreHeaderRows(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ignore_header_rows" expected to be of type "number"';
    {
      ignore_header_rows: converted,
    }
  ),
  withIncludeOpForFullLoad(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_op_for_full_load" expected to be of type "bool"';
    {
      include_op_for_full_load: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withMaxFileSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_file_size" expected to be of type "number"';
    {
      max_file_size: converted,
    }
  ),
  withParquetTimestampInMillisecond(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"parquet_timestamp_in_millisecond" expected to be of type "bool"';
    {
      parquet_timestamp_in_millisecond: converted,
    }
  ),
  withParquetVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"parquet_version" expected to be of type "string"';
    {
      parquet_version: converted,
    }
  ),
  withPreserveTransactions(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"preserve_transactions" expected to be of type "bool"';
    {
      preserve_transactions: converted,
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
  withRfc_4180(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"rfc_4180" expected to be of type "bool"';
    {
      rfc_4180: converted,
    }
  ),
  withRowGroupLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"row_group_length" expected to be of type "number"';
    {
      row_group_length: converted,
    }
  ),
  withServerSideEncryptionKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_side_encryption_kms_key_id" expected to be of type "string"';
    {
      server_side_encryption_kms_key_id: converted,
    }
  ),
  withServiceAccessRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
    {
      service_access_role_arn: converted,
    }
  ),
  withSslMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssl_mode" expected to be of type "string"';
    {
      ssl_mode: converted,
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
  withTimestampColumnName(value):: (
    local converted = value;
    assert std.isString(converted) : '"timestamp_column_name" expected to be of type "string"';
    {
      timestamp_column_name: converted,
    }
  ),
  withUseCsvNoSupValue(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_csv_no_sup_value" expected to be of type "bool"';
    {
      use_csv_no_sup_value: converted,
    }
  ),
  withUseTaskStartTimeForFullLoadTimestamp(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_task_start_time_for_full_load_timestamp" expected to be of type "bool"';
    {
      use_task_start_time_for_full_load_timestamp: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
