{
  local block = self,
  new(terraformName, arn, notificationConfigurationArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_notifications_channel_association",
          type:: "resource",
          attributes:: ["arn", "notification_configuration_arn"],
        },
      },
    }
    + block.withArn(arn)
    + block.withNotificationConfigurationArn(notificationConfigurationArn)
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  withNotificationConfigurationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_configuration_arn" expected to be of type "string"';
    {
      notification_configuration_arn: converted,
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
