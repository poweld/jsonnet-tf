{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_devopsguru_notification_channel",
          type:: "resource",
          attributes:: ["id", "region"],
        },
      },
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
  filters:: {
    local block = self,
    new():: (
      {}
    ),
    withMessageTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"message_types" expected to be of type "set"';
      {
        message_types: converted,
      }
    ),
    withMessageTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"message_types" expected to be of type "set"';
      {
        message_types+: converted,
      }
    ),
    withSeverities(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"severities" expected to be of type "set"';
      {
        severities: converted,
      }
    ),
    withSeveritiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"severities" expected to be of type "set"';
      {
        severities+: converted,
      }
    ),
  },
  sns:: {
    local block = self,
    new(topicArn):: (
      {}
      + block.withTopicArn(topicArn)
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  withFilters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  withSns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns: value,
    }
  ),
  withFiltersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
  withSnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns+: converted,
    }
  ),
}
