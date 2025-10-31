{
  local block = self,
  new(terraformName, destination, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kinesis_firehose_delivery_stream",
          type:: "resource",
          attributes:: ["arn", "destination", "destination_id", "id", "name", "region", "tags", "tags_all", "version_id"],
        },
      },
    }
    + block.withDestination(destination)
    + block.withName(name)
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  withDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  withDestinationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_id" expected to be of type "string"';
    {
      destination_id: converted,
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
  withVersionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  elasticsearch_configuration:: {
    local block = self,
    new(indexName, roleArn):: (
      {}
      + block.withIndexName(indexName)
      + block.withRoleArn(roleArn)
    ),
    withBufferingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    withBufferingSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    withClusterEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_endpoint" expected to be of type "string"';
      {
        cluster_endpoint: converted,
      }
    ),
    withDomainArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_arn" expected to be of type "string"';
      {
        domain_arn: converted,
      }
    ),
    withIndexName(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    withIndexRotationPeriod(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_rotation_period" expected to be of type "string"';
      {
        index_rotation_period: converted,
      }
    ),
    withRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    withTypeName(value):: (
      local converted = value;
      assert std.isString(converted) : '"type_name" expected to be of type "string"';
      {
        type_name: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    vpc_config:: {
      local block = self,
      new(roleArn, securityGroupIds, subnetIds):: (
        {}
        + block.withRoleArn(roleArn)
        + block.withSecurityGroupIds(securityGroupIds)
        + block.withSubnetIds(subnetIds)
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSecurityGroupIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids: converted,
        }
      ),
      withSecurityGroupIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids+: converted,
        }
      ),
      withSubnetIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids: converted,
        }
      ),
      withSubnetIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids+: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withVpcConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withVpcConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  extended_s3_configuration:: {
    local block = self,
    new(bucketArn, roleArn):: (
      {}
      + block.withBucketArn(bucketArn)
      + block.withRoleArn(roleArn)
    ),
    withBucketArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
      {
        bucket_arn: converted,
      }
    ),
    withBufferingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    withBufferingSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    withCompressionFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"compression_format" expected to be of type "string"';
      {
        compression_format: converted,
      }
    ),
    withCustomTimeZone(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_time_zone" expected to be of type "string"';
      {
        custom_time_zone: converted,
      }
    ),
    withErrorOutputPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
      {
        error_output_prefix: converted,
      }
    ),
    withFileExtension(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_extension" expected to be of type "string"';
      {
        file_extension: converted,
      }
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    data_format_conversion_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      input_format_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        deserializer:: {
          local block = self,
          new():: (
            {}
          ),
          hive_json_ser_de:: {
            local block = self,
            new():: (
              {}
            ),
            withTimestampFormats(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"timestamp_formats" expected to be of type "list"';
              {
                timestamp_formats: converted,
              }
            ),
            withTimestampFormatsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"timestamp_formats" expected to be of type "list"';
              {
                timestamp_formats+: converted,
              }
            ),
          },
          open_x_json_ser_de:: {
            local block = self,
            new():: (
              {}
            ),
            withCaseInsensitive(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"case_insensitive" expected to be of type "bool"';
              {
                case_insensitive: converted,
              }
            ),
            withColumnToJsonKeyMappings(value):: (
              local converted = value;
              assert std.isObject(converted) : '"column_to_json_key_mappings" expected to be of type "map"';
              {
                column_to_json_key_mappings: converted,
              }
            ),
            withConvertDotsInJsonKeysToUnderscores(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"convert_dots_in_json_keys_to_underscores" expected to be of type "bool"';
              {
                convert_dots_in_json_keys_to_underscores: converted,
              }
            ),
          },
          withHiveJsonSerDe(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hive_json_ser_de: value,
            }
          ),
          withOpenXJsonSerDe(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              open_x_json_ser_de: value,
            }
          ),
          withHiveJsonSerDeMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hive_json_ser_de+: converted,
            }
          ),
          withOpenXJsonSerDeMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              open_x_json_ser_de+: converted,
            }
          ),
        },
        withDeserializer(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            deserializer: value,
          }
        ),
        withDeserializerMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            deserializer+: converted,
          }
        ),
      },
      output_format_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        serializer:: {
          local block = self,
          new():: (
            {}
          ),
          orc_ser_de:: {
            local block = self,
            new():: (
              {}
            ),
            withBlockSizeBytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"block_size_bytes" expected to be of type "number"';
              {
                block_size_bytes: converted,
              }
            ),
            withBloomFilterColumns(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"bloom_filter_columns" expected to be of type "list"';
              {
                bloom_filter_columns: converted,
              }
            ),
            withBloomFilterColumnsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"bloom_filter_columns" expected to be of type "list"';
              {
                bloom_filter_columns+: converted,
              }
            ),
            withBloomFilterFalsePositiveProbability(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"bloom_filter_false_positive_probability" expected to be of type "number"';
              {
                bloom_filter_false_positive_probability: converted,
              }
            ),
            withCompression(value):: (
              local converted = value;
              assert std.isString(converted) : '"compression" expected to be of type "string"';
              {
                compression: converted,
              }
            ),
            withDictionaryKeyThreshold(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"dictionary_key_threshold" expected to be of type "number"';
              {
                dictionary_key_threshold: converted,
              }
            ),
            withEnablePadding(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"enable_padding" expected to be of type "bool"';
              {
                enable_padding: converted,
              }
            ),
            withFormatVersion(value):: (
              local converted = value;
              assert std.isString(converted) : '"format_version" expected to be of type "string"';
              {
                format_version: converted,
              }
            ),
            withPaddingTolerance(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"padding_tolerance" expected to be of type "number"';
              {
                padding_tolerance: converted,
              }
            ),
            withRowIndexStride(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"row_index_stride" expected to be of type "number"';
              {
                row_index_stride: converted,
              }
            ),
            withStripeSizeBytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"stripe_size_bytes" expected to be of type "number"';
              {
                stripe_size_bytes: converted,
              }
            ),
          },
          parquet_ser_de:: {
            local block = self,
            new():: (
              {}
            ),
            withBlockSizeBytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"block_size_bytes" expected to be of type "number"';
              {
                block_size_bytes: converted,
              }
            ),
            withCompression(value):: (
              local converted = value;
              assert std.isString(converted) : '"compression" expected to be of type "string"';
              {
                compression: converted,
              }
            ),
            withEnableDictionaryCompression(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"enable_dictionary_compression" expected to be of type "bool"';
              {
                enable_dictionary_compression: converted,
              }
            ),
            withMaxPaddingBytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max_padding_bytes" expected to be of type "number"';
              {
                max_padding_bytes: converted,
              }
            ),
            withPageSizeBytes(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"page_size_bytes" expected to be of type "number"';
              {
                page_size_bytes: converted,
              }
            ),
            withWriterVersion(value):: (
              local converted = value;
              assert std.isString(converted) : '"writer_version" expected to be of type "string"';
              {
                writer_version: converted,
              }
            ),
          },
          withOrcSerDe(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              orc_ser_de: value,
            }
          ),
          withParquetSerDe(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              parquet_ser_de: value,
            }
          ),
          withOrcSerDeMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              orc_ser_de+: converted,
            }
          ),
          withParquetSerDeMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              parquet_ser_de+: converted,
            }
          ),
        },
        withSerializer(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            serializer: value,
          }
        ),
        withSerializerMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            serializer+: converted,
          }
        ),
      },
      schema_configuration:: {
        local block = self,
        new(databaseName, roleArn, tableName):: (
          {}
          + block.withDatabaseName(databaseName)
          + block.withRoleArn(roleArn)
          + block.withTableName(tableName)
        ),
        withCatalogId(value):: (
          local converted = value;
          assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
          {
            catalog_id: converted,
          }
        ),
        withDatabaseName(value):: (
          local converted = value;
          assert std.isString(converted) : '"database_name" expected to be of type "string"';
          {
            database_name: converted,
          }
        ),
        withRegion(value):: (
          local converted = value;
          assert std.isString(converted) : '"region" expected to be of type "string"';
          {
            region: converted,
          }
        ),
        withRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"role_arn" expected to be of type "string"';
          {
            role_arn: converted,
          }
        ),
        withTableName(value):: (
          local converted = value;
          assert std.isString(converted) : '"table_name" expected to be of type "string"';
          {
            table_name: converted,
          }
        ),
        withVersionId(value):: (
          local converted = value;
          assert std.isString(converted) : '"version_id" expected to be of type "string"';
          {
            version_id: converted,
          }
        ),
      },
      withInputFormatConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_format_configuration: value,
        }
      ),
      withOutputFormatConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output_format_configuration: value,
        }
      ),
      withSchemaConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema_configuration: value,
        }
      ),
      withInputFormatConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_format_configuration+: converted,
        }
      ),
      withOutputFormatConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output_format_configuration+: converted,
        }
      ),
      withSchemaConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema_configuration+: converted,
        }
      ),
    },
    dynamic_partitioning_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withRetryDuration(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
        {
          retry_duration: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_backup_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withDataFormatConversionConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_format_conversion_configuration: value,
      }
    ),
    withDynamicPartitioningConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamic_partitioning_configuration: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withS3BackupConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_backup_configuration: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withDataFormatConversionConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_format_conversion_configuration+: converted,
      }
    ),
    withDynamicPartitioningConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamic_partitioning_configuration+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withS3BackupConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_backup_configuration+: converted,
      }
    ),
  },
  http_endpoint_configuration:: {
    local block = self,
    new(url):: (
      {}
      + block.withUrl(url)
    ),
    withAccessKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"access_key" expected to be of type "string"';
      {
        access_key: converted,
      }
    ),
    withBufferingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    withBufferingSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    withUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    request_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withContentEncoding(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_encoding" expected to be of type "string"';
        {
          content_encoding: converted,
        }
      ),
      common_attributes:: {
        local block = self,
        new(name, value):: (
          {}
          + block.withName(name)
          + block.withValue(value)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      withCommonAttributes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          common_attributes: value,
        }
      ),
      withCommonAttributesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          common_attributes+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    secrets_manager_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSecretArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
        {
          secret_arn: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withRequestConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        request_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withSecretsManagerConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withRequestConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        request_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withSecretsManagerConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration+: converted,
      }
    ),
  },
  iceberg_configuration:: {
    local block = self,
    new(catalogArn, roleArn):: (
      {}
      + block.withCatalogArn(catalogArn)
      + block.withRoleArn(roleArn)
    ),
    withAppendOnly(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"append_only" expected to be of type "bool"';
      {
        append_only: converted,
      }
    ),
    withBufferingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    withBufferingSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    withCatalogArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_arn" expected to be of type "string"';
      {
        catalog_arn: converted,
      }
    ),
    withRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    destination_table_configuration:: {
      local block = self,
      new(databaseName, tableName):: (
        {}
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
      withS3ErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_error_output_prefix" expected to be of type "string"';
        {
          s3_error_output_prefix: converted,
        }
      ),
      withTableName(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
      withUniqueKeys(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"unique_keys" expected to be of type "list"';
        {
          unique_keys: converted,
        }
      ),
      withUniqueKeysMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"unique_keys" expected to be of type "list"';
        {
          unique_keys+: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withDestinationTableConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_table_configuration: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withDestinationTableConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        destination_table_configuration+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
  },
  kinesis_source_configuration:: {
    local block = self,
    new(kinesisStreamArn, roleArn):: (
      {}
      + block.withKinesisStreamArn(kinesisStreamArn)
      + block.withRoleArn(roleArn)
    ),
    withKinesisStreamArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesis_stream_arn" expected to be of type "string"';
      {
        kinesis_stream_arn: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  msk_source_configuration:: {
    local block = self,
    new(mskClusterArn, topicName):: (
      {}
      + block.withMskClusterArn(mskClusterArn)
      + block.withTopicName(topicName)
    ),
    withMskClusterArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"msk_cluster_arn" expected to be of type "string"';
      {
        msk_cluster_arn: converted,
      }
    ),
    withReadFromTimestamp(value):: (
      local converted = value;
      assert std.isString(converted) : '"read_from_timestamp" expected to be of type "string"';
      {
        read_from_timestamp: converted,
      }
    ),
    withTopicName(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_name" expected to be of type "string"';
      {
        topic_name: converted,
      }
    ),
    authentication_configuration:: {
      local block = self,
      new(connectivity, roleArn):: (
        {}
        + block.withConnectivity(connectivity)
        + block.withRoleArn(roleArn)
      ),
      withConnectivity(value):: (
        local converted = value;
        assert std.isString(converted) : '"connectivity" expected to be of type "string"';
        {
          connectivity: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    withAuthenticationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authentication_configuration: value,
      }
    ),
    withAuthenticationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authentication_configuration+: converted,
      }
    ),
  },
  opensearch_configuration:: {
    local block = self,
    new(indexName, roleArn):: (
      {}
      + block.withIndexName(indexName)
      + block.withRoleArn(roleArn)
    ),
    withBufferingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    withBufferingSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    withClusterEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_endpoint" expected to be of type "string"';
      {
        cluster_endpoint: converted,
      }
    ),
    withDomainArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_arn" expected to be of type "string"';
      {
        domain_arn: converted,
      }
    ),
    withIndexName(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    withIndexRotationPeriod(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_rotation_period" expected to be of type "string"';
      {
        index_rotation_period: converted,
      }
    ),
    withRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    withTypeName(value):: (
      local converted = value;
      assert std.isString(converted) : '"type_name" expected to be of type "string"';
      {
        type_name: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    document_id_options:: {
      local block = self,
      new(defaultDocumentIdFormat):: (
        {}
        + block.withDefaultDocumentIdFormat(defaultDocumentIdFormat)
      ),
      withDefaultDocumentIdFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"default_document_id_format" expected to be of type "string"';
        {
          default_document_id_format: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    vpc_config:: {
      local block = self,
      new(roleArn, securityGroupIds, subnetIds):: (
        {}
        + block.withRoleArn(roleArn)
        + block.withSecurityGroupIds(securityGroupIds)
        + block.withSubnetIds(subnetIds)
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSecurityGroupIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids: converted,
        }
      ),
      withSecurityGroupIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids+: converted,
        }
      ),
      withSubnetIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids: converted,
        }
      ),
      withSubnetIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids+: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withDocumentIdOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        document_id_options: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withVpcConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withDocumentIdOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        document_id_options+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withVpcConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  opensearchserverless_configuration:: {
    local block = self,
    new(collectionEndpoint, indexName, roleArn):: (
      {}
      + block.withCollectionEndpoint(collectionEndpoint)
      + block.withIndexName(indexName)
      + block.withRoleArn(roleArn)
    ),
    withBufferingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    withBufferingSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    withCollectionEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"collection_endpoint" expected to be of type "string"';
      {
        collection_endpoint: converted,
      }
    ),
    withIndexName(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    withRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    vpc_config:: {
      local block = self,
      new(roleArn, securityGroupIds, subnetIds):: (
        {}
        + block.withRoleArn(roleArn)
        + block.withSecurityGroupIds(securityGroupIds)
        + block.withSubnetIds(subnetIds)
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSecurityGroupIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids: converted,
        }
      ),
      withSecurityGroupIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
        {
          security_group_ids+: converted,
        }
      ),
      withSubnetIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids: converted,
        }
      ),
      withSubnetIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
        {
          subnet_ids+: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withVpcConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withVpcConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_config+: converted,
      }
    ),
  },
  redshift_configuration:: {
    local block = self,
    new(clusterJdbcurl, dataTableName, roleArn):: (
      {}
      + block.withClusterJdbcurl(clusterJdbcurl)
      + block.withDataTableName(dataTableName)
      + block.withRoleArn(roleArn)
    ),
    withClusterJdbcurl(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_jdbcurl" expected to be of type "string"';
      {
        cluster_jdbcurl: converted,
      }
    ),
    withCopyOptions(value):: (
      local converted = value;
      assert std.isString(converted) : '"copy_options" expected to be of type "string"';
      {
        copy_options: converted,
      }
    ),
    withDataTableColumns(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_table_columns" expected to be of type "string"';
      {
        data_table_columns: converted,
      }
    ),
    withDataTableName(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_table_name" expected to be of type "string"';
      {
        data_table_name: converted,
      }
    ),
    withPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    withRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    withUsername(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_backup_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    secrets_manager_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSecretArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
        {
          secret_arn: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withS3BackupConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_backup_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withSecretsManagerConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withS3BackupConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_backup_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withSecretsManagerConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration+: converted,
      }
    ),
  },
  server_side_encryption:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_arn" expected to be of type "string"';
      {
        key_arn: converted,
      }
    ),
    withKeyType(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_type" expected to be of type "string"';
      {
        key_type: converted,
      }
    ),
  },
  snowflake_configuration:: {
    local block = self,
    new(accountUrl, database, roleArn, schema, table):: (
      {}
      + block.withAccountUrl(accountUrl)
      + block.withDatabase(database)
      + block.withRoleArn(roleArn)
      + block.withSchema(schema)
      + block.withTable(table)
    ),
    withAccountUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_url" expected to be of type "string"';
      {
        account_url: converted,
      }
    ),
    withBufferingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    withBufferingSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    withContentColumnName(value):: (
      local converted = value;
      assert std.isString(converted) : '"content_column_name" expected to be of type "string"';
      {
        content_column_name: converted,
      }
    ),
    withDataLoadingOption(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_loading_option" expected to be of type "string"';
      {
        data_loading_option: converted,
      }
    ),
    withDatabase(value):: (
      local converted = value;
      assert std.isString(converted) : '"database" expected to be of type "string"';
      {
        database: converted,
      }
    ),
    withKeyPassphrase(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_passphrase" expected to be of type "string"';
      {
        key_passphrase: converted,
      }
    ),
    withMetadataColumnName(value):: (
      local converted = value;
      assert std.isString(converted) : '"metadata_column_name" expected to be of type "string"';
      {
        metadata_column_name: converted,
      }
    ),
    withPrivateKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"private_key" expected to be of type "string"';
      {
        private_key: converted,
      }
    ),
    withRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    withSchema(value):: (
      local converted = value;
      assert std.isString(converted) : '"schema" expected to be of type "string"';
      {
        schema: converted,
      }
    ),
    withTable(value):: (
      local converted = value;
      assert std.isString(converted) : '"table" expected to be of type "string"';
      {
        table: converted,
      }
    ),
    withUser(value):: (
      local converted = value;
      assert std.isString(converted) : '"user" expected to be of type "string"';
      {
        user: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    secrets_manager_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSecretArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
        {
          secret_arn: converted,
        }
      ),
    },
    snowflake_role_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withSnowflakeRole(value):: (
        local converted = value;
        assert std.isString(converted) : '"snowflake_role" expected to be of type "string"';
        {
          snowflake_role: converted,
        }
      ),
    },
    snowflake_vpc_configuration:: {
      local block = self,
      new(privateLinkVpceId):: (
        {}
        + block.withPrivateLinkVpceId(privateLinkVpceId)
      ),
      withPrivateLinkVpceId(value):: (
        local converted = value;
        assert std.isString(converted) : '"private_link_vpce_id" expected to be of type "string"';
        {
          private_link_vpce_id: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withSecretsManagerConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration: value,
      }
    ),
    withSnowflakeRoleConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake_role_configuration: value,
      }
    ),
    withSnowflakeVpcConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake_vpc_configuration: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withSecretsManagerConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration+: converted,
      }
    ),
    withSnowflakeRoleConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake_role_configuration+: converted,
      }
    ),
    withSnowflakeVpcConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake_vpc_configuration+: converted,
      }
    ),
  },
  splunk_configuration:: {
    local block = self,
    new(hecEndpoint):: (
      {}
      + block.withHecEndpoint(hecEndpoint)
    ),
    withBufferingInterval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
      {
        buffering_interval: converted,
      }
    ),
    withBufferingSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
      {
        buffering_size: converted,
      }
    ),
    withHecAcknowledgmentTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"hec_acknowledgment_timeout" expected to be of type "number"';
      {
        hec_acknowledgment_timeout: converted,
      }
    ),
    withHecEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"hec_endpoint" expected to be of type "string"';
      {
        hec_endpoint: converted,
      }
    ),
    withHecEndpointType(value):: (
      local converted = value;
      assert std.isString(converted) : '"hec_endpoint_type" expected to be of type "string"';
      {
        hec_endpoint_type: converted,
      }
    ),
    withHecToken(value):: (
      local converted = value;
      assert std.isString(converted) : '"hec_token" expected to be of type "string"';
      {
        hec_token: converted,
      }
    ),
    withRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_duration" expected to be of type "number"';
      {
        retry_duration: converted,
      }
    ),
    withS3BackupMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_backup_mode" expected to be of type "string"';
      {
        s3_backup_mode: converted,
      }
    ),
    cloudwatch_logging_options:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
    },
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      processors:: {
        local block = self,
        new(type):: (
          {}
          + block.withType(type)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(parameterName, parameterValue):: (
            {}
            + block.withParameterName(parameterName)
            + block.withParameterValue(parameterValue)
          ),
          withParameterName(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
            {
              parameter_name: converted,
            }
          ),
          withParameterValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
            {
              parameter_value: converted,
            }
          ),
        },
        withParameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        withParametersMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      withProcessors(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors: value,
        }
      ),
      withProcessorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          processors+: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new(bucketArn, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withRoleArn(roleArn)
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
      withBufferingInterval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_interval" expected to be of type "number"';
        {
          buffering_interval: converted,
        }
      ),
      withBufferingSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"buffering_size" expected to be of type "number"';
        {
          buffering_size: converted,
        }
      ),
      withCompressionFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"compression_format" expected to be of type "string"';
        {
          compression_format: converted,
        }
      ),
      withErrorOutputPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"error_output_prefix" expected to be of type "string"';
        {
          error_output_prefix: converted,
        }
      ),
      withKmsKeyArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      cloudwatch_logging_options:: {
        local block = self,
        new():: (
          {}
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
        withLogGroupName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
          {
            log_group_name: converted,
          }
        ),
        withLogStreamName(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
          {
            log_stream_name: converted,
          }
        ),
      },
      withCloudwatchLoggingOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options: value,
        }
      ),
      withCloudwatchLoggingOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_logging_options+: converted,
        }
      ),
    },
    secrets_manager_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSecretArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
        {
          secret_arn: converted,
        }
      ),
    },
    withCloudwatchLoggingOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withSecretsManagerConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration: value,
      }
    ),
    withCloudwatchLoggingOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logging_options+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
    withSecretsManagerConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secrets_manager_configuration+: converted,
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
  withElasticsearchConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_configuration: value,
    }
  ),
  withExtendedS3Configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      extended_s3_configuration: value,
    }
  ),
  withHttpEndpointConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_endpoint_configuration: value,
    }
  ),
  withIcebergConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iceberg_configuration: value,
    }
  ),
  withKinesisSourceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_source_configuration: value,
    }
  ),
  withMskSourceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      msk_source_configuration: value,
    }
  ),
  withOpensearchConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearch_configuration: value,
    }
  ),
  withOpensearchserverlessConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearchserverless_configuration: value,
    }
  ),
  withRedshiftConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_configuration: value,
    }
  ),
  withServerSideEncryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption: value,
    }
  ),
  withSnowflakeConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snowflake_configuration: value,
    }
  ),
  withSplunkConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      splunk_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withElasticsearchConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_configuration+: converted,
    }
  ),
  withExtendedS3ConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      extended_s3_configuration+: converted,
    }
  ),
  withHttpEndpointConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_endpoint_configuration+: converted,
    }
  ),
  withIcebergConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iceberg_configuration+: converted,
    }
  ),
  withKinesisSourceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_source_configuration+: converted,
    }
  ),
  withMskSourceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      msk_source_configuration+: converted,
    }
  ),
  withOpensearchConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearch_configuration+: converted,
    }
  ),
  withOpensearchserverlessConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearchserverless_configuration+: converted,
    }
  ),
  withRedshiftConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_configuration+: converted,
    }
  ),
  withServerSideEncryptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption+: converted,
    }
  ),
  withSnowflakeConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snowflake_configuration+: converted,
    }
  ),
  withSplunkConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      splunk_configuration+: converted,
    }
  ),
}
