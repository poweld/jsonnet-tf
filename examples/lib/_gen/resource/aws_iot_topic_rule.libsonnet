{
  local block = self,
  new(terraformName, enabled, name, sql, sqlVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_topic_rule",
          type:: "resource",
          attributes:: ["arn", "description", "enabled", "id", "name", "region", "sql", "sql_version", "tags", "tags_all"],
        },
      },
    }
    + block.withEnabled(enabled)
    + block.withName(name)
    + block.withSql(sql)
    + block.withSqlVersion(sqlVersion)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  withSql(value):: (
    local converted = value;
    assert std.isString(converted) : '"sql" expected to be of type "string"';
    {
      sql: converted,
    }
  ),
  withSqlVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"sql_version" expected to be of type "string"';
    {
      sql_version: converted,
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
  cloudwatch_alarm:: {
    local block = self,
    new(alarmName, roleArn, stateReason, stateValue):: (
      {}
      + block.withAlarmName(alarmName)
      + block.withRoleArn(roleArn)
      + block.withStateReason(stateReason)
      + block.withStateValue(stateValue)
    ),
    withAlarmName(value):: (
      local converted = value;
      assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
      {
        alarm_name: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withStateReason(value):: (
      local converted = value;
      assert std.isString(converted) : '"state_reason" expected to be of type "string"';
      {
        state_reason: converted,
      }
    ),
    withStateValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"state_value" expected to be of type "string"';
      {
        state_value: converted,
      }
    ),
  },
  cloudwatch_logs:: {
    local block = self,
    new(logGroupName, roleArn):: (
      {}
      + block.withLogGroupName(logGroupName)
      + block.withRoleArn(roleArn)
    ),
    withBatchMode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
      {
        batch_mode: converted,
      }
    ),
    withLogGroupName(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
      {
        log_group_name: converted,
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
  cloudwatch_metric:: {
    local block = self,
    new(metricName, metricNamespace, metricUnit, metricValue, roleArn):: (
      {}
      + block.withMetricName(metricName)
      + block.withMetricNamespace(metricNamespace)
      + block.withMetricUnit(metricUnit)
      + block.withMetricValue(metricValue)
      + block.withRoleArn(roleArn)
    ),
    withMetricName(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_name" expected to be of type "string"';
      {
        metric_name: converted,
      }
    ),
    withMetricNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_namespace" expected to be of type "string"';
      {
        metric_namespace: converted,
      }
    ),
    withMetricTimestamp(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_timestamp" expected to be of type "string"';
      {
        metric_timestamp: converted,
      }
    ),
    withMetricUnit(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_unit" expected to be of type "string"';
      {
        metric_unit: converted,
      }
    ),
    withMetricValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_value" expected to be of type "string"';
      {
        metric_value: converted,
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
  dynamodb:: {
    local block = self,
    new(hashKeyField, hashKeyValue, roleArn, tableName):: (
      {}
      + block.withHashKeyField(hashKeyField)
      + block.withHashKeyValue(hashKeyValue)
      + block.withRoleArn(roleArn)
      + block.withTableName(tableName)
    ),
    withHashKeyField(value):: (
      local converted = value;
      assert std.isString(converted) : '"hash_key_field" expected to be of type "string"';
      {
        hash_key_field: converted,
      }
    ),
    withHashKeyType(value):: (
      local converted = value;
      assert std.isString(converted) : '"hash_key_type" expected to be of type "string"';
      {
        hash_key_type: converted,
      }
    ),
    withHashKeyValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"hash_key_value" expected to be of type "string"';
      {
        hash_key_value: converted,
      }
    ),
    withOperation(value):: (
      local converted = value;
      assert std.isString(converted) : '"operation" expected to be of type "string"';
      {
        operation: converted,
      }
    ),
    withPayloadField(value):: (
      local converted = value;
      assert std.isString(converted) : '"payload_field" expected to be of type "string"';
      {
        payload_field: converted,
      }
    ),
    withRangeKeyField(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key_field" expected to be of type "string"';
      {
        range_key_field: converted,
      }
    ),
    withRangeKeyType(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key_type" expected to be of type "string"';
      {
        range_key_type: converted,
      }
    ),
    withRangeKeyValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"range_key_value" expected to be of type "string"';
      {
        range_key_value: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withTableName(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
  },
  dynamodbv2:: {
    local block = self,
    new(roleArn):: (
      {}
      + block.withRoleArn(roleArn)
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    put_item:: {
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
    },
    withPutItem(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        put_item: value,
      }
    ),
    withPutItemMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        put_item+: converted,
      }
    ),
  },
  elasticsearch:: {
    local block = self,
    new(endpoint, id, index, roleArn, type):: (
      {}
      + block.withEndpoint(endpoint)
      + block.withId(id)
      + block.withIndex(index)
      + block.withRoleArn(roleArn)
      + block.withType(type)
    ),
    withEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
      }
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withIndex(value):: (
      local converted = value;
      assert std.isString(converted) : '"index" expected to be of type "string"';
      {
        index: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
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
  error_action:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_alarm:: {
      local block = self,
      new(alarmName, roleArn, stateReason, stateValue):: (
        {}
        + block.withAlarmName(alarmName)
        + block.withRoleArn(roleArn)
        + block.withStateReason(stateReason)
        + block.withStateValue(stateValue)
      ),
      withAlarmName(value):: (
        local converted = value;
        assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
        {
          alarm_name: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withStateReason(value):: (
        local converted = value;
        assert std.isString(converted) : '"state_reason" expected to be of type "string"';
        {
          state_reason: converted,
        }
      ),
      withStateValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"state_value" expected to be of type "string"';
        {
          state_value: converted,
        }
      ),
    },
    cloudwatch_logs:: {
      local block = self,
      new(logGroupName, roleArn):: (
        {}
        + block.withLogGroupName(logGroupName)
        + block.withRoleArn(roleArn)
      ),
      withBatchMode(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
        {
          batch_mode: converted,
        }
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
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
    cloudwatch_metric:: {
      local block = self,
      new(metricName, metricNamespace, metricUnit, metricValue, roleArn):: (
        {}
        + block.withMetricName(metricName)
        + block.withMetricNamespace(metricNamespace)
        + block.withMetricUnit(metricUnit)
        + block.withMetricValue(metricValue)
        + block.withRoleArn(roleArn)
      ),
      withMetricName(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      withMetricNamespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_namespace" expected to be of type "string"';
        {
          metric_namespace: converted,
        }
      ),
      withMetricTimestamp(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_timestamp" expected to be of type "string"';
        {
          metric_timestamp: converted,
        }
      ),
      withMetricUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_unit" expected to be of type "string"';
        {
          metric_unit: converted,
        }
      ),
      withMetricValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_value" expected to be of type "string"';
        {
          metric_value: converted,
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
    dynamodb:: {
      local block = self,
      new(hashKeyField, hashKeyValue, roleArn, tableName):: (
        {}
        + block.withHashKeyField(hashKeyField)
        + block.withHashKeyValue(hashKeyValue)
        + block.withRoleArn(roleArn)
        + block.withTableName(tableName)
      ),
      withHashKeyField(value):: (
        local converted = value;
        assert std.isString(converted) : '"hash_key_field" expected to be of type "string"';
        {
          hash_key_field: converted,
        }
      ),
      withHashKeyType(value):: (
        local converted = value;
        assert std.isString(converted) : '"hash_key_type" expected to be of type "string"';
        {
          hash_key_type: converted,
        }
      ),
      withHashKeyValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"hash_key_value" expected to be of type "string"';
        {
          hash_key_value: converted,
        }
      ),
      withOperation(value):: (
        local converted = value;
        assert std.isString(converted) : '"operation" expected to be of type "string"';
        {
          operation: converted,
        }
      ),
      withPayloadField(value):: (
        local converted = value;
        assert std.isString(converted) : '"payload_field" expected to be of type "string"';
        {
          payload_field: converted,
        }
      ),
      withRangeKeyField(value):: (
        local converted = value;
        assert std.isString(converted) : '"range_key_field" expected to be of type "string"';
        {
          range_key_field: converted,
        }
      ),
      withRangeKeyType(value):: (
        local converted = value;
        assert std.isString(converted) : '"range_key_type" expected to be of type "string"';
        {
          range_key_type: converted,
        }
      ),
      withRangeKeyValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"range_key_value" expected to be of type "string"';
        {
          range_key_value: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withTableName(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
    },
    dynamodbv2:: {
      local block = self,
      new(roleArn):: (
        {}
        + block.withRoleArn(roleArn)
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      put_item:: {
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
      },
      withPutItem(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          put_item: value,
        }
      ),
      withPutItemMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          put_item+: converted,
        }
      ),
    },
    elasticsearch:: {
      local block = self,
      new(endpoint, id, index, roleArn, type):: (
        {}
        + block.withEndpoint(endpoint)
        + block.withId(id)
        + block.withIndex(index)
        + block.withRoleArn(roleArn)
        + block.withType(type)
      ),
      withEndpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint" expected to be of type "string"';
        {
          endpoint: converted,
        }
      ),
      withId(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
      withIndex(value):: (
        local converted = value;
        assert std.isString(converted) : '"index" expected to be of type "string"';
        {
          index: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
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
    firehose:: {
      local block = self,
      new(deliveryStreamName, roleArn):: (
        {}
        + block.withDeliveryStreamName(deliveryStreamName)
        + block.withRoleArn(roleArn)
      ),
      withBatchMode(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
        {
          batch_mode: converted,
        }
      ),
      withDeliveryStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream_name" expected to be of type "string"';
        {
          delivery_stream_name: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSeparator(value):: (
        local converted = value;
        assert std.isString(converted) : '"separator" expected to be of type "string"';
        {
          separator: converted,
        }
      ),
    },
    http:: {
      local block = self,
      new(url):: (
        {}
        + block.withUrl(url)
      ),
      withConfirmationUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"confirmation_url" expected to be of type "string"';
        {
          confirmation_url: converted,
        }
      ),
      withUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"url" expected to be of type "string"';
        {
          url: converted,
        }
      ),
      http_header:: {
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
      withHttpHeader(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          http_header: value,
        }
      ),
      withHttpHeaderMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          http_header+: converted,
        }
      ),
    },
    iot_analytics:: {
      local block = self,
      new(channelName, roleArn):: (
        {}
        + block.withChannelName(channelName)
        + block.withRoleArn(roleArn)
      ),
      withBatchMode(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
        {
          batch_mode: converted,
        }
      ),
      withChannelName(value):: (
        local converted = value;
        assert std.isString(converted) : '"channel_name" expected to be of type "string"';
        {
          channel_name: converted,
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
    iot_events:: {
      local block = self,
      new(inputName, roleArn):: (
        {}
        + block.withInputName(inputName)
        + block.withRoleArn(roleArn)
      ),
      withBatchMode(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
        {
          batch_mode: converted,
        }
      ),
      withInputName(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_name" expected to be of type "string"';
        {
          input_name: converted,
        }
      ),
      withMessageId(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_id" expected to be of type "string"';
        {
          message_id: converted,
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
    kafka:: {
      local block = self,
      new(clientProperties, destinationArn, topic):: (
        {}
        + block.withClientProperties(clientProperties)
        + block.withDestinationArn(destinationArn)
        + block.withTopic(topic)
      ),
      withClientProperties(value):: (
        local converted = value;
        assert std.isObject(converted) : '"client_properties" expected to be of type "map"';
        {
          client_properties: converted,
        }
      ),
      withDestinationArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
        {
          destination_arn: converted,
        }
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withPartition(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition" expected to be of type "string"';
        {
          partition: converted,
        }
      ),
      withTopic(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic" expected to be of type "string"';
        {
          topic: converted,
        }
      ),
      header:: {
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
      withHeader(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header: value,
        }
      ),
      withHeaderMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header+: converted,
        }
      ),
    },
    kinesis:: {
      local block = self,
      new(roleArn, streamName):: (
        {}
        + block.withRoleArn(roleArn)
        + block.withStreamName(streamName)
      ),
      withPartitionKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition_key" expected to be of type "string"';
        {
          partition_key: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_name" expected to be of type "string"';
        {
          stream_name: converted,
        }
      ),
    },
    lambda:: {
      local block = self,
      new(functionArn):: (
        {}
        + block.withFunctionArn(functionArn)
      ),
      withFunctionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"function_arn" expected to be of type "string"';
        {
          function_arn: converted,
        }
      ),
    },
    republish:: {
      local block = self,
      new(roleArn, topic):: (
        {}
        + block.withRoleArn(roleArn)
        + block.withTopic(topic)
      ),
      withQos(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"qos" expected to be of type "number"';
        {
          qos: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withTopic(value):: (
        local converted = value;
        assert std.isString(converted) : '"topic" expected to be of type "string"';
        {
          topic: converted,
        }
      ),
    },
    s3:: {
      local block = self,
      new(bucketName, key, roleArn):: (
        {}
        + block.withBucketName(bucketName)
        + block.withKey(key)
        + block.withRoleArn(roleArn)
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      withCannedAcl(value):: (
        local converted = value;
        assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
        {
          canned_acl: converted,
        }
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    sns:: {
      local block = self,
      new(roleArn, targetArn):: (
        {}
        + block.withRoleArn(roleArn)
        + block.withTargetArn(targetArn)
      ),
      withMessageFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_format" expected to be of type "string"';
        {
          message_format: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withTargetArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_arn" expected to be of type "string"';
        {
          target_arn: converted,
        }
      ),
    },
    sqs:: {
      local block = self,
      new(queueUrl, roleArn, useBase64):: (
        {}
        + block.withQueueUrl(queueUrl)
        + block.withRoleArn(roleArn)
        + block.withUseBase64(useBase64)
      ),
      withQueueUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"queue_url" expected to be of type "string"';
        {
          queue_url: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withUseBase64(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"use_base64" expected to be of type "bool"';
        {
          use_base64: converted,
        }
      ),
    },
    step_functions:: {
      local block = self,
      new(roleArn, stateMachineName):: (
        {}
        + block.withRoleArn(roleArn)
        + block.withStateMachineName(stateMachineName)
      ),
      withExecutionNamePrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"execution_name_prefix" expected to be of type "string"';
        {
          execution_name_prefix: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withStateMachineName(value):: (
        local converted = value;
        assert std.isString(converted) : '"state_machine_name" expected to be of type "string"';
        {
          state_machine_name: converted,
        }
      ),
    },
    timestream:: {
      local block = self,
      new(databaseName, roleArn, tableName):: (
        {}
        + block.withDatabaseName(databaseName)
        + block.withRoleArn(roleArn)
        + block.withTableName(tableName)
      ),
      withDatabaseName(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withTableName(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
      dimension:: {
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
      timestamp:: {
        local block = self,
        new(unit, value):: (
          {}
          + block.withUnit(unit)
          + block.withValue(value)
        ),
        withUnit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
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
      withDimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension: value,
        }
      ),
      withTimestamp(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timestamp: value,
        }
      ),
      withDimensionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension+: converted,
        }
      ),
      withTimestampMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timestamp+: converted,
        }
      ),
    },
    withCloudwatchAlarm(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_alarm: value,
      }
    ),
    withCloudwatchLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    withCloudwatchMetric(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_metric: value,
      }
    ),
    withDynamodb(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodb: value,
      }
    ),
    withDynamodbv2(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodbv2: value,
      }
    ),
    withElasticsearch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elasticsearch: value,
      }
    ),
    withFirehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose: value,
      }
    ),
    withHttp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http: value,
      }
    ),
    withIotAnalytics(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iot_analytics: value,
      }
    ),
    withIotEvents(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iot_events: value,
      }
    ),
    withKafka(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kafka: value,
      }
    ),
    withKinesis(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis: value,
      }
    ),
    withLambda(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda: value,
      }
    ),
    withRepublish(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        republish: value,
      }
    ),
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withSns(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns: value,
      }
    ),
    withSqs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs: value,
      }
    ),
    withStepFunctions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_functions: value,
      }
    ),
    withTimestream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestream: value,
      }
    ),
    withCloudwatchAlarmMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_alarm+: converted,
      }
    ),
    withCloudwatchLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs+: converted,
      }
    ),
    withCloudwatchMetricMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_metric+: converted,
      }
    ),
    withDynamodbMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodb+: converted,
      }
    ),
    withDynamodbv2Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dynamodbv2+: converted,
      }
    ),
    withElasticsearchMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elasticsearch+: converted,
      }
    ),
    withFirehoseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose+: converted,
      }
    ),
    withHttpMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http+: converted,
      }
    ),
    withIotAnalyticsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iot_analytics+: converted,
      }
    ),
    withIotEventsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iot_events+: converted,
      }
    ),
    withKafkaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kafka+: converted,
      }
    ),
    withKinesisMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis+: converted,
      }
    ),
    withLambdaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda+: converted,
      }
    ),
    withRepublishMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        republish+: converted,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
    withSnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sns+: converted,
      }
    ),
    withSqsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs+: converted,
      }
    ),
    withStepFunctionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_functions+: converted,
      }
    ),
    withTimestreamMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestream+: converted,
      }
    ),
  },
  firehose:: {
    local block = self,
    new(deliveryStreamName, roleArn):: (
      {}
      + block.withDeliveryStreamName(deliveryStreamName)
      + block.withRoleArn(roleArn)
    ),
    withBatchMode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
      {
        batch_mode: converted,
      }
    ),
    withDeliveryStreamName(value):: (
      local converted = value;
      assert std.isString(converted) : '"delivery_stream_name" expected to be of type "string"';
      {
        delivery_stream_name: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withSeparator(value):: (
      local converted = value;
      assert std.isString(converted) : '"separator" expected to be of type "string"';
      {
        separator: converted,
      }
    ),
  },
  http:: {
    local block = self,
    new(url):: (
      {}
      + block.withUrl(url)
    ),
    withConfirmationUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"confirmation_url" expected to be of type "string"';
      {
        confirmation_url: converted,
      }
    ),
    withUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
    http_header:: {
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
    withHttpHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header: value,
      }
    ),
    withHttpHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header+: converted,
      }
    ),
  },
  iot_analytics:: {
    local block = self,
    new(channelName, roleArn):: (
      {}
      + block.withChannelName(channelName)
      + block.withRoleArn(roleArn)
    ),
    withBatchMode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
      {
        batch_mode: converted,
      }
    ),
    withChannelName(value):: (
      local converted = value;
      assert std.isString(converted) : '"channel_name" expected to be of type "string"';
      {
        channel_name: converted,
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
  iot_events:: {
    local block = self,
    new(inputName, roleArn):: (
      {}
      + block.withInputName(inputName)
      + block.withRoleArn(roleArn)
    ),
    withBatchMode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"batch_mode" expected to be of type "bool"';
      {
        batch_mode: converted,
      }
    ),
    withInputName(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_name" expected to be of type "string"';
      {
        input_name: converted,
      }
    ),
    withMessageId(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_id" expected to be of type "string"';
      {
        message_id: converted,
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
  kafka:: {
    local block = self,
    new(clientProperties, destinationArn, topic):: (
      {}
      + block.withClientProperties(clientProperties)
      + block.withDestinationArn(destinationArn)
      + block.withTopic(topic)
    ),
    withClientProperties(value):: (
      local converted = value;
      assert std.isObject(converted) : '"client_properties" expected to be of type "map"';
      {
        client_properties: converted,
      }
    ),
    withDestinationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
      {
        destination_arn: converted,
      }
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withPartition(value):: (
      local converted = value;
      assert std.isString(converted) : '"partition" expected to be of type "string"';
      {
        partition: converted,
      }
    ),
    withTopic(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic" expected to be of type "string"';
      {
        topic: converted,
      }
    ),
    header:: {
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
    withHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        header: value,
      }
    ),
    withHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        header+: converted,
      }
    ),
  },
  kinesis:: {
    local block = self,
    new(roleArn, streamName):: (
      {}
      + block.withRoleArn(roleArn)
      + block.withStreamName(streamName)
    ),
    withPartitionKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"partition_key" expected to be of type "string"';
      {
        partition_key: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withStreamName(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_name" expected to be of type "string"';
      {
        stream_name: converted,
      }
    ),
  },
  lambda:: {
    local block = self,
    new(functionArn):: (
      {}
      + block.withFunctionArn(functionArn)
    ),
    withFunctionArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"function_arn" expected to be of type "string"';
      {
        function_arn: converted,
      }
    ),
  },
  republish:: {
    local block = self,
    new(roleArn, topic):: (
      {}
      + block.withRoleArn(roleArn)
      + block.withTopic(topic)
    ),
    withQos(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"qos" expected to be of type "number"';
      {
        qos: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withTopic(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic" expected to be of type "string"';
      {
        topic: converted,
      }
    ),
  },
  s3:: {
    local block = self,
    new(bucketName, key, roleArn):: (
      {}
      + block.withBucketName(bucketName)
      + block.withKey(key)
      + block.withRoleArn(roleArn)
    ),
    withBucketName(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    withCannedAcl(value):: (
      local converted = value;
      assert std.isString(converted) : '"canned_acl" expected to be of type "string"';
      {
        canned_acl: converted,
      }
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
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
  sns:: {
    local block = self,
    new(roleArn, targetArn):: (
      {}
      + block.withRoleArn(roleArn)
      + block.withTargetArn(targetArn)
    ),
    withMessageFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_format" expected to be of type "string"';
      {
        message_format: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withTargetArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_arn" expected to be of type "string"';
      {
        target_arn: converted,
      }
    ),
  },
  sqs:: {
    local block = self,
    new(queueUrl, roleArn, useBase64):: (
      {}
      + block.withQueueUrl(queueUrl)
      + block.withRoleArn(roleArn)
      + block.withUseBase64(useBase64)
    ),
    withQueueUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"queue_url" expected to be of type "string"';
      {
        queue_url: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withUseBase64(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_base64" expected to be of type "bool"';
      {
        use_base64: converted,
      }
    ),
  },
  step_functions:: {
    local block = self,
    new(roleArn, stateMachineName):: (
      {}
      + block.withRoleArn(roleArn)
      + block.withStateMachineName(stateMachineName)
    ),
    withExecutionNamePrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_name_prefix" expected to be of type "string"';
      {
        execution_name_prefix: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withStateMachineName(value):: (
      local converted = value;
      assert std.isString(converted) : '"state_machine_name" expected to be of type "string"';
      {
        state_machine_name: converted,
      }
    ),
  },
  timestream:: {
    local block = self,
    new(databaseName, roleArn, tableName):: (
      {}
      + block.withDatabaseName(databaseName)
      + block.withRoleArn(roleArn)
      + block.withTableName(tableName)
    ),
    withDatabaseName(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withTableName(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
    dimension:: {
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
    timestamp:: {
      local block = self,
      new(unit, value):: (
        {}
        + block.withUnit(unit)
        + block.withValue(value)
      ),
      withUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
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
    withDimension(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dimension: value,
      }
    ),
    withTimestamp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestamp: value,
      }
    ),
    withDimensionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dimension+: converted,
      }
    ),
    withTimestampMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        timestamp+: converted,
      }
    ),
  },
  withCloudwatchAlarm(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_alarm: value,
    }
  ),
  withCloudwatchLogs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logs: value,
    }
  ),
  withCloudwatchMetric(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_metric: value,
    }
  ),
  withDynamodb(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb: value,
    }
  ),
  withDynamodbv2(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodbv2: value,
    }
  ),
  withElasticsearch(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch: value,
    }
  ),
  withErrorAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_action: value,
    }
  ),
  withFirehose(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      firehose: value,
    }
  ),
  withHttp(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http: value,
    }
  ),
  withIotAnalytics(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iot_analytics: value,
    }
  ),
  withIotEvents(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iot_events: value,
    }
  ),
  withKafka(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka: value,
    }
  ),
  withKinesis(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis: value,
    }
  ),
  withLambda(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda: value,
    }
  ),
  withRepublish(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      republish: value,
    }
  ),
  withS3(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3: value,
    }
  ),
  withSns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns: value,
    }
  ),
  withSqs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sqs: value,
    }
  ),
  withStepFunctions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      step_functions: value,
    }
  ),
  withTimestream(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      timestream: value,
    }
  ),
  withCloudwatchAlarmMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_alarm+: converted,
    }
  ),
  withCloudwatchLogsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_logs+: converted,
    }
  ),
  withCloudwatchMetricMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cloudwatch_metric+: converted,
    }
  ),
  withDynamodbMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb+: converted,
    }
  ),
  withDynamodbv2Mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodbv2+: converted,
    }
  ),
  withElasticsearchMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch+: converted,
    }
  ),
  withErrorActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_action+: converted,
    }
  ),
  withFirehoseMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      firehose+: converted,
    }
  ),
  withHttpMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http+: converted,
    }
  ),
  withIotAnalyticsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iot_analytics+: converted,
    }
  ),
  withIotEventsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iot_events+: converted,
    }
  ),
  withKafkaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka+: converted,
    }
  ),
  withKinesisMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis+: converted,
    }
  ),
  withLambdaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda+: converted,
    }
  ),
  withRepublishMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      republish+: converted,
    }
  ),
  withS3Mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3+: converted,
    }
  ),
  withSnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns+: converted,
    }
  ),
  withSqsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sqs+: converted,
    }
  ),
  withStepFunctionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      step_functions+: converted,
    }
  ),
  withTimestreamMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      timestream+: converted,
    }
  ),
}
