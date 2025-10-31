{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sqs_queue",
          type:: "resource",
          attributes:: ["arn", "content_based_deduplication", "deduplication_scope", "delay_seconds", "fifo_queue", "fifo_throughput_limit", "id", "kms_data_key_reuse_period_seconds", "kms_master_key_id", "max_message_size", "message_retention_seconds", "name", "name_prefix", "policy", "receive_wait_time_seconds", "redrive_allow_policy", "redrive_policy", "region", "sqs_managed_sse_enabled", "tags", "tags_all", "url", "visibility_timeout_seconds"],
        },
      },
    }
  ),
  withContentBasedDeduplication(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"content_based_deduplication" expected to be of type "bool"';
    {
      content_based_deduplication: converted,
    }
  ),
  withDeduplicationScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"deduplication_scope" expected to be of type "string"';
    {
      deduplication_scope: converted,
    }
  ),
  withDelaySeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"delay_seconds" expected to be of type "number"';
    {
      delay_seconds: converted,
    }
  ),
  withFifoQueue(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fifo_queue" expected to be of type "bool"';
    {
      fifo_queue: converted,
    }
  ),
  withFifoThroughputLimit(value):: (
    local converted = value;
    assert std.isString(converted) : '"fifo_throughput_limit" expected to be of type "string"';
    {
      fifo_throughput_limit: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsDataKeyReusePeriodSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"kms_data_key_reuse_period_seconds" expected to be of type "number"';
    {
      kms_data_key_reuse_period_seconds: converted,
    }
  ),
  withKmsMasterKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_master_key_id" expected to be of type "string"';
    {
      kms_master_key_id: converted,
    }
  ),
  withMaxMessageSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_message_size" expected to be of type "number"';
    {
      max_message_size: converted,
    }
  ),
  withMessageRetentionSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"message_retention_seconds" expected to be of type "number"';
    {
      message_retention_seconds: converted,
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
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  withReceiveWaitTimeSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"receive_wait_time_seconds" expected to be of type "number"';
    {
      receive_wait_time_seconds: converted,
    }
  ),
  withRedriveAllowPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"redrive_allow_policy" expected to be of type "string"';
    {
      redrive_allow_policy: converted,
    }
  ),
  withRedrivePolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"redrive_policy" expected to be of type "string"';
    {
      redrive_policy: converted,
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
  withSqsManagedSseEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"sqs_managed_sse_enabled" expected to be of type "bool"';
    {
      sqs_managed_sse_enabled: converted,
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
  withVisibilityTimeoutSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"visibility_timeout_seconds" expected to be of type "number"';
    {
      visibility_timeout_seconds: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
