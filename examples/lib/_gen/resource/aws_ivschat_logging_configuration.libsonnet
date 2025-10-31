{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ivschat_logging_configuration",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "state", "tags", "tags_all"],
        },
      },
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
  destination_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_logs:: {
      local block = self,
      new(logGroupName):: (
        {}
        + block.withLogGroupName(logGroupName)
      ),
      withLogGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
        {
          log_group_name: converted,
        }
      ),
    },
    firehose:: {
      local block = self,
      new(deliveryStreamName):: (
        {}
        + block.withDeliveryStreamName(deliveryStreamName)
      ),
      withDeliveryStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"delivery_stream_name" expected to be of type "string"';
        {
          delivery_stream_name: converted,
        }
      ),
    },
    s3:: {
      local block = self,
      new(bucketName):: (
        {}
        + block.withBucketName(bucketName)
      ),
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
    },
    withCloudwatchLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    withFirehose(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose: value,
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
    withFirehoseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        firehose+: converted,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
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
  withDestinationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDestinationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration+: converted,
    }
  ),
}
