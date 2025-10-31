{
  local block = self,
  new(terraformName, functionName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_event_source_mapping",
          type:: "resource",
          attributes:: ["arn", "batch_size", "bisect_batch_on_function_error", "enabled", "event_source_arn", "function_arn", "function_name", "function_response_types", "id", "kms_key_arn", "last_modified", "last_processing_result", "maximum_batching_window_in_seconds", "maximum_record_age_in_seconds", "maximum_retry_attempts", "parallelization_factor", "queues", "region", "starting_position", "starting_position_timestamp", "state", "state_transition_reason", "tags", "tags_all", "topics", "tumbling_window_in_seconds", "uuid"],
        },
      },
    }
    + block.withFunctionName(functionName)
  ),
  withBatchSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
    {
      batch_size: converted,
    }
  ),
  withBisectBatchOnFunctionError(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bisect_batch_on_function_error" expected to be of type "bool"';
    {
      bisect_batch_on_function_error: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withEventSourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_source_arn" expected to be of type "string"';
    {
      event_source_arn: converted,
    }
  ),
  withFunctionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  withFunctionResponseTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"function_response_types" expected to be of type "set"';
    {
      function_response_types: converted,
    }
  ),
  withFunctionResponseTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"function_response_types" expected to be of type "set"';
    {
      function_response_types+: converted,
    }
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
  withMaximumBatchingWindowInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
    {
      maximum_batching_window_in_seconds: converted,
    }
  ),
  withMaximumRecordAgeInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_record_age_in_seconds" expected to be of type "number"';
    {
      maximum_record_age_in_seconds: converted,
    }
  ),
  withMaximumRetryAttempts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_retry_attempts" expected to be of type "number"';
    {
      maximum_retry_attempts: converted,
    }
  ),
  withParallelizationFactor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"parallelization_factor" expected to be of type "number"';
    {
      parallelization_factor: converted,
    }
  ),
  withQueues(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"queues" expected to be of type "list"';
    {
      queues: converted,
    }
  ),
  withQueuesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"queues" expected to be of type "list"';
    {
      queues+: converted,
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
  withStartingPosition(value):: (
    local converted = value;
    assert std.isString(converted) : '"starting_position" expected to be of type "string"';
    {
      starting_position: converted,
    }
  ),
  withStartingPositionTimestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"starting_position_timestamp" expected to be of type "string"';
    {
      starting_position_timestamp: converted,
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
  withTopics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics" expected to be of type "set"';
    {
      topics: converted,
    }
  ),
  withTopicsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"topics" expected to be of type "set"';
    {
      topics+: converted,
    }
  ),
  withTumblingWindowInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tumbling_window_in_seconds" expected to be of type "number"';
    {
      tumbling_window_in_seconds: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  amazon_managed_kafka_event_source_config:: {
    local block = self,
    new():: (
      {}
    ),
    withConsumerGroupId(value):: (
      local converted = value;
      assert std.isString(converted) : '"consumer_group_id" expected to be of type "string"';
      {
        consumer_group_id: converted,
      }
    ),
  },
  destination_config:: {
    local block = self,
    new():: (
      {}
    ),
    on_failure:: {
      local block = self,
      new(destinationArn):: (
        {}
        + block.withDestinationArn(destinationArn)
      ),
      withDestinationArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
        {
          destination_arn: converted,
        }
      ),
    },
    withOnFailure(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure: value,
      }
    ),
    withOnFailureMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_failure+: converted,
      }
    ),
  },
  document_db_event_source_config:: {
    local block = self,
    new(databaseName):: (
      {}
      + block.withDatabaseName(databaseName)
    ),
    withCollectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"collection_name" expected to be of type "string"';
      {
        collection_name: converted,
      }
    ),
    withDatabaseName(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    withFullDocument(value):: (
      local converted = value;
      assert std.isString(converted) : '"full_document" expected to be of type "string"';
      {
        full_document: converted,
      }
    ),
  },
  filter_criteria:: {
    local block = self,
    new():: (
      {}
    ),
    filter:: {
      local block = self,
      new():: (
        {}
      ),
      withPattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"pattern" expected to be of type "string"';
        {
          pattern: converted,
        }
      ),
    },
    withFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    withFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
  },
  metrics_config:: {
    local block = self,
    new(metrics):: (
      {}
      + block.withMetrics(metrics)
    ),
    withMetrics(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metrics" expected to be of type "set"';
      {
        metrics: converted,
      }
    ),
    withMetricsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"metrics" expected to be of type "set"';
      {
        metrics+: converted,
      }
    ),
  },
  provisioned_poller_config:: {
    local block = self,
    new():: (
      {}
    ),
    withMaximumPollers(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_pollers" expected to be of type "number"';
      {
        maximum_pollers: converted,
      }
    ),
    withMinimumPollers(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_pollers" expected to be of type "number"';
      {
        minimum_pollers: converted,
      }
    ),
  },
  scaling_config:: {
    local block = self,
    new():: (
      {}
    ),
    withMaximumConcurrency(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_concurrency" expected to be of type "number"';
      {
        maximum_concurrency: converted,
      }
    ),
  },
  self_managed_event_source:: {
    local block = self,
    new(endpoints):: (
      {}
      + block.withEndpoints(endpoints)
    ),
    withEndpoints(value):: (
      local converted = value;
      assert std.isObject(converted) : '"endpoints" expected to be of type "map"';
      {
        endpoints: converted,
      }
    ),
  },
  self_managed_kafka_event_source_config:: {
    local block = self,
    new():: (
      {}
    ),
    withConsumerGroupId(value):: (
      local converted = value;
      assert std.isString(converted) : '"consumer_group_id" expected to be of type "string"';
      {
        consumer_group_id: converted,
      }
    ),
  },
  source_access_configuration:: {
    local block = self,
    new(type, uri):: (
      {}
      + block.withType(type)
      + block.withUri(uri)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"uri" expected to be of type "string"';
      {
        uri: converted,
      }
    ),
  },
  withAmazonManagedKafkaEventSourceConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      amazon_managed_kafka_event_source_config: value,
    }
  ),
  withDestinationConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_config: value,
    }
  ),
  withDocumentDbEventSourceConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      document_db_event_source_config: value,
    }
  ),
  withFilterCriteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_criteria: value,
    }
  ),
  withMetricsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metrics_config: value,
    }
  ),
  withProvisionedPollerConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioned_poller_config: value,
    }
  ),
  withScalingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_config: value,
    }
  ),
  withSelfManagedEventSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_event_source: value,
    }
  ),
  withSelfManagedKafkaEventSourceConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_kafka_event_source_config: value,
    }
  ),
  withSourceAccessConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_access_configuration: value,
    }
  ),
  withAmazonManagedKafkaEventSourceConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      amazon_managed_kafka_event_source_config+: converted,
    }
  ),
  withDestinationConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_config+: converted,
    }
  ),
  withDocumentDbEventSourceConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      document_db_event_source_config+: converted,
    }
  ),
  withFilterCriteriaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_criteria+: converted,
    }
  ),
  withMetricsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metrics_config+: converted,
    }
  ),
  withProvisionedPollerConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioned_poller_config+: converted,
    }
  ),
  withScalingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_config+: converted,
    }
  ),
  withSelfManagedEventSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_event_source+: converted,
    }
  ),
  withSelfManagedKafkaEventSourceConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      self_managed_kafka_event_source_config+: converted,
    }
  ),
  withSourceAccessConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_access_configuration+: converted,
    }
  ),
}
