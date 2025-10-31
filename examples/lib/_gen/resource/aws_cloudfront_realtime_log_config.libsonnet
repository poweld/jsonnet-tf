{
  local block = self,
  new(terraformName, fields, name, samplingRate):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_realtime_log_config",
          type:: "resource",
          attributes:: ["arn", "fields", "id", "name", "sampling_rate"],
        },
      },
    }
    + block.withFields(fields)
    + block.withName(name)
    + block.withSamplingRate(samplingRate)
  ),
  withFields(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"fields" expected to be of type "set"';
    {
      fields: converted,
    }
  ),
  withFieldsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"fields" expected to be of type "set"';
    {
      fields+: converted,
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
  withSamplingRate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sampling_rate" expected to be of type "number"';
    {
      sampling_rate: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  endpoint:: {
    local block = self,
    new(streamType):: (
      {}
      + block.withStreamType(streamType)
    ),
    withStreamType(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_type" expected to be of type "string"';
      {
        stream_type: converted,
      }
    ),
    kinesis_stream_config:: {
      local block = self,
      new(roleArn, streamArn):: (
        {}
        + block.withRoleArn(roleArn)
        + block.withStreamArn(streamArn)
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
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
    withKinesisStreamConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_config: value,
      }
    ),
    withKinesisStreamConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_stream_config+: converted,
      }
    ),
  },
  withEndpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint: value,
    }
  ),
  withEndpointMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint+: converted,
    }
  ),
}
