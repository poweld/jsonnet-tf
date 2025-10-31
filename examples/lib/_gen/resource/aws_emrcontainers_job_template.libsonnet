{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emrcontainers_job_template",
          type:: "resource",
          attributes:: ["arn", "id", "kms_key_arn", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  job_template_data:: {
    local block = self,
    new(executionRoleArn, releaseLabel):: (
      {}
      + block.withExecutionRoleArn(executionRoleArn)
      + block.withReleaseLabel(releaseLabel)
    ),
    withExecutionRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
      {
        execution_role_arn: converted,
      }
    ),
    withJobTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"job_tags" expected to be of type "map"';
      {
        job_tags: converted,
      }
    ),
    withReleaseLabel(value):: (
      local converted = value;
      assert std.isString(converted) : '"release_label" expected to be of type "string"';
      {
        release_label: converted,
      }
    ),
    configuration_overrides:: {
      local block = self,
      new():: (
        {}
      ),
      application_configuration:: {
        local block = self,
        new(classification):: (
          {}
          + block.withClassification(classification)
        ),
        withClassification(value):: (
          local converted = value;
          assert std.isString(converted) : '"classification" expected to be of type "string"';
          {
            classification: converted,
          }
        ),
        withProperties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"properties" expected to be of type "map"';
          {
            properties: converted,
          }
        ),
        configurations:: {
          local block = self,
          new():: (
            {}
          ),
          withClassification(value):: (
            local converted = value;
            assert std.isString(converted) : '"classification" expected to be of type "string"';
            {
              classification: converted,
            }
          ),
          withProperties(value):: (
            local converted = value;
            assert std.isObject(converted) : '"properties" expected to be of type "map"';
            {
              properties: converted,
            }
          ),
        },
        withConfigurations(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            configurations: value,
          }
        ),
        withConfigurationsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            configurations+: converted,
          }
        ),
      },
      monitoring_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withPersistentAppUi(value):: (
          local converted = value;
          assert std.isString(converted) : '"persistent_app_ui" expected to be of type "string"';
          {
            persistent_app_ui: converted,
          }
        ),
        cloud_watch_monitoring_configuration:: {
          local block = self,
          new(logGroupName):: (
            {}
            + block.withLogGroupName(logGroupName)
          ),
          withLogGroupName(value):: (
            local converted = value;
            assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
            {
              log_group_name: converted,
            }
          ),
          withLogStreamNamePrefix(value):: (
            local converted = value;
            assert std.isString(converted) : '"log_stream_name_prefix" expected to be of type "string"';
            {
              log_stream_name_prefix: converted,
            }
          ),
        },
        s3_monitoring_configuration:: {
          local block = self,
          new(logUri):: (
            {}
            + block.withLogUri(logUri)
          ),
          withLogUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"log_uri" expected to be of type "string"';
            {
              log_uri: converted,
            }
          ),
        },
        withCloudWatchMonitoringConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            cloud_watch_monitoring_configuration: value,
          }
        ),
        withS3MonitoringConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_monitoring_configuration: value,
          }
        ),
        withCloudWatchMonitoringConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            cloud_watch_monitoring_configuration+: converted,
          }
        ),
        withS3MonitoringConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_monitoring_configuration+: converted,
          }
        ),
      },
      withApplicationConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          application_configuration: value,
        }
      ),
      withMonitoringConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          monitoring_configuration: value,
        }
      ),
      withApplicationConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          application_configuration+: converted,
        }
      ),
      withMonitoringConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          monitoring_configuration+: converted,
        }
      ),
    },
    job_driver:: {
      local block = self,
      new():: (
        {}
      ),
      spark_sql_job_driver:: {
        local block = self,
        new():: (
          {}
        ),
        withEntryPoint(value):: (
          local converted = value;
          assert std.isString(converted) : '"entry_point" expected to be of type "string"';
          {
            entry_point: converted,
          }
        ),
        withSparkSqlParameters(value):: (
          local converted = value;
          assert std.isString(converted) : '"spark_sql_parameters" expected to be of type "string"';
          {
            spark_sql_parameters: converted,
          }
        ),
      },
      spark_submit_job_driver:: {
        local block = self,
        new(entryPoint):: (
          {}
          + block.withEntryPoint(entryPoint)
        ),
        withEntryPoint(value):: (
          local converted = value;
          assert std.isString(converted) : '"entry_point" expected to be of type "string"';
          {
            entry_point: converted,
          }
        ),
        withEntryPointArguments(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"entry_point_arguments" expected to be of type "set"';
          {
            entry_point_arguments: converted,
          }
        ),
        withEntryPointArgumentsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"entry_point_arguments" expected to be of type "set"';
          {
            entry_point_arguments+: converted,
          }
        ),
        withSparkSubmitParameters(value):: (
          local converted = value;
          assert std.isString(converted) : '"spark_submit_parameters" expected to be of type "string"';
          {
            spark_submit_parameters: converted,
          }
        ),
      },
      withSparkSqlJobDriver(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spark_sql_job_driver: value,
        }
      ),
      withSparkSubmitJobDriver(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spark_submit_job_driver: value,
        }
      ),
      withSparkSqlJobDriverMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spark_sql_job_driver+: converted,
        }
      ),
      withSparkSubmitJobDriverMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          spark_submit_job_driver+: converted,
        }
      ),
    },
    withConfigurationOverrides(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        configuration_overrides: value,
      }
    ),
    withJobDriver(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_driver: value,
      }
    ),
    withConfigurationOverridesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        configuration_overrides+: converted,
      }
    ),
    withJobDriverMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        job_driver+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withJobTemplateData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_template_data: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withJobTemplateDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_template_data+: converted,
    }
  ),
}
