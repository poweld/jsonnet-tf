{
  local block = self,
  new(terraformName, defaultOutboundQueueId, description, instanceId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_routing_profile",
          type:: "resource",
          attributes:: ["arn", "default_outbound_queue_id", "description", "id", "instance_id", "name", "region", "routing_profile_id", "tags", "tags_all"],
        },
      },
    }
    + block.withDefaultOutboundQueueId(defaultOutboundQueueId)
    + block.withDescription(description)
    + block.withInstanceId(instanceId)
    + block.withName(name)
  ),
  withDefaultOutboundQueueId(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_outbound_queue_id" expected to be of type "string"';
    {
      default_outbound_queue_id: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  media_concurrencies:: {
    local block = self,
    new(channel, concurrency):: (
      {}
      + block.withChannel(channel)
      + block.withConcurrency(concurrency)
    ),
    withChannel(value):: (
      local converted = value;
      assert std.isString(converted) : '"channel" expected to be of type "string"';
      {
        channel: converted,
      }
    ),
    withConcurrency(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"concurrency" expected to be of type "number"';
      {
        concurrency: converted,
      }
    ),
  },
  queue_configs:: {
    local block = self,
    new(channel, delay, priority, queueId):: (
      {}
      + block.withChannel(channel)
      + block.withDelay(delay)
      + block.withPriority(priority)
      + block.withQueueId(queueId)
    ),
    withChannel(value):: (
      local converted = value;
      assert std.isString(converted) : '"channel" expected to be of type "string"';
      {
        channel: converted,
      }
    ),
    withDelay(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"delay" expected to be of type "number"';
      {
        delay: converted,
      }
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    withQueueId(value):: (
      local converted = value;
      assert std.isString(converted) : '"queue_id" expected to be of type "string"';
      {
        queue_id: converted,
      }
    ),
  },
  withMediaConcurrencies(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_concurrencies: value,
    }
  ),
  withQueueConfigs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      queue_configs: value,
    }
  ),
  withMediaConcurrenciesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_concurrencies+: converted,
    }
  ),
  withQueueConfigsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      queue_configs+: converted,
    }
  ),
}
