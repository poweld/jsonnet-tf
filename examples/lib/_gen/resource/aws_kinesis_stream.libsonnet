{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kinesis_stream",
          type:: "resource",
          attributes:: ["arn", "encryption_type", "enforce_consumer_deletion", "id", "kms_key_id", "name", "region", "retention_period", "shard_count", "shard_level_metrics", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  withEncryptionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
    {
      encryption_type: converted,
    }
  ),
  withEnforceConsumerDeletion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enforce_consumer_deletion" expected to be of type "bool"';
    {
      enforce_consumer_deletion: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period" expected to be of type "number"';
    {
      retention_period: converted,
    }
  ),
  withShardCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"shard_count" expected to be of type "number"';
    {
      shard_count: converted,
    }
  ),
  withShardLevelMetrics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shard_level_metrics" expected to be of type "set"';
    {
      shard_level_metrics: converted,
    }
  ),
  withShardLevelMetricsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shard_level_metrics" expected to be of type "set"';
    {
      shard_level_metrics+: converted,
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
  stream_mode_details:: {
    local block = self,
    new(streamMode):: (
      {}
      + block.withStreamMode(streamMode)
    ),
    withStreamMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_mode" expected to be of type "string"';
      {
        stream_mode: converted,
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
  withStreamModeDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stream_mode_details: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withStreamModeDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stream_mode_details+: converted,
    }
  ),
}
