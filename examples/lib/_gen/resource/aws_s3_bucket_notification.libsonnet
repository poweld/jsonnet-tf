{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_notification",
          type:: "resource",
          attributes:: ["bucket", "eventbridge", "id", "region"],
        },
      },
    }
    + block.withBucket(bucket)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withEventbridge(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"eventbridge" expected to be of type "bool"';
    {
      eventbridge: converted,
    }
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  lambda_function:: {
    local block = self,
    new(events):: (
      {}
      + block.withEvents(events)
    ),
    withEvents(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    withEventsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
    withFilterPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_prefix" expected to be of type "string"';
      {
        filter_prefix: converted,
      }
    ),
    withFilterSuffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_suffix" expected to be of type "string"';
      {
        filter_suffix: converted,
      }
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withLambdaFunctionArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_function_arn" expected to be of type "string"';
      {
        lambda_function_arn: converted,
      }
    ),
  },
  queue:: {
    local block = self,
    new(events, queueArn):: (
      {}
      + block.withEvents(events)
      + block.withQueueArn(queueArn)
    ),
    withEvents(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    withEventsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
    withFilterPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_prefix" expected to be of type "string"';
      {
        filter_prefix: converted,
      }
    ),
    withFilterSuffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_suffix" expected to be of type "string"';
      {
        filter_suffix: converted,
      }
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withQueueArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"queue_arn" expected to be of type "string"';
      {
        queue_arn: converted,
      }
    ),
  },
  topic:: {
    local block = self,
    new(events, topicArn):: (
      {}
      + block.withEvents(events)
      + block.withTopicArn(topicArn)
    ),
    withEvents(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    withEventsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
    withFilterPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_prefix" expected to be of type "string"';
      {
        filter_prefix: converted,
      }
    ),
    withFilterSuffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_suffix" expected to be of type "string"';
      {
        filter_suffix: converted,
      }
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  withLambdaFunction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_function: value,
    }
  ),
  withQueue(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      queue: value,
    }
  ),
  withTopic(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic: value,
    }
  ),
  withLambdaFunctionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_function+: converted,
    }
  ),
  withQueueMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      queue+: converted,
    }
  ),
  withTopicMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic+: converted,
    }
  ),
}
