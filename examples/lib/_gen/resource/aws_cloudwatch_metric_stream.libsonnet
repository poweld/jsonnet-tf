{
  local block = self,
  new(terraformName, firehoseArn, outputFormat, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_metric_stream",
          type:: "resource",
          attributes:: ["arn", "creation_date", "firehose_arn", "id", "include_linked_accounts_metrics", "last_update_date", "name", "name_prefix", "output_format", "region", "role_arn", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withFirehoseArn(firehoseArn)
    + block.withOutputFormat(outputFormat)
    + block.withRoleArn(roleArn)
  ),
  withFirehoseArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firehose_arn" expected to be of type "string"';
    {
      firehose_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIncludeLinkedAccountsMetrics(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_linked_accounts_metrics" expected to be of type "bool"';
    {
      include_linked_accounts_metrics: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withOutputFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"output_format" expected to be of type "string"';
    {
      output_format: converted,
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
  exclude_filter:: {
    local block = self,
    new(namespace):: (
      {}
      + block.withNamespace(namespace)
    ),
    withMetricNames(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metric_names" expected to be of type "set"';
      {
        metric_names: converted,
      }
    ),
    withMetricNamesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metric_names" expected to be of type "set"';
      {
        metric_names+: converted,
      }
    ),
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
  },
  include_filter:: {
    local block = self,
    new(namespace):: (
      {}
      + block.withNamespace(namespace)
    ),
    withMetricNames(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metric_names" expected to be of type "set"';
      {
        metric_names: converted,
      }
    ),
    withMetricNamesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metric_names" expected to be of type "set"';
      {
        metric_names+: converted,
      }
    ),
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
  },
  statistics_configuration:: {
    local block = self,
    new(additionalStatistics):: (
      {}
      + block.withAdditionalStatistics(additionalStatistics)
    ),
    withAdditionalStatistics(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_statistics" expected to be of type "set"';
      {
        additional_statistics: converted,
      }
    ),
    withAdditionalStatisticsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_statistics" expected to be of type "set"';
      {
        additional_statistics+: converted,
      }
    ),
    include_metric:: {
      local block = self,
      new(metricName, namespace):: (
        {}
        + block.withMetricName(metricName)
        + block.withNamespace(namespace)
      ),
      withMetricName(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      withNamespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
    },
    withIncludeMetric(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        include_metric: value,
      }
    ),
    withIncludeMetricMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        include_metric+: converted,
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
  withExcludeFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_filter: value,
    }
  ),
  withIncludeFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      include_filter: value,
    }
  ),
  withStatisticsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statistics_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withExcludeFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_filter+: converted,
    }
  ),
  withIncludeFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      include_filter+: converted,
    }
  ),
  withStatisticsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      statistics_configuration+: converted,
    }
  ),
}
