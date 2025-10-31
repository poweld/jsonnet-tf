{
  local block = self,
  new(terraformName, inclusiveStartTime, ledgerName, roleArn, streamName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_qldb_stream",
          type:: "resource",
          attributes:: ["arn", "exclusive_end_time", "id", "inclusive_start_time", "ledger_name", "region", "role_arn", "stream_name", "tags", "tags_all"],
        },
      },
    }
    + block.withInclusiveStartTime(inclusiveStartTime)
    + block.withLedgerName(ledgerName)
    + block.withRoleArn(roleArn)
    + block.withStreamName(streamName)
  ),
  withExclusiveEndTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"exclusive_end_time" expected to be of type "string"';
    {
      exclusive_end_time: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInclusiveStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"inclusive_start_time" expected to be of type "string"';
    {
      inclusive_start_time: converted,
    }
  ),
  withLedgerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"ledger_name" expected to be of type "string"';
    {
      ledger_name: converted,
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
  withStreamName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stream_name" expected to be of type "string"';
    {
      stream_name: converted,
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
  kinesis_configuration:: {
    local block = self,
    new(streamArn):: (
      {}
      + block.withStreamArn(streamArn)
    ),
    withAggregationEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"aggregation_enabled" expected to be of type "bool"';
      {
        aggregation_enabled: converted,
      }
    ),
    withStreamArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
      {
        stream_arn: converted,
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
  },
  withKinesisConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withKinesisConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_configuration+: converted,
    }
  ),
}
