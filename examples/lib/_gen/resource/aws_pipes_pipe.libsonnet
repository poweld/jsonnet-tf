{
  local block = self,
  new(terraformName, roleArn, source, target):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pipes_pipe",
          type:: "resource",
          attributes:: ["arn", "description", "desired_state", "enrichment", "id", "kms_key_identifier", "name", "name_prefix", "region", "role_arn", "source", "tags", "tags_all", "target"],
        },
      },
    }
    + block.withRoleArn(roleArn)
    + block.withSource(source)
    + block.withTarget(target)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDesiredState(value):: (
    local converted = value;
    assert std.isString(converted) : '"desired_state" expected to be of type "string"';
    {
      desired_state: converted,
    }
  ),
  withEnrichment(value):: (
    local converted = value;
    assert std.isString(converted) : '"enrichment" expected to be of type "string"';
    {
      enrichment: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
  withSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
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
  withTarget(value):: (
    local converted = value;
    assert std.isString(converted) : '"target" expected to be of type "string"';
    {
      target: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  enrichment_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    withInputTemplate(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_template" expected to be of type "string"';
      {
        input_template: converted,
      }
    ),
    http_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withHeaderParameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"header_parameters" expected to be of type "map"';
        {
          header_parameters: converted,
        }
      ),
      withPathParameterValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
        {
          path_parameter_values: converted,
        }
      ),
      withPathParameterValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
        {
          path_parameter_values+: converted,
        }
      ),
      withQueryStringParameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"query_string_parameters" expected to be of type "map"';
        {
          query_string_parameters: converted,
        }
      ),
    },
    withHttpParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_parameters: value,
      }
    ),
    withHttpParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_parameters+: converted,
      }
    ),
  },
  log_configuration:: {
    local block = self,
    new(level):: (
      {}
      + block.withLevel(level)
    ),
    withIncludeExecutionData(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_execution_data" expected to be of type "set"';
      {
        include_execution_data: converted,
      }
    ),
    withIncludeExecutionDataMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_execution_data" expected to be of type "set"';
      {
        include_execution_data+: converted,
      }
    ),
    withLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"level" expected to be of type "string"';
      {
        level: converted,
      }
    ),
    cloudwatch_logs_log_destination:: {
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
    firehose_log_destination:: {
      local block = self,
      new(deliveryStreamArn):: (
        {}
        + block.withDeliveryStreamArn(deliveryStreamArn)
      ),
      withDeliveryStreamArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream_arn" expected to be of type "string"';
        {
          delivery_stream_arn: converted,
        }
      ),
    },
    s3_log_destination:: {
      local block = self,
      new(bucketName, bucketOwner):: (
        {}
        + block.withBucketName(bucketName)
        + block.withBucketOwner(bucketOwner)
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      withBucketOwner(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner" expected to be of type "string"';
        {
          bucket_owner: converted,
        }
      ),
      withOutputFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_format" expected to be of type "string"';
        {
          output_format: converted,
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
    withCloudwatchLogsLogDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_log_destination: value,
      }
    ),
    withFirehoseLogDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose_log_destination: value,
      }
    ),
    withS3LogDestination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_log_destination: value,
      }
    ),
    withCloudwatchLogsLogDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_log_destination+: converted,
      }
    ),
    withFirehoseLogDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose_log_destination+: converted,
      }
    ),
    withS3LogDestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_log_destination+: converted,
      }
    ),
  },
  source_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    activemq_broker_parameters:: {
      local block = self,
      new(queueName):: (
        {}
        + block.withQueueName(queueName)
      ),
      withBatchSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      withMaximumBatchingWindowInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      withQueueName(value):: (
        local converted = value;
        assert std.isString(converted) : '"queue_name" expected to be of type "string"';
        {
          queue_name: converted,
        }
      ),
      credentials:: {
        local block = self,
        new(basicAuth):: (
          {}
          + block.withBasicAuth(basicAuth)
        ),
        withBasicAuth(value):: (
          local converted = value;
          assert std.isString(converted) : '"basic_auth" expected to be of type "string"';
          {
            basic_auth: converted,
          }
        ),
      },
      withCredentials(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials: value,
        }
      ),
      withCredentialsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials+: converted,
        }
      ),
    },
    dynamodb_stream_parameters:: {
      local block = self,
      new(startingPosition):: (
        {}
        + block.withStartingPosition(startingPosition)
      ),
      withBatchSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
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
      withOnPartialBatchItemFailure(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_partial_batch_item_failure" expected to be of type "string"';
        {
          on_partial_batch_item_failure: converted,
        }
      ),
      withParallelizationFactor(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"parallelization_factor" expected to be of type "number"';
        {
          parallelization_factor: converted,
        }
      ),
      withStartingPosition(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
      dead_letter_config:: {
        local block = self,
        new():: (
          {}
        ),
        withArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"arn" expected to be of type "string"';
          {
            arn: converted,
          }
        ),
      },
      withDeadLetterConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dead_letter_config: value,
        }
      ),
      withDeadLetterConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dead_letter_config+: converted,
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
        new(pattern):: (
          {}
          + block.withPattern(pattern)
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
    kinesis_stream_parameters:: {
      local block = self,
      new(startingPosition):: (
        {}
        + block.withStartingPosition(startingPosition)
      ),
      withBatchSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
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
      withOnPartialBatchItemFailure(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_partial_batch_item_failure" expected to be of type "string"';
        {
          on_partial_batch_item_failure: converted,
        }
      ),
      withParallelizationFactor(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"parallelization_factor" expected to be of type "number"';
        {
          parallelization_factor: converted,
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
      dead_letter_config:: {
        local block = self,
        new():: (
          {}
        ),
        withArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"arn" expected to be of type "string"';
          {
            arn: converted,
          }
        ),
      },
      withDeadLetterConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dead_letter_config: value,
        }
      ),
      withDeadLetterConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dead_letter_config+: converted,
        }
      ),
    },
    managed_streaming_kafka_parameters:: {
      local block = self,
      new(topicName):: (
        {}
        + block.withTopicName(topicName)
      ),
      withBatchSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      withConsumerGroupId(value):: (
        local converted = value;
        assert std.isString(converted) : '"consumer_group_id" expected to be of type "string"';
        {
          consumer_group_id: converted,
        }
      ),
      withMaximumBatchingWindowInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      withStartingPosition(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
      withTopicName(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic_name" expected to be of type "string"';
        {
          topic_name: converted,
        }
      ),
      credentials:: {
        local block = self,
        new():: (
          {}
        ),
        withClientCertificateTlsAuth(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_certificate_tls_auth" expected to be of type "string"';
          {
            client_certificate_tls_auth: converted,
          }
        ),
        withSaslScram_512Auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"sasl_scram_512_auth" expected to be of type "string"';
          {
            sasl_scram_512_auth: converted,
          }
        ),
      },
      withCredentials(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials: value,
        }
      ),
      withCredentialsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials+: converted,
        }
      ),
    },
    rabbitmq_broker_parameters:: {
      local block = self,
      new(queueName):: (
        {}
        + block.withQueueName(queueName)
      ),
      withBatchSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      withMaximumBatchingWindowInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      withQueueName(value):: (
        local converted = value;
        assert std.isString(converted) : '"queue_name" expected to be of type "string"';
        {
          queue_name: converted,
        }
      ),
      withVirtualHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"virtual_host" expected to be of type "string"';
        {
          virtual_host: converted,
        }
      ),
      credentials:: {
        local block = self,
        new(basicAuth):: (
          {}
          + block.withBasicAuth(basicAuth)
        ),
        withBasicAuth(value):: (
          local converted = value;
          assert std.isString(converted) : '"basic_auth" expected to be of type "string"';
          {
            basic_auth: converted,
          }
        ),
      },
      withCredentials(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials: value,
        }
      ),
      withCredentialsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials+: converted,
        }
      ),
    },
    self_managed_kafka_parameters:: {
      local block = self,
      new(topicName):: (
        {}
        + block.withTopicName(topicName)
      ),
      withAdditionalBootstrapServers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_bootstrap_servers" expected to be of type "set"';
        {
          additional_bootstrap_servers: converted,
        }
      ),
      withAdditionalBootstrapServersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_bootstrap_servers" expected to be of type "set"';
        {
          additional_bootstrap_servers+: converted,
        }
      ),
      withBatchSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      withConsumerGroupId(value):: (
        local converted = value;
        assert std.isString(converted) : '"consumer_group_id" expected to be of type "string"';
        {
          consumer_group_id: converted,
        }
      ),
      withMaximumBatchingWindowInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
      withServerRootCaCertificate(value):: (
        local converted = value;
        assert std.isString(converted) : '"server_root_ca_certificate" expected to be of type "string"';
        {
          server_root_ca_certificate: converted,
        }
      ),
      withStartingPosition(value):: (
        local converted = value;
        assert std.isString(converted) : '"starting_position" expected to be of type "string"';
        {
          starting_position: converted,
        }
      ),
      withTopicName(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic_name" expected to be of type "string"';
        {
          topic_name: converted,
        }
      ),
      credentials:: {
        local block = self,
        new():: (
          {}
        ),
        withBasicAuth(value):: (
          local converted = value;
          assert std.isString(converted) : '"basic_auth" expected to be of type "string"';
          {
            basic_auth: converted,
          }
        ),
        withClientCertificateTlsAuth(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_certificate_tls_auth" expected to be of type "string"';
          {
            client_certificate_tls_auth: converted,
          }
        ),
        withSaslScram_256Auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"sasl_scram_256_auth" expected to be of type "string"';
          {
            sasl_scram_256_auth: converted,
          }
        ),
        withSaslScram_512Auth(value):: (
          local converted = value;
          assert std.isString(converted) : '"sasl_scram_512_auth" expected to be of type "string"';
          {
            sasl_scram_512_auth: converted,
          }
        ),
      },
      vpc:: {
        local block = self,
        new():: (
          {}
        ),
        withSecurityGroups(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
          {
            security_groups: converted,
          }
        ),
        withSecurityGroupsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
          {
            security_groups+: converted,
          }
        ),
        withSubnets(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
          {
            subnets: converted,
          }
        ),
        withSubnetsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
          {
            subnets+: converted,
          }
        ),
      },
      withCredentials(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials: value,
        }
      ),
      withVpc(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc: value,
        }
      ),
      withCredentialsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          credentials+: converted,
        }
      ),
      withVpcMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vpc+: converted,
        }
      ),
    },
    sqs_queue_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withBatchSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
        {
          batch_size: converted,
        }
      ),
      withMaximumBatchingWindowInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_batching_window_in_seconds" expected to be of type "number"';
        {
          maximum_batching_window_in_seconds: converted,
        }
      ),
    },
    withActivemqBrokerParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        activemq_broker_parameters: value,
      }
    ),
    withDynamodbStreamParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodb_stream_parameters: value,
      }
    ),
    withFilterCriteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter_criteria: value,
      }
    ),
    withKinesisStreamParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_parameters: value,
      }
    ),
    withManagedStreamingKafkaParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_streaming_kafka_parameters: value,
      }
    ),
    withRabbitmqBrokerParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rabbitmq_broker_parameters: value,
      }
    ),
    withSelfManagedKafkaParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        self_managed_kafka_parameters: value,
      }
    ),
    withSqsQueueParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_parameters: value,
      }
    ),
    withActivemqBrokerParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        activemq_broker_parameters+: converted,
      }
    ),
    withDynamodbStreamParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodb_stream_parameters+: converted,
      }
    ),
    withFilterCriteriaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter_criteria+: converted,
      }
    ),
    withKinesisStreamParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_parameters+: converted,
      }
    ),
    withManagedStreamingKafkaParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_streaming_kafka_parameters+: converted,
      }
    ),
    withRabbitmqBrokerParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rabbitmq_broker_parameters+: converted,
      }
    ),
    withSelfManagedKafkaParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        self_managed_kafka_parameters+: converted,
      }
    ),
    withSqsQueueParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_parameters+: converted,
      }
    ),
  },
  target_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    withInputTemplate(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_template" expected to be of type "string"';
      {
        input_template: converted,
      }
    ),
    batch_job_parameters:: {
      local block = self,
      new(jobDefinition, jobName):: (
        {}
        + block.withJobDefinition(jobDefinition)
        + block.withJobName(jobName)
      ),
      withJobDefinition(value):: (
        local converted = value;
        assert std.isString(converted) : '"job_definition" expected to be of type "string"';
        {
          job_definition: converted,
        }
      ),
      withJobName(value):: (
        local converted = value;
        assert std.isString(converted) : '"job_name" expected to be of type "string"';
        {
          job_name: converted,
        }
      ),
      withParameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"parameters" expected to be of type "map"';
        {
          parameters: converted,
        }
      ),
      array_properties:: {
        local block = self,
        new():: (
          {}
        ),
        withSize(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"size" expected to be of type "number"';
          {
            size: converted,
          }
        ),
      },
      container_overrides:: {
        local block = self,
        new():: (
          {}
        ),
        withCommand(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"command" expected to be of type "list"';
          {
            command: converted,
          }
        ),
        withCommandMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"command" expected to be of type "list"';
          {
            command+: converted,
          }
        ),
        withInstanceType(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        environment:: {
          local block = self,
          new():: (
            {}
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
        resource_requirement:: {
          local block = self,
          new(type, value):: (
            {}
            + block.withType(type)
            + block.withValue(value)
          ),
          withType(value):: (
            local converted = value;
            assert std.isString(converted) : '"type" expected to be of type "string"';
            {
              type: converted,
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
        withEnvironment(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            environment: value,
          }
        ),
        withResourceRequirement(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resource_requirement: value,
          }
        ),
        withEnvironmentMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            environment+: converted,
          }
        ),
        withResourceRequirementMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resource_requirement+: converted,
          }
        ),
      },
      depends_on:: {
        local block = self,
        new():: (
          {}
        ),
        withJobId(value):: (
          local converted = value;
          assert std.isString(converted) : '"job_id" expected to be of type "string"';
          {
            job_id: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      retry_strategy:: {
        local block = self,
        new():: (
          {}
        ),
        withAttempts(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"attempts" expected to be of type "number"';
          {
            attempts: converted,
          }
        ),
      },
      withArrayProperties(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          array_properties: value,
        }
      ),
      withContainerOverrides(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          container_overrides: value,
        }
      ),
      withDependsOn(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          depends_on: value,
        }
      ),
      withRetryStrategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_strategy: value,
        }
      ),
      withArrayPropertiesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          array_properties+: converted,
        }
      ),
      withContainerOverridesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          container_overrides+: converted,
        }
      ),
      withDependsOnMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          depends_on+: converted,
        }
      ),
      withRetryStrategyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_strategy+: converted,
        }
      ),
    },
    cloudwatch_logs_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withLogStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_stream_name" expected to be of type "string"';
        {
          log_stream_name: converted,
        }
      ),
      withTimestamp(value):: (
        local converted = value;
        assert std.isString(converted) : '"timestamp" expected to be of type "string"';
        {
          timestamp: converted,
        }
      ),
    },
    ecs_task_parameters:: {
      local block = self,
      new(taskDefinitionArn):: (
        {}
        + block.withTaskDefinitionArn(taskDefinitionArn)
      ),
      withEnableEcsManagedTags(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_ecs_managed_tags" expected to be of type "bool"';
        {
          enable_ecs_managed_tags: converted,
        }
      ),
      withEnableExecuteCommand(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_execute_command" expected to be of type "bool"';
        {
          enable_execute_command: converted,
        }
      ),
      withGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"group" expected to be of type "string"';
        {
          group: converted,
        }
      ),
      withLaunchType(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_type" expected to be of type "string"';
        {
          launch_type: converted,
        }
      ),
      withPlatformVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"platform_version" expected to be of type "string"';
        {
          platform_version: converted,
        }
      ),
      withPropagateTags(value):: (
        local converted = value;
        assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
        {
          propagate_tags: converted,
        }
      ),
      withReferenceId(value):: (
        local converted = value;
        assert std.isString(converted) : '"reference_id" expected to be of type "string"';
        {
          reference_id: converted,
        }
      ),
      withTags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags" expected to be of type "map"';
        {
          tags: converted,
        }
      ),
      withTaskCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"task_count" expected to be of type "number"';
        {
          task_count: converted,
        }
      ),
      withTaskDefinitionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"task_definition_arn" expected to be of type "string"';
        {
          task_definition_arn: converted,
        }
      ),
      capacity_provider_strategy:: {
        local block = self,
        new(capacityProvider):: (
          {}
          + block.withCapacityProvider(capacityProvider)
        ),
        withBase(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"base" expected to be of type "number"';
          {
            base: converted,
          }
        ),
        withCapacityProvider(value):: (
          local converted = value;
          assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
          {
            capacity_provider: converted,
          }
        ),
        withWeight(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"weight" expected to be of type "number"';
          {
            weight: converted,
          }
        ),
      },
      network_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        aws_vpc_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          withAssignPublicIp(value):: (
            local converted = value;
            assert std.isString(converted) : '"assign_public_ip" expected to be of type "string"';
            {
              assign_public_ip: converted,
            }
          ),
          withSecurityGroups(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
            {
              security_groups: converted,
            }
          ),
          withSecurityGroupsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
            {
              security_groups+: converted,
            }
          ),
          withSubnets(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
            {
              subnets: converted,
            }
          ),
          withSubnetsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
            {
              subnets+: converted,
            }
          ),
        },
        withAwsVpcConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aws_vpc_configuration: value,
          }
        ),
        withAwsVpcConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            aws_vpc_configuration+: converted,
          }
        ),
      },
      overrides:: {
        local block = self,
        new():: (
          {}
        ),
        withCpu(value):: (
          local converted = value;
          assert std.isString(converted) : '"cpu" expected to be of type "string"';
          {
            cpu: converted,
          }
        ),
        withExecutionRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
          {
            execution_role_arn: converted,
          }
        ),
        withMemory(value):: (
          local converted = value;
          assert std.isString(converted) : '"memory" expected to be of type "string"';
          {
            memory: converted,
          }
        ),
        withTaskRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"task_role_arn" expected to be of type "string"';
          {
            task_role_arn: converted,
          }
        ),
        container_override:: {
          local block = self,
          new():: (
            {}
          ),
          withCommand(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"command" expected to be of type "list"';
            {
              command: converted,
            }
          ),
          withCommandMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"command" expected to be of type "list"';
            {
              command+: converted,
            }
          ),
          withCpu(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"cpu" expected to be of type "number"';
            {
              cpu: converted,
            }
          ),
          withMemory(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"memory" expected to be of type "number"';
            {
              memory: converted,
            }
          ),
          withMemoryReservation(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"memory_reservation" expected to be of type "number"';
            {
              memory_reservation: converted,
            }
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          environment:: {
            local block = self,
            new():: (
              {}
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
          environment_file:: {
            local block = self,
            new(type, value):: (
              {}
              + block.withType(type)
              + block.withValue(value)
            ),
            withType(value):: (
              local converted = value;
              assert std.isString(converted) : '"type" expected to be of type "string"';
              {
                type: converted,
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
          resource_requirement:: {
            local block = self,
            new(type, value):: (
              {}
              + block.withType(type)
              + block.withValue(value)
            ),
            withType(value):: (
              local converted = value;
              assert std.isString(converted) : '"type" expected to be of type "string"';
              {
                type: converted,
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
          withEnvironment(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              environment: value,
            }
          ),
          withEnvironmentFile(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              environment_file: value,
            }
          ),
          withResourceRequirement(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              resource_requirement: value,
            }
          ),
          withEnvironmentMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              environment+: converted,
            }
          ),
          withEnvironmentFileMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              environment_file+: converted,
            }
          ),
          withResourceRequirementMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              resource_requirement+: converted,
            }
          ),
        },
        ephemeral_storage:: {
          local block = self,
          new(sizeInGib):: (
            {}
            + block.withSizeInGib(sizeInGib)
          ),
          withSizeInGib(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"size_in_gib" expected to be of type "number"';
            {
              size_in_gib: converted,
            }
          ),
        },
        inference_accelerator_override:: {
          local block = self,
          new():: (
            {}
          ),
          withDeviceName(value):: (
            local converted = value;
            assert std.isString(converted) : '"device_name" expected to be of type "string"';
            {
              device_name: converted,
            }
          ),
          withDeviceType(value):: (
            local converted = value;
            assert std.isString(converted) : '"device_type" expected to be of type "string"';
            {
              device_type: converted,
            }
          ),
        },
        withContainerOverride(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            container_override: value,
          }
        ),
        withEphemeralStorage(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ephemeral_storage: value,
          }
        ),
        withInferenceAcceleratorOverride(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inference_accelerator_override: value,
          }
        ),
        withContainerOverrideMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            container_override+: converted,
          }
        ),
        withEphemeralStorageMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ephemeral_storage+: converted,
          }
        ),
        withInferenceAcceleratorOverrideMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            inference_accelerator_override+: converted,
          }
        ),
      },
      placement_constraint:: {
        local block = self,
        new():: (
          {}
        ),
        withExpression(value):: (
          local converted = value;
          assert std.isString(converted) : '"expression" expected to be of type "string"';
          {
            expression: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      placement_strategy:: {
        local block = self,
        new():: (
          {}
        ),
        withField(value):: (
          local converted = value;
          assert std.isString(converted) : '"field" expected to be of type "string"';
          {
            field: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      withCapacityProviderStrategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_provider_strategy: value,
        }
      ),
      withNetworkConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_configuration: value,
        }
      ),
      withOverrides(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          overrides: value,
        }
      ),
      withPlacementConstraint(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_constraint: value,
        }
      ),
      withPlacementStrategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_strategy: value,
        }
      ),
      withCapacityProviderStrategyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_provider_strategy+: converted,
        }
      ),
      withNetworkConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_configuration+: converted,
        }
      ),
      withOverridesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          overrides+: converted,
        }
      ),
      withPlacementConstraintMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_constraint+: converted,
        }
      ),
      withPlacementStrategyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_strategy+: converted,
        }
      ),
    },
    eventbridge_event_bus_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withDetailType(value):: (
        local converted = value;
        assert std.isString(converted) : '"detail_type" expected to be of type "string"';
        {
          detail_type: converted,
        }
      ),
      withEndpointId(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
        {
          endpoint_id: converted,
        }
      ),
      withResources(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
        {
          resources: converted,
        }
      ),
      withResourcesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
        {
          resources+: converted,
        }
      ),
      withSource(value):: (
        local converted = value;
        assert std.isString(converted) : '"source" expected to be of type "string"';
        {
          source: converted,
        }
      ),
      withTime(value):: (
        local converted = value;
        assert std.isString(converted) : '"time" expected to be of type "string"';
        {
          time: converted,
        }
      ),
    },
    http_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withHeaderParameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"header_parameters" expected to be of type "map"';
        {
          header_parameters: converted,
        }
      ),
      withPathParameterValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
        {
          path_parameter_values: converted,
        }
      ),
      withPathParameterValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
        {
          path_parameter_values+: converted,
        }
      ),
      withQueryStringParameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"query_string_parameters" expected to be of type "map"';
        {
          query_string_parameters: converted,
        }
      ),
    },
    kinesis_stream_parameters:: {
      local block = self,
      new(partitionKey):: (
        {}
        + block.withPartitionKey(partitionKey)
      ),
      withPartitionKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition_key" expected to be of type "string"';
        {
          partition_key: converted,
        }
      ),
    },
    lambda_function_parameters:: {
      local block = self,
      new(invocationType):: (
        {}
        + block.withInvocationType(invocationType)
      ),
      withInvocationType(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_type" expected to be of type "string"';
        {
          invocation_type: converted,
        }
      ),
    },
    redshift_data_parameters:: {
      local block = self,
      new(database, sqls):: (
        {}
        + block.withDatabase(database)
        + block.withSqls(sqls)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withDbUser(value):: (
        local converted = value;
        assert std.isString(converted) : '"db_user" expected to be of type "string"';
        {
          db_user: converted,
        }
      ),
      withSecretManagerArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secret_manager_arn" expected to be of type "string"';
        {
          secret_manager_arn: converted,
        }
      ),
      withSqls(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sqls" expected to be of type "set"';
        {
          sqls: converted,
        }
      ),
      withSqlsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"sqls" expected to be of type "set"';
        {
          sqls+: converted,
        }
      ),
      withStatementName(value):: (
        local converted = value;
        assert std.isString(converted) : '"statement_name" expected to be of type "string"';
        {
          statement_name: converted,
        }
      ),
      withWithEvent(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"with_event" expected to be of type "bool"';
        {
          with_event: converted,
        }
      ),
    },
    sagemaker_pipeline_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      pipeline_parameter:: {
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
      withPipelineParameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pipeline_parameter: value,
        }
      ),
      withPipelineParameterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pipeline_parameter+: converted,
        }
      ),
    },
    sqs_queue_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withMessageDeduplicationId(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_deduplication_id" expected to be of type "string"';
        {
          message_deduplication_id: converted,
        }
      ),
      withMessageGroupId(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_group_id" expected to be of type "string"';
        {
          message_group_id: converted,
        }
      ),
    },
    step_function_state_machine_parameters:: {
      local block = self,
      new(invocationType):: (
        {}
        + block.withInvocationType(invocationType)
      ),
      withInvocationType(value):: (
        local converted = value;
        assert std.isString(converted) : '"invocation_type" expected to be of type "string"';
        {
          invocation_type: converted,
        }
      ),
    },
    withBatchJobParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        batch_job_parameters: value,
      }
    ),
    withCloudwatchLogsParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_parameters: value,
      }
    ),
    withEcsTaskParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecs_task_parameters: value,
      }
    ),
    withEventbridgeEventBusParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eventbridge_event_bus_parameters: value,
      }
    ),
    withHttpParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_parameters: value,
      }
    ),
    withKinesisStreamParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_parameters: value,
      }
    ),
    withLambdaFunctionParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_parameters: value,
      }
    ),
    withRedshiftDataParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redshift_data_parameters: value,
      }
    ),
    withSagemakerPipelineParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sagemaker_pipeline_parameters: value,
      }
    ),
    withSqsQueueParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_parameters: value,
      }
    ),
    withStepFunctionStateMachineParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_function_state_machine_parameters: value,
      }
    ),
    withBatchJobParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        batch_job_parameters+: converted,
      }
    ),
    withCloudwatchLogsParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_parameters+: converted,
      }
    ),
    withEcsTaskParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecs_task_parameters+: converted,
      }
    ),
    withEventbridgeEventBusParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eventbridge_event_bus_parameters+: converted,
      }
    ),
    withHttpParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_parameters+: converted,
      }
    ),
    withKinesisStreamParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_parameters+: converted,
      }
    ),
    withLambdaFunctionParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_parameters+: converted,
      }
    ),
    withRedshiftDataParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redshift_data_parameters+: converted,
      }
    ),
    withSagemakerPipelineParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sagemaker_pipeline_parameters+: converted,
      }
    ),
    withSqsQueueParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_queue_parameters+: converted,
      }
    ),
    withStepFunctionStateMachineParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_function_state_machine_parameters+: converted,
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
  withEnrichmentParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enrichment_parameters: value,
    }
  ),
  withLogConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration: value,
    }
  ),
  withSourceParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_parameters: value,
    }
  ),
  withTargetParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_parameters: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withEnrichmentParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enrichment_parameters+: converted,
    }
  ),
  withLogConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration+: converted,
    }
  ),
  withSourceParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_parameters+: converted,
    }
  ),
  withTargetParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_parameters+: converted,
    }
  ),
}
