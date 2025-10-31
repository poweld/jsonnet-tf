{
  local block = self,
  new(terraformName, executionRoleArn, name, queryString):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_timestreamquery_scheduled_query",
          type:: "resource",
          attributes:: ["arn", "creation_time", "execution_role_arn", "kms_key_id", "name", "next_invocation_time", "previous_invocation_time", "query_string", "region", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withExecutionRoleArn(executionRoleArn)
    + block.withName(name)
    + block.withQueryString(queryString)
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withQueryString(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_string" expected to be of type "string"';
    {
      query_string: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  error_report_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3_configuration:: {
      local block = self,
      new(bucketName):: (
        {}
        + block.withBucketName(bucketName)
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
  last_run_summary:: {
    local block = self,
    new():: (
      {}
    ),
    error_report_location:: {
      local block = self,
      new():: (
        {}
      ),
      s3_report_location:: {
        local block = self,
        new():: (
          {}
        ),
      },
      withS3ReportLocation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_report_location: value,
        }
      ),
      withS3ReportLocationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_report_location+: converted,
        }
      ),
    },
    execution_stats:: {
      local block = self,
      new():: (
        {}
      ),
    },
    query_insights_response:: {
      local block = self,
      new():: (
        {}
      ),
      query_spatial_coverage:: {
        local block = self,
        new():: (
          {}
        ),
        max:: {
          local block = self,
          new():: (
            {}
          ),
        },
        withMax(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max: value,
          }
        ),
        withMaxMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max+: converted,
          }
        ),
      },
      query_temporal_range:: {
        local block = self,
        new():: (
          {}
        ),
        max:: {
          local block = self,
          new():: (
            {}
          ),
        },
        withMax(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max: value,
          }
        ),
        withMaxMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max+: converted,
          }
        ),
      },
      withQuerySpatialCoverage(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_spatial_coverage: value,
        }
      ),
      withQueryTemporalRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_temporal_range: value,
        }
      ),
      withQuerySpatialCoverageMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_spatial_coverage+: converted,
        }
      ),
      withQueryTemporalRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_temporal_range+: converted,
        }
      ),
    },
    withErrorReportLocation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        error_report_location: value,
      }
    ),
    withExecutionStats(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execution_stats: value,
      }
    ),
    withQueryInsightsResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_insights_response: value,
      }
    ),
    withErrorReportLocationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        error_report_location+: converted,
      }
    ),
    withExecutionStatsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execution_stats+: converted,
      }
    ),
    withQueryInsightsResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_insights_response+: converted,
      }
    ),
  },
  notification_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    sns_configuration:: {
      local block = self,
      new(topicArn):: (
        {}
        + block.withTopicArn(topicArn)
      ),
      withTopicArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
        {
          topic_arn: converted,
        }
      ),
    },
    withSnsConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_configuration: value,
      }
    ),
    withSnsConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns_configuration+: converted,
      }
    ),
  },
  recently_failed_runs:: {
    local block = self,
    new():: (
      {}
    ),
    error_report_location:: {
      local block = self,
      new():: (
        {}
      ),
      s3_report_location:: {
        local block = self,
        new():: (
          {}
        ),
      },
      withS3ReportLocation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_report_location: value,
        }
      ),
      withS3ReportLocationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_report_location+: converted,
        }
      ),
    },
    execution_stats:: {
      local block = self,
      new():: (
        {}
      ),
    },
    query_insights_response:: {
      local block = self,
      new():: (
        {}
      ),
      query_spatial_coverage:: {
        local block = self,
        new():: (
          {}
        ),
        max:: {
          local block = self,
          new():: (
            {}
          ),
        },
        withMax(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max: value,
          }
        ),
        withMaxMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max+: converted,
          }
        ),
      },
      query_temporal_range:: {
        local block = self,
        new():: (
          {}
        ),
        max:: {
          local block = self,
          new():: (
            {}
          ),
        },
        withMax(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max: value,
          }
        ),
        withMaxMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            max+: converted,
          }
        ),
      },
      withQuerySpatialCoverage(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_spatial_coverage: value,
        }
      ),
      withQueryTemporalRange(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_temporal_range: value,
        }
      ),
      withQuerySpatialCoverageMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_spatial_coverage+: converted,
        }
      ),
      withQueryTemporalRangeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_temporal_range+: converted,
        }
      ),
    },
    withErrorReportLocation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        error_report_location: value,
      }
    ),
    withExecutionStats(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execution_stats: value,
      }
    ),
    withQueryInsightsResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_insights_response: value,
      }
    ),
    withErrorReportLocationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        error_report_location+: converted,
      }
    ),
    withExecutionStatsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        execution_stats+: converted,
      }
    ),
    withQueryInsightsResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_insights_response+: converted,
      }
    ),
  },
  schedule_configuration:: {
    local block = self,
    new(scheduleExpression):: (
      {}
      + block.withScheduleExpression(scheduleExpression)
    ),
    withScheduleExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
      {
        schedule_expression: converted,
      }
    ),
  },
  target_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    timestream_configuration:: {
      local block = self,
      new(databaseName, tableName, timeColumn):: (
        {}
        + block.withDatabaseName(databaseName)
        + block.withTableName(tableName)
        + block.withTimeColumn(timeColumn)
      ),
      withDatabaseName(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      withMeasureNameColumn(value):: (
        local converted = value;
        assert std.isString(converted) : '"measure_name_column" expected to be of type "string"';
        {
          measure_name_column: converted,
        }
      ),
      withTableName(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
      withTimeColumn(value):: (
        local converted = value;
        assert std.isString(converted) : '"time_column" expected to be of type "string"';
        {
          time_column: converted,
        }
      ),
      dimension_mapping:: {
        local block = self,
        new(dimensionValueType, name):: (
          {}
          + block.withDimensionValueType(dimensionValueType)
          + block.withName(name)
        ),
        withDimensionValueType(value):: (
          local converted = value;
          assert std.isString(converted) : '"dimension_value_type" expected to be of type "string"';
          {
            dimension_value_type: converted,
          }
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
      },
      mixed_measure_mapping:: {
        local block = self,
        new(measureValueType):: (
          {}
          + block.withMeasureValueType(measureValueType)
        ),
        withMeasureName(value):: (
          local converted = value;
          assert std.isString(converted) : '"measure_name" expected to be of type "string"';
          {
            measure_name: converted,
          }
        ),
        withMeasureValueType(value):: (
          local converted = value;
          assert std.isString(converted) : '"measure_value_type" expected to be of type "string"';
          {
            measure_value_type: converted,
          }
        ),
        withSourceColumn(value):: (
          local converted = value;
          assert std.isString(converted) : '"source_column" expected to be of type "string"';
          {
            source_column: converted,
          }
        ),
        withTargetMeasureName(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_measure_name" expected to be of type "string"';
          {
            target_measure_name: converted,
          }
        ),
        multi_measure_attribute_mapping:: {
          local block = self,
          new(measureValueType, sourceColumn):: (
            {}
            + block.withMeasureValueType(measureValueType)
            + block.withSourceColumn(sourceColumn)
          ),
          withMeasureValueType(value):: (
            local converted = value;
            assert std.isString(converted) : '"measure_value_type" expected to be of type "string"';
            {
              measure_value_type: converted,
            }
          ),
          withSourceColumn(value):: (
            local converted = value;
            assert std.isString(converted) : '"source_column" expected to be of type "string"';
            {
              source_column: converted,
            }
          ),
          withTargetMultiMeasureAttributeName(value):: (
            local converted = value;
            assert std.isString(converted) : '"target_multi_measure_attribute_name" expected to be of type "string"';
            {
              target_multi_measure_attribute_name: converted,
            }
          ),
        },
        withMultiMeasureAttributeMapping(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multi_measure_attribute_mapping: value,
          }
        ),
        withMultiMeasureAttributeMappingMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multi_measure_attribute_mapping+: converted,
          }
        ),
      },
      multi_measure_mappings:: {
        local block = self,
        new():: (
          {}
        ),
        withTargetMultiMeasureName(value):: (
          local converted = value;
          assert std.isString(converted) : '"target_multi_measure_name" expected to be of type "string"';
          {
            target_multi_measure_name: converted,
          }
        ),
        multi_measure_attribute_mapping:: {
          local block = self,
          new(measureValueType, sourceColumn):: (
            {}
            + block.withMeasureValueType(measureValueType)
            + block.withSourceColumn(sourceColumn)
          ),
          withMeasureValueType(value):: (
            local converted = value;
            assert std.isString(converted) : '"measure_value_type" expected to be of type "string"';
            {
              measure_value_type: converted,
            }
          ),
          withSourceColumn(value):: (
            local converted = value;
            assert std.isString(converted) : '"source_column" expected to be of type "string"';
            {
              source_column: converted,
            }
          ),
          withTargetMultiMeasureAttributeName(value):: (
            local converted = value;
            assert std.isString(converted) : '"target_multi_measure_attribute_name" expected to be of type "string"';
            {
              target_multi_measure_attribute_name: converted,
            }
          ),
        },
        withMultiMeasureAttributeMapping(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multi_measure_attribute_mapping: value,
          }
        ),
        withMultiMeasureAttributeMappingMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            multi_measure_attribute_mapping+: converted,
          }
        ),
      },
      withDimensionMapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension_mapping: value,
        }
      ),
      withMixedMeasureMapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mixed_measure_mapping: value,
        }
      ),
      withMultiMeasureMappings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          multi_measure_mappings: value,
        }
      ),
      withDimensionMappingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension_mapping+: converted,
        }
      ),
      withMixedMeasureMappingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          mixed_measure_mapping+: converted,
        }
      ),
      withMultiMeasureMappingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          multi_measure_mappings+: converted,
        }
      ),
    },
    withTimestreamConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestream_configuration: value,
      }
    ),
    withTimestreamConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestream_configuration+: converted,
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
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withErrorReportConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_report_configuration: value,
    }
  ),
  withLastRunSummary(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      last_run_summary: value,
    }
  ),
  withNotificationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_configuration: value,
    }
  ),
  withRecentlyFailedRuns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recently_failed_runs: value,
    }
  ),
  withScheduleConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_configuration: value,
    }
  ),
  withTargetConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withErrorReportConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_report_configuration+: converted,
    }
  ),
  withLastRunSummaryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      last_run_summary+: converted,
    }
  ),
  withNotificationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_configuration+: converted,
    }
  ),
  withRecentlyFailedRunsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recently_failed_runs+: converted,
    }
  ),
  withScheduleConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_configuration+: converted,
    }
  ),
  withTargetConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_configuration+: converted,
    }
  ),
}
