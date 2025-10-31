{
  local block = self,
  new(terraformName, configId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3control_storage_lens_configuration",
          type:: "resource",
          attributes:: ["account_id", "arn", "config_id", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withConfigId(configId)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withConfigId(value):: (
    local converted = value;
    assert std.isString(converted) : '"config_id" expected to be of type "string"';
    {
      config_id: converted,
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
  storage_lens_configuration:: {
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
    account_level:: {
      local block = self,
      new():: (
        {}
      ),
      activity_metrics:: {
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
      },
      advanced_cost_optimization_metrics:: {
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
      },
      advanced_data_protection_metrics:: {
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
      },
      bucket_level:: {
        local block = self,
        new():: (
          {}
        ),
        activity_metrics:: {
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
        },
        advanced_cost_optimization_metrics:: {
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
        },
        advanced_data_protection_metrics:: {
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
        },
        detailed_status_code_metrics:: {
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
        },
        prefix_level:: {
          local block = self,
          new():: (
            {}
          ),
          storage_metrics:: {
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
            selection_criteria:: {
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
              withMaxDepth(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"max_depth" expected to be of type "number"';
                {
                  max_depth: converted,
                }
              ),
              withMinStorageBytesPercentage(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"min_storage_bytes_percentage" expected to be of type "number"';
                {
                  min_storage_bytes_percentage: converted,
                }
              ),
            },
            withSelectionCriteria(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                selection_criteria: value,
              }
            ),
            withSelectionCriteriaMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                selection_criteria+: converted,
              }
            ),
          },
          withStorageMetrics(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              storage_metrics: value,
            }
          ),
          withStorageMetricsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              storage_metrics+: converted,
            }
          ),
        },
        withActivityMetrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            activity_metrics: value,
          }
        ),
        withAdvancedCostOptimizationMetrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            advanced_cost_optimization_metrics: value,
          }
        ),
        withAdvancedDataProtectionMetrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            advanced_data_protection_metrics: value,
          }
        ),
        withDetailedStatusCodeMetrics(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            detailed_status_code_metrics: value,
          }
        ),
        withPrefixLevel(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prefix_level: value,
          }
        ),
        withActivityMetricsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            activity_metrics+: converted,
          }
        ),
        withAdvancedCostOptimizationMetricsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            advanced_cost_optimization_metrics+: converted,
          }
        ),
        withAdvancedDataProtectionMetricsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            advanced_data_protection_metrics+: converted,
          }
        ),
        withDetailedStatusCodeMetricsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            detailed_status_code_metrics+: converted,
          }
        ),
        withPrefixLevelMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            prefix_level+: converted,
          }
        ),
      },
      detailed_status_code_metrics:: {
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
      },
      withActivityMetrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          activity_metrics: value,
        }
      ),
      withAdvancedCostOptimizationMetrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          advanced_cost_optimization_metrics: value,
        }
      ),
      withAdvancedDataProtectionMetrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          advanced_data_protection_metrics: value,
        }
      ),
      withBucketLevel(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          bucket_level: value,
        }
      ),
      withDetailedStatusCodeMetrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          detailed_status_code_metrics: value,
        }
      ),
      withActivityMetricsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          activity_metrics+: converted,
        }
      ),
      withAdvancedCostOptimizationMetricsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          advanced_cost_optimization_metrics+: converted,
        }
      ),
      withAdvancedDataProtectionMetricsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          advanced_data_protection_metrics+: converted,
        }
      ),
      withBucketLevelMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          bucket_level+: converted,
        }
      ),
      withDetailedStatusCodeMetricsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          detailed_status_code_metrics+: converted,
        }
      ),
    },
    aws_org:: {
      local block = self,
      new(arn):: (
        {}
        + block.withArn(arn)
      ),
      withArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    data_export:: {
      local block = self,
      new():: (
        {}
      ),
      cloud_watch_metrics:: {
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
      },
      s3_bucket_destination:: {
        local block = self,
        new(accountId, arn, format, outputSchemaVersion):: (
          {}
          + block.withAccountId(accountId)
          + block.withArn(arn)
          + block.withFormat(format)
          + block.withOutputSchemaVersion(outputSchemaVersion)
        ),
        withAccountId(value):: (
          local converted = value;
          assert std.isString(converted) : '"account_id" expected to be of type "string"';
          {
            account_id: converted,
          }
        ),
        withArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"arn" expected to be of type "string"';
          {
            arn: converted,
          }
        ),
        withFormat(value):: (
          local converted = value;
          assert std.isString(converted) : '"format" expected to be of type "string"';
          {
            format: converted,
          }
        ),
        withOutputSchemaVersion(value):: (
          local converted = value;
          assert std.isString(converted) : '"output_schema_version" expected to be of type "string"';
          {
            output_schema_version: converted,
          }
        ),
        withPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        encryption:: {
          local block = self,
          new():: (
            {}
          ),
          sse_kms:: {
            local block = self,
            new(keyId):: (
              {}
              + block.withKeyId(keyId)
            ),
            withKeyId(value):: (
              local converted = value;
              assert std.isString(converted) : '"key_id" expected to be of type "string"';
              {
                key_id: converted,
              }
            ),
          },
          sse_s3:: {
            local block = self,
            new():: (
              {}
            ),
          },
          withSseKms(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sse_kms: value,
            }
          ),
          withSseS3(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sse_s3: value,
            }
          ),
          withSseKmsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sse_kms+: converted,
            }
          ),
          withSseS3Mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sse_s3+: converted,
            }
          ),
        },
        withEncryption(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            encryption: value,
          }
        ),
        withEncryptionMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            encryption+: converted,
          }
        ),
      },
      withCloudWatchMetrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloud_watch_metrics: value,
        }
      ),
      withS3BucketDestination(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_bucket_destination: value,
        }
      ),
      withCloudWatchMetricsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloud_watch_metrics+: converted,
        }
      ),
      withS3BucketDestinationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_bucket_destination+: converted,
        }
      ),
    },
    exclude:: {
      local block = self,
      new():: (
        {}
      ),
      withBuckets(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"buckets" expected to be of type "set"';
        {
          buckets: converted,
        }
      ),
      withBucketsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"buckets" expected to be of type "set"';
        {
          buckets+: converted,
        }
      ),
      withRegions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions: converted,
        }
      ),
      withRegionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions+: converted,
        }
      ),
    },
    include:: {
      local block = self,
      new():: (
        {}
      ),
      withBuckets(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"buckets" expected to be of type "set"';
        {
          buckets: converted,
        }
      ),
      withBucketsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"buckets" expected to be of type "set"';
        {
          buckets+: converted,
        }
      ),
      withRegions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions: converted,
        }
      ),
      withRegionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
        {
          regions+: converted,
        }
      ),
    },
    withAccountLevel(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        account_level: value,
      }
    ),
    withAwsOrg(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_org: value,
      }
    ),
    withDataExport(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_export: value,
      }
    ),
    withExclude(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclude: value,
      }
    ),
    withInclude(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        include: value,
      }
    ),
    withAccountLevelMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        account_level+: converted,
      }
    ),
    withAwsOrgMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_org+: converted,
      }
    ),
    withDataExportMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_export+: converted,
      }
    ),
    withExcludeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exclude+: converted,
      }
    ),
    withIncludeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        include+: converted,
      }
    ),
  },
  withStorageLensConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_lens_configuration: value,
    }
  ),
  withStorageLensConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_lens_configuration+: converted,
    }
  ),
}
