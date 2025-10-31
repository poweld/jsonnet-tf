{
  local block = self,
  new(terraformName, groupNames, notifications, topicArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscaling_notification",
          type:: "resource",
          attributes:: ["group_names", "id", "notifications", "region", "topic_arn"],
        },
      },
    }
    + block.withGroupNames(groupNames)
    + block.withNotifications(notifications)
    + block.withTopicArn(topicArn)
  ),
  withGroupNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_names" expected to be of type "set"';
    {
      group_names: converted,
    }
  ),
  withGroupNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_names" expected to be of type "set"';
    {
      group_names+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNotifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"notifications" expected to be of type "set"';
    {
      notifications: converted,
    }
  ),
  withNotificationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"notifications" expected to be of type "set"';
    {
      notifications+: converted,
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
  withTopicArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
    {
      topic_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
