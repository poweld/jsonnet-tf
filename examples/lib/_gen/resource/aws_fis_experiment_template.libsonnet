{
  local block = self,
  new(terraformName, description, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_fis_experiment_template",
          type:: "resource",
          attributes:: ["description", "id", "region", "role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withDescription(description)
    + block.withRoleArn(roleArn)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
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
  action:: {
    local block = self,
    new(actionId, name):: (
      {}
      + block.withActionId(actionId)
      + block.withName(name)
    ),
    withActionId(value):: (
      local converted = value;
      assert std.isString(converted) : '"action_id" expected to be of type "string"';
      {
        action_id: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withStartAfter(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"start_after" expected to be of type "set"';
      {
        start_after: converted,
      }
    ),
    withStartAfterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"start_after" expected to be of type "set"';
      {
        start_after+: converted,
      }
    ),
    parameter:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    target:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    withParameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter: value,
      }
    ),
    withTarget(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target: value,
      }
    ),
    withParameterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter+: converted,
      }
    ),
    withTargetMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target+: converted,
      }
    ),
  },
  experiment_options:: {
    local block = self,
    new():: (
      {}
    ),
    withAccountTargeting(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_targeting" expected to be of type "string"';
      {
        account_targeting: converted,
      }
    ),
    withEmptyTargetResolutionMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"empty_target_resolution_mode" expected to be of type "string"';
      {
        empty_target_resolution_mode: converted,
      }
    ),
  },
  experiment_report_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withPostExperimentDuration(value):: (
      local converted = value;
      assert std.isString(converted) : '"post_experiment_duration" expected to be of type "string"';
      {
        post_experiment_duration: converted,
      }
    ),
    withPreExperimentDuration(value):: (
      local converted = value;
      assert std.isString(converted) : '"pre_experiment_duration" expected to be of type "string"';
      {
        pre_experiment_duration: converted,
      }
    ),
    data_sources:: {
      local block = self,
      new():: (
        {}
      ),
      cloudwatch_dashboard:: {
        local block = self,
        new():: (
          {}
        ),
        withDashboardArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"dashboard_arn" expected to be of type "string"';
          {
            dashboard_arn: converted,
          }
        ),
      },
      withCloudwatchDashboard(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_dashboard: value,
        }
      ),
      withCloudwatchDashboardMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_dashboard+: converted,
        }
      ),
    },
    outputs:: {
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
        withPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
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
    withDataSources(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_sources: value,
      }
    ),
    withOutputs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        outputs: value,
      }
    ),
    withDataSourcesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_sources+: converted,
      }
    ),
    withOutputsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        outputs+: converted,
      }
    ),
  },
  log_configuration:: {
    local block = self,
    new(logSchemaVersion):: (
      {}
      + block.withLogSchemaVersion(logSchemaVersion)
    ),
    withLogSchemaVersion(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"log_schema_version" expected to be of type "number"';
      {
        log_schema_version: converted,
      }
    ),
    cloudwatch_logs_configuration:: {
      local block = self,
      new(logGroupArn):: (
        {}
        + block.withLogGroupArn(logGroupArn)
      ),
      withLogGroupArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
    },
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
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
    },
    withCloudwatchLogsConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withCloudwatchLogsConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
  },
  stop_condition:: {
    local block = self,
    new(source):: (
      {}
      + block.withSource(source)
    ),
    withSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
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
  target:: {
    local block = self,
    new(name, resourceType, selectionMode):: (
      {}
      + block.withName(name)
      + block.withResourceType(resourceType)
      + block.withSelectionMode(selectionMode)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withParameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"parameters" expected to be of type "map"';
      {
        parameters: converted,
      }
    ),
    withResourceArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arns" expected to be of type "set"';
      {
        resource_arns: converted,
      }
    ),
    withResourceArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arns" expected to be of type "set"';
      {
        resource_arns+: converted,
      }
    ),
    withResourceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
    withSelectionMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"selection_mode" expected to be of type "string"';
      {
        selection_mode: converted,
      }
    ),
    filter:: {
      local block = self,
      new(path, values):: (
        {}
        + block.withPath(path)
        + block.withValues(values)
      ),
      withPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    resource_tag:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    withFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    withResourceTag(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tag: value,
      }
    ),
    withFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
    withResourceTagMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tag+: converted,
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
  withAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  withExperimentOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      experiment_options: value,
    }
  ),
  withExperimentReportConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      experiment_report_configuration: value,
    }
  ),
  withLogConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration: value,
    }
  ),
  withStopCondition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stop_condition: value,
    }
  ),
  withTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  withExperimentOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      experiment_options+: converted,
    }
  ),
  withExperimentReportConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      experiment_report_configuration+: converted,
    }
  ),
  withLogConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration+: converted,
    }
  ),
  withStopConditionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stop_condition+: converted,
    }
  ),
  withTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target+: converted,
    }
  ),
}
