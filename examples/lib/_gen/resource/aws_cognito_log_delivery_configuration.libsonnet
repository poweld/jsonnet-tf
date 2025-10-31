{
  local block = self,
  new(terraformName, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_log_delivery_configuration",
          type:: "resource",
          attributes:: ["region", "user_pool_id"],
        },
      },
    }
    + block.withUserPoolId(userPoolId)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withUserPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  log_configurations:: {
    local block = self,
    new(eventSource, logLevel):: (
      {}
      + block.withEventSource(eventSource)
      + block.withLogLevel(logLevel)
    ),
    withEventSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_source" expected to be of type "string"';
      {
        event_source: converted,
      }
    ),
    withLogLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_level" expected to be of type "string"';
      {
        log_level: converted,
      }
    ),
    cloud_watch_logs_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withLogGroupArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
    },
    firehose_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withStreamArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
        {
          stream_arn: converted,
        }
      ),
    },
    s3_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withBucketArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_arn" expected to be of type "string"';
        {
          bucket_arn: converted,
        }
      ),
    },
    withCloudWatchLogsConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloud_watch_logs_configuration: value,
      }
    ),
    withFirehoseConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose_configuration: value,
      }
    ),
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withCloudWatchLogsConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloud_watch_logs_configuration+: converted,
      }
    ),
    withFirehoseConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose_configuration+: converted,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
  },
  withLogConfigurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configurations: value,
    }
  ),
  withLogConfigurationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configurations+: converted,
    }
  ),
}
