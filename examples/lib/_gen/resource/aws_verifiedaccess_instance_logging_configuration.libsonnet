{
  local block = self,
  new(terraformName, verifiedaccessInstanceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedaccess_instance_logging_configuration",
          type:: "resource",
          attributes:: ["id", "region", "verifiedaccess_instance_id"],
        },
      },
    }
    + block.withVerifiedaccessInstanceId(verifiedaccessInstanceId)
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
  withVerifiedaccessInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_instance_id" expected to be of type "string"';
    {
      verifiedaccess_instance_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  access_logs:: {
    local block = self,
    new():: (
      {}
    ),
    withIncludeTrustContext(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_trust_context" expected to be of type "bool"';
      {
        include_trust_context: converted,
      }
    ),
    withLogVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_version" expected to be of type "string"';
      {
        log_version: converted,
      }
    ),
    cloudwatch_logs:: {
      local block = self,
      new(enabled):: (
        {}
        + block.withEnabled(enabled)
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withLogGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group" expected to be of type "string"';
        {
          log_group: converted,
        }
      ),
    },
    kinesis_data_firehose:: {
      local block = self,
      new(enabled):: (
        {}
        + block.withEnabled(enabled)
      ),
      withDeliveryStream(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream" expected to be of type "string"';
        {
          delivery_stream: converted,
        }
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
    },
    s3:: {
      local block = self,
      new(enabled):: (
        {}
        + block.withEnabled(enabled)
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
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
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
    withCloudwatchLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    withKinesisDataFirehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_firehose: value,
      }
    ),
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withCloudwatchLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs+: converted,
      }
    ),
    withKinesisDataFirehoseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_firehose+: converted,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
  },
  withAccessLogs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs: value,
    }
  ),
  withAccessLogsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_logs+: converted,
    }
  ),
}
