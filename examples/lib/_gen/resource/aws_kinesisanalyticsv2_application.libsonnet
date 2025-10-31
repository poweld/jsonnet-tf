{
  local block = self,
  new(terraformName, name, runtimeEnvironment, serviceExecutionRole):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kinesisanalyticsv2_application",
          type:: "resource",
          attributes:: ["application_mode", "arn", "create_timestamp", "description", "force_stop", "id", "last_update_timestamp", "name", "region", "runtime_environment", "service_execution_role", "start_application", "status", "tags", "tags_all", "version_id"],
        },
      },
    }
    + block.withName(name)
    + block.withRuntimeEnvironment(runtimeEnvironment)
    + block.withServiceExecutionRole(serviceExecutionRole)
  ),
  withApplicationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_mode" expected to be of type "string"';
    {
      application_mode: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withForceStop(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_stop" expected to be of type "bool"';
    {
      force_stop: converted,
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
  withRuntimeEnvironment(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime_environment" expected to be of type "string"';
    {
      runtime_environment: converted,
    }
  ),
  withServiceExecutionRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_execution_role" expected to be of type "string"';
    {
      service_execution_role: converted,
    }
  ),
  withStartApplication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_application" expected to be of type "bool"';
    {
      start_application: converted,
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
  application_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    application_code_configuration:: {
      local block = self,
      new(codeContentType):: (
        {}
        + block.withCodeContentType(codeContentType)
      ),
      withCodeContentType(value):: (
        local converted = value;
        assert std.isString(converted) : '"code_content_type" expected to be of type "string"';
        {
          code_content_type: converted,
        }
      ),
      code_content:: {
        local block = self,
        new():: (
          {}
        ),
        withTextContent(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_content" expected to be of type "string"';
          {
            text_content: converted,
          }
        ),
        s3_content_location:: {
          local block = self,
          new(bucketArn, fileKey):: (
            {}
            + block.withBucketArn(bucketArn)
            + block.withFileKey(fileKey)
          ),
          withBucketArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
            {
              bucket_arn: converted,
            }
          ),
          withFileKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_key" expected to be of type "string"';
            {
              file_key: converted,
            }
          ),
          withObjectVersion(value):: (
            local converted = value;
            assert std.isString(converted) : '"object_version" expected to be of type "string"';
            {
              object_version: converted,
            }
          ),
        },
        withS3ContentLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_content_location: value,
          }
        ),
        withS3ContentLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_content_location+: converted,
          }
        ),
      },
      withCodeContent(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_content: value,
        }
      ),
      withCodeContentMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          code_content+: converted,
        }
      ),
    },
    application_snapshot_configuration:: {
      local block = self,
      new(snapshotsEnabled):: (
        {}
        + block.withSnapshotsEnabled(snapshotsEnabled)
      ),
      withSnapshotsEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"snapshots_enabled" expected to be of type "bool"';
        {
          snapshots_enabled: converted,
        }
      ),
    },
    environment_properties:: {
      local block = self,
      new():: (
        {}
      ),
      property_group:: {
        local block = self,
        new(propertyGroupId, propertyMap):: (
          {}
          + block.withPropertyGroupId(propertyGroupId)
          + block.withPropertyMap(propertyMap)
        ),
        withPropertyGroupId(value):: (
          local converted = value;
          assert std.isString(converted) : '"property_group_id" expected to be of type "string"';
          {
            property_group_id: converted,
          }
        ),
        withPropertyMap(value):: (
          local converted = value;
          assert std.isObject(converted) : '"property_map" expected to be of type "map"';
          {
            property_map: converted,
          }
        ),
      },
      withPropertyGroup(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          property_group: value,
        }
      ),
      withPropertyGroupMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          property_group+: converted,
        }
      ),
    },
    flink_application_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      checkpoint_configuration:: {
        local block = self,
        new(configurationType):: (
          {}
          + block.withConfigurationType(configurationType)
        ),
        withCheckpointInterval(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"checkpoint_interval" expected to be of type "number"';
          {
            checkpoint_interval: converted,
          }
        ),
        withCheckpointingEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"checkpointing_enabled" expected to be of type "bool"';
          {
            checkpointing_enabled: converted,
          }
        ),
        withConfigurationType(value):: (
          local converted = value;
          assert std.isString(converted) : '"configuration_type" expected to be of type "string"';
          {
            configuration_type: converted,
          }
        ),
        withMinPauseBetweenCheckpoints(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"min_pause_between_checkpoints" expected to be of type "number"';
          {
            min_pause_between_checkpoints: converted,
          }
        ),
      },
      monitoring_configuration:: {
        local block = self,
        new(configurationType):: (
          {}
          + block.withConfigurationType(configurationType)
        ),
        withConfigurationType(value):: (
          local converted = value;
          assert std.isString(converted) : '"configuration_type" expected to be of type "string"';
          {
            configuration_type: converted,
          }
        ),
        withLogLevel(value):: (
          local converted = value;
          assert std.isString(converted) : '"log_level" expected to be of type "string"';
          {
            log_level: converted,
          }
        ),
        withMetricsLevel(value):: (
          local converted = value;
          assert std.isString(converted) : '"metrics_level" expected to be of type "string"';
          {
            metrics_level: converted,
          }
        ),
      },
      parallelism_configuration:: {
        local block = self,
        new(configurationType):: (
          {}
          + block.withConfigurationType(configurationType)
        ),
        withAutoScalingEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"auto_scaling_enabled" expected to be of type "bool"';
          {
            auto_scaling_enabled: converted,
          }
        ),
        withConfigurationType(value):: (
          local converted = value;
          assert std.isString(converted) : '"configuration_type" expected to be of type "string"';
          {
            configuration_type: converted,
          }
        ),
        withParallelism(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"parallelism" expected to be of type "number"';
          {
            parallelism: converted,
          }
        ),
        withParallelismPerKpu(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"parallelism_per_kpu" expected to be of type "number"';
          {
            parallelism_per_kpu: converted,
          }
        ),
      },
      withCheckpointConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          checkpoint_configuration: value,
        }
      ),
      withMonitoringConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          monitoring_configuration: value,
        }
      ),
      withParallelismConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parallelism_configuration: value,
        }
      ),
      withCheckpointConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          checkpoint_configuration+: converted,
        }
      ),
      withMonitoringConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          monitoring_configuration+: converted,
        }
      ),
      withParallelismConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parallelism_configuration+: converted,
        }
      ),
    },
    run_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      application_restore_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withApplicationRestoreType(value):: (
          local converted = value;
          assert std.isString(converted) : '"application_restore_type" expected to be of type "string"';
          {
            application_restore_type: converted,
          }
        ),
        withSnapshotName(value):: (
          local converted = value;
          assert std.isString(converted) : '"snapshot_name" expected to be of type "string"';
          {
            snapshot_name: converted,
          }
        ),
      },
      flink_run_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withAllowNonRestoredState(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"allow_non_restored_state" expected to be of type "bool"';
          {
            allow_non_restored_state: converted,
          }
        ),
      },
      withApplicationRestoreConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          application_restore_configuration: value,
        }
      ),
      withFlinkRunConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          flink_run_configuration: value,
        }
      ),
      withApplicationRestoreConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          application_restore_configuration+: converted,
        }
      ),
      withFlinkRunConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          flink_run_configuration+: converted,
        }
      ),
    },
    sql_application_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      input:: {
        local block = self,
        new(namePrefix):: (
          {}
          + block.withNamePrefix(namePrefix)
        ),
        withNamePrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
          {
            name_prefix: converted,
          }
        ),
        input_parallelism:: {
          local block = self,
          new():: (
            {}
          ),
          withCount(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"count" expected to be of type "number"';
            {
              count: converted,
            }
          ),
        },
        input_processing_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          input_lambda_processor:: {
            local block = self,
            new(resourceArn):: (
              {}
              + block.withResourceArn(resourceArn)
            ),
            withResourceArn(value):: (
              local converted = value;
              assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
              {
                resource_arn: converted,
              }
            ),
          },
          withInputLambdaProcessor(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_lambda_processor: value,
            }
          ),
          withInputLambdaProcessorMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              input_lambda_processor+: converted,
            }
          ),
        },
        input_schema:: {
          local block = self,
          new():: (
            {}
          ),
          withRecordEncoding(value):: (
            local converted = value;
            assert std.isString(converted) : '"record_encoding" expected to be of type "string"';
            {
              record_encoding: converted,
            }
          ),
          record_column:: {
            local block = self,
            new(name, sqlType):: (
              {}
              + block.withName(name)
              + block.withSqlType(sqlType)
            ),
            withMapping(value):: (
              local converted = value;
              assert std.isString(converted) : '"mapping" expected to be of type "string"';
              {
                mapping: converted,
              }
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            withSqlType(value):: (
              local converted = value;
              assert std.isString(converted) : '"sql_type" expected to be of type "string"';
              {
                sql_type: converted,
              }
            ),
          },
          record_format:: {
            local block = self,
            new(recordFormatType):: (
              {}
              + block.withRecordFormatType(recordFormatType)
            ),
            withRecordFormatType(value):: (
              local converted = value;
              assert std.isString(converted) : '"record_format_type" expected to be of type "string"';
              {
                record_format_type: converted,
              }
            ),
            mapping_parameters:: {
              local block = self,
              new():: (
                {}
              ),
              csv_mapping_parameters:: {
                local block = self,
                new(recordColumnDelimiter, recordRowDelimiter):: (
                  {}
                  + block.withRecordColumnDelimiter(recordColumnDelimiter)
                  + block.withRecordRowDelimiter(recordRowDelimiter)
                ),
                withRecordColumnDelimiter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_column_delimiter" expected to be of type "string"';
                  {
                    record_column_delimiter: converted,
                  }
                ),
                withRecordRowDelimiter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_row_delimiter" expected to be of type "string"';
                  {
                    record_row_delimiter: converted,
                  }
                ),
              },
              json_mapping_parameters:: {
                local block = self,
                new(recordRowPath):: (
                  {}
                  + block.withRecordRowPath(recordRowPath)
                ),
                withRecordRowPath(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_row_path" expected to be of type "string"';
                  {
                    record_row_path: converted,
                  }
                ),
              },
              withCsvMappingParameters(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  csv_mapping_parameters: value,
                }
              ),
              withJsonMappingParameters(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  json_mapping_parameters: value,
                }
              ),
              withCsvMappingParametersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  csv_mapping_parameters+: converted,
                }
              ),
              withJsonMappingParametersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  json_mapping_parameters+: converted,
                }
              ),
            },
            withMappingParameters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                mapping_parameters: value,
              }
            ),
            withMappingParametersMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                mapping_parameters+: converted,
              }
            ),
          },
          withRecordColumn(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_column: value,
            }
          ),
          withRecordFormat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_format: value,
            }
          ),
          withRecordColumnMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_column+: converted,
            }
          ),
          withRecordFormatMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_format+: converted,
            }
          ),
        },
        input_starting_position_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          withInputStartingPosition(value):: (
            local converted = value;
            assert std.isString(converted) : '"input_starting_position" expected to be of type "string"';
            {
              input_starting_position: converted,
            }
          ),
        },
        kinesis_firehose_input:: {
          local block = self,
          new(resourceArn):: (
            {}
            + block.withResourceArn(resourceArn)
          ),
          withResourceArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        kinesis_streams_input:: {
          local block = self,
          new(resourceArn):: (
            {}
            + block.withResourceArn(resourceArn)
          ),
          withResourceArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        withInputParallelism(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_parallelism: value,
          }
        ),
        withInputProcessingConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_processing_configuration: value,
          }
        ),
        withInputSchema(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_schema: value,
          }
        ),
        withInputStartingPositionConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_starting_position_configuration: value,
          }
        ),
        withKinesisFirehoseInput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_firehose_input: value,
          }
        ),
        withKinesisStreamsInput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_streams_input: value,
          }
        ),
        withInputParallelismMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_parallelism+: converted,
          }
        ),
        withInputProcessingConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_processing_configuration+: converted,
          }
        ),
        withInputSchemaMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_schema+: converted,
          }
        ),
        withInputStartingPositionConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            input_starting_position_configuration+: converted,
          }
        ),
        withKinesisFirehoseInputMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_firehose_input+: converted,
          }
        ),
        withKinesisStreamsInputMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_streams_input+: converted,
          }
        ),
      },
      output:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        destination_schema:: {
          local block = self,
          new(recordFormatType):: (
            {}
            + block.withRecordFormatType(recordFormatType)
          ),
          withRecordFormatType(value):: (
            local converted = value;
            assert std.isString(converted) : '"record_format_type" expected to be of type "string"';
            {
              record_format_type: converted,
            }
          ),
        },
        kinesis_firehose_output:: {
          local block = self,
          new(resourceArn):: (
            {}
            + block.withResourceArn(resourceArn)
          ),
          withResourceArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        kinesis_streams_output:: {
          local block = self,
          new(resourceArn):: (
            {}
            + block.withResourceArn(resourceArn)
          ),
          withResourceArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        lambda_output:: {
          local block = self,
          new(resourceArn):: (
            {}
            + block.withResourceArn(resourceArn)
          ),
          withResourceArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
            {
              resource_arn: converted,
            }
          ),
        },
        withDestinationSchema(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination_schema: value,
          }
        ),
        withKinesisFirehoseOutput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_firehose_output: value,
          }
        ),
        withKinesisStreamsOutput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_streams_output: value,
          }
        ),
        withLambdaOutput(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_output: value,
          }
        ),
        withDestinationSchemaMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            destination_schema+: converted,
          }
        ),
        withKinesisFirehoseOutputMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_firehose_output+: converted,
          }
        ),
        withKinesisStreamsOutputMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            kinesis_streams_output+: converted,
          }
        ),
        withLambdaOutputMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_output+: converted,
          }
        ),
      },
      reference_data_source:: {
        local block = self,
        new(tableName):: (
          {}
          + block.withTableName(tableName)
        ),
        withTableName(value):: (
          local converted = value;
          assert std.isString(converted) : '"table_name" expected to be of type "string"';
          {
            table_name: converted,
          }
        ),
        reference_schema:: {
          local block = self,
          new():: (
            {}
          ),
          withRecordEncoding(value):: (
            local converted = value;
            assert std.isString(converted) : '"record_encoding" expected to be of type "string"';
            {
              record_encoding: converted,
            }
          ),
          record_column:: {
            local block = self,
            new(name, sqlType):: (
              {}
              + block.withName(name)
              + block.withSqlType(sqlType)
            ),
            withMapping(value):: (
              local converted = value;
              assert std.isString(converted) : '"mapping" expected to be of type "string"';
              {
                mapping: converted,
              }
            ),
            withName(value):: (
              local converted = value;
              assert std.isString(converted) : '"name" expected to be of type "string"';
              {
                name: converted,
              }
            ),
            withSqlType(value):: (
              local converted = value;
              assert std.isString(converted) : '"sql_type" expected to be of type "string"';
              {
                sql_type: converted,
              }
            ),
          },
          record_format:: {
            local block = self,
            new(recordFormatType):: (
              {}
              + block.withRecordFormatType(recordFormatType)
            ),
            withRecordFormatType(value):: (
              local converted = value;
              assert std.isString(converted) : '"record_format_type" expected to be of type "string"';
              {
                record_format_type: converted,
              }
            ),
            mapping_parameters:: {
              local block = self,
              new():: (
                {}
              ),
              csv_mapping_parameters:: {
                local block = self,
                new(recordColumnDelimiter, recordRowDelimiter):: (
                  {}
                  + block.withRecordColumnDelimiter(recordColumnDelimiter)
                  + block.withRecordRowDelimiter(recordRowDelimiter)
                ),
                withRecordColumnDelimiter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_column_delimiter" expected to be of type "string"';
                  {
                    record_column_delimiter: converted,
                  }
                ),
                withRecordRowDelimiter(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_row_delimiter" expected to be of type "string"';
                  {
                    record_row_delimiter: converted,
                  }
                ),
              },
              json_mapping_parameters:: {
                local block = self,
                new(recordRowPath):: (
                  {}
                  + block.withRecordRowPath(recordRowPath)
                ),
                withRecordRowPath(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"record_row_path" expected to be of type "string"';
                  {
                    record_row_path: converted,
                  }
                ),
              },
              withCsvMappingParameters(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  csv_mapping_parameters: value,
                }
              ),
              withJsonMappingParameters(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  json_mapping_parameters: value,
                }
              ),
              withCsvMappingParametersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  csv_mapping_parameters+: converted,
                }
              ),
              withJsonMappingParametersMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  json_mapping_parameters+: converted,
                }
              ),
            },
            withMappingParameters(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                mapping_parameters: value,
              }
            ),
            withMappingParametersMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                mapping_parameters+: converted,
              }
            ),
          },
          withRecordColumn(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_column: value,
            }
          ),
          withRecordFormat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_format: value,
            }
          ),
          withRecordColumnMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_column+: converted,
            }
          ),
          withRecordFormatMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              record_format+: converted,
            }
          ),
        },
        s3_reference_data_source:: {
          local block = self,
          new(bucketArn, fileKey):: (
            {}
            + block.withBucketArn(bucketArn)
            + block.withFileKey(fileKey)
          ),
          withBucketArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
            {
              bucket_arn: converted,
            }
          ),
          withFileKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_key" expected to be of type "string"';
            {
              file_key: converted,
            }
          ),
        },
        withReferenceSchema(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            reference_schema: value,
          }
        ),
        withS3ReferenceDataSource(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_reference_data_source: value,
          }
        ),
        withReferenceSchemaMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            reference_schema+: converted,
          }
        ),
        withS3ReferenceDataSourceMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_reference_data_source+: converted,
          }
        ),
      },
      withInput(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input: value,
        }
      ),
      withOutput(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output: value,
        }
      ),
      withReferenceDataSource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          reference_data_source: value,
        }
      ),
      withInputMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input+: converted,
        }
      ),
      withOutputMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          output+: converted,
        }
      ),
      withReferenceDataSourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          reference_data_source+: converted,
        }
      ),
    },
    vpc_configuration:: {
      local block = self,
      new(securityGroupIds, subnetIds):: (
        {}
        + block.withSecurityGroupIds(securityGroupIds)
        + block.withSubnetIds(subnetIds)
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
    withApplicationCodeConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        application_code_configuration: value,
      }
    ),
    withApplicationSnapshotConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        application_snapshot_configuration: value,
      }
    ),
    withEnvironmentProperties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        environment_properties: value,
      }
    ),
    withFlinkApplicationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        flink_application_configuration: value,
      }
    ),
    withRunConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        run_configuration: value,
      }
    ),
    withSqlApplicationConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sql_application_configuration: value,
      }
    ),
    withVpcConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_configuration: value,
      }
    ),
    withApplicationCodeConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        application_code_configuration+: converted,
      }
    ),
    withApplicationSnapshotConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        application_snapshot_configuration+: converted,
      }
    ),
    withEnvironmentPropertiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        environment_properties+: converted,
      }
    ),
    withFlinkApplicationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        flink_application_configuration+: converted,
      }
    ),
    withRunConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        run_configuration+: converted,
      }
    ),
    withSqlApplicationConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sql_application_configuration+: converted,
      }
    ),
    withVpcConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_configuration+: converted,
      }
    ),
  },
  cloudwatch_logging_options:: {
    local block = self,
    new(logStreamArn):: (
      {}
      + block.withLogStreamArn(logStreamArn)
    ),
    withLogStreamArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_stream_arn" expected to be of type "string"';
      {
        log_stream_arn: converted,
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
  withApplicationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_configuration: value,
    }
  ),
  withCloudwatchLoggingOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logging_options: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withApplicationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_configuration+: converted,
    }
  ),
  withCloudwatchLoggingOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logging_options+: converted,
    }
  ),
}
