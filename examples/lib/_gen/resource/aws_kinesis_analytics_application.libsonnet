{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kinesis_analytics_application",
          type:: "resource",
          attributes:: ["arn", "code", "create_timestamp", "description", "id", "last_update_timestamp", "name", "region", "start_application", "status", "tags", "tags_all", "version"],
        },
      },
    }
    + block.withName(name)
  ),
  withCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"code" expected to be of type "string"';
    {
      code: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  cloudwatch_logging_options:: {
    local block = self,
    new(logStreamArn, roleArn):: (
      {}
      + block.withLogStreamArn(logStreamArn)
      + block.withRoleArn(roleArn)
    ),
    withLogStreamArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_stream_arn" expected to be of type "string"';
      {
        log_stream_arn: converted,
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
  inputs:: {
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
    kinesis_firehose:: {
      local block = self,
      new(resourceArn, roleArn):: (
        {}
        + block.withResourceArn(resourceArn)
        + block.withRoleArn(roleArn)
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    kinesis_stream:: {
      local block = self,
      new(resourceArn, roleArn):: (
        {}
        + block.withResourceArn(resourceArn)
        + block.withRoleArn(roleArn)
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    parallelism:: {
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
    processing_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      lambda:: {
        local block = self,
        new(resourceArn, roleArn):: (
          {}
          + block.withResourceArn(resourceArn)
          + block.withRoleArn(roleArn)
        ),
        withResourceArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
          {
            resource_arn: converted,
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
      withLambda(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lambda: value,
        }
      ),
      withLambdaMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          lambda+: converted,
        }
      ),
    },
    schema:: {
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
      record_columns:: {
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
        new():: (
          {}
        ),
        mapping_parameters:: {
          local block = self,
          new():: (
            {}
          ),
          csv:: {
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
          json:: {
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
          withCsv(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              csv: value,
            }
          ),
          withJson(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              json: value,
            }
          ),
          withCsvMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              csv+: converted,
            }
          ),
          withJsonMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              json+: converted,
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
      withRecordColumns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_columns: value,
        }
      ),
      withRecordFormat(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_format: value,
        }
      ),
      withRecordColumnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_columns+: converted,
        }
      ),
      withRecordFormatMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_format+: converted,
        }
      ),
    },
    starting_position_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withStartingPosition(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
    },
    withKinesisFirehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose: value,
      }
    ),
    withKinesisStream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream: value,
      }
    ),
    withParallelism(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parallelism: value,
      }
    ),
    withProcessingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration: value,
      }
    ),
    withSchema(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema: value,
      }
    ),
    withStartingPositionConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        starting_position_configuration: value,
      }
    ),
    withKinesisFirehoseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose+: converted,
      }
    ),
    withKinesisStreamMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream+: converted,
      }
    ),
    withParallelismMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parallelism+: converted,
      }
    ),
    withProcessingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        processing_configuration+: converted,
      }
    ),
    withSchemaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema+: converted,
      }
    ),
    withStartingPositionConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        starting_position_configuration+: converted,
      }
    ),
  },
  outputs:: {
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
    kinesis_firehose:: {
      local block = self,
      new(resourceArn, roleArn):: (
        {}
        + block.withResourceArn(resourceArn)
        + block.withRoleArn(roleArn)
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    kinesis_stream:: {
      local block = self,
      new(resourceArn, roleArn):: (
        {}
        + block.withResourceArn(resourceArn)
        + block.withRoleArn(roleArn)
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    lambda:: {
      local block = self,
      new(resourceArn, roleArn):: (
        {}
        + block.withResourceArn(resourceArn)
        + block.withRoleArn(roleArn)
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    schema:: {
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
    withKinesisFirehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose: value,
      }
    ),
    withKinesisStream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream: value,
      }
    ),
    withLambda(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda: value,
      }
    ),
    withSchema(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema: value,
      }
    ),
    withKinesisFirehoseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_firehose+: converted,
      }
    ),
    withKinesisStreamMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream+: converted,
      }
    ),
    withLambdaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda+: converted,
      }
    ),
    withSchemaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema+: converted,
      }
    ),
  },
  reference_data_sources:: {
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
    s3:: {
      local block = self,
      new(bucketArn, fileKey, roleArn):: (
        {}
        + block.withBucketArn(bucketArn)
        + block.withFileKey(fileKey)
        + block.withRoleArn(roleArn)
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
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    schema:: {
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
      record_columns:: {
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
        new():: (
          {}
        ),
        mapping_parameters:: {
          local block = self,
          new():: (
            {}
          ),
          csv:: {
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
          json:: {
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
          withCsv(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              csv: value,
            }
          ),
          withJson(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              json: value,
            }
          ),
          withCsvMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              csv+: converted,
            }
          ),
          withJsonMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              json+: converted,
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
      withRecordColumns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_columns: value,
        }
      ),
      withRecordFormat(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_format: value,
        }
      ),
      withRecordColumnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_columns+: converted,
        }
      ),
      withRecordFormatMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          record_format+: converted,
        }
      ),
    },
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withSchema(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema: value,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
    withSchemaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema+: converted,
      }
    ),
  },
  withCloudwatchLoggingOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logging_options: value,
    }
  ),
  withInputs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inputs: value,
    }
  ),
  withOutputs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outputs: value,
    }
  ),
  withReferenceDataSources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reference_data_sources: value,
    }
  ),
  withCloudwatchLoggingOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logging_options+: converted,
    }
  ),
  withInputsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inputs+: converted,
    }
  ),
  withOutputsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      outputs+: converted,
    }
  ),
  withReferenceDataSourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      reference_data_sources+: converted,
    }
  ),
}
