{
  local block = self,
  new(terraformName, autoscalingGroupName, lifecycleTransition, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscaling_lifecycle_hook",
          type:: "resource",
          attributes:: ["autoscaling_group_name", "default_result", "heartbeat_timeout", "id", "lifecycle_transition", "name", "notification_metadata", "notification_target_arn", "region", "role_arn"],
        },
      },
    }
    + block.withAutoscalingGroupName(autoscalingGroupName)
    + block.withLifecycleTransition(lifecycleTransition)
    + block.withName(name)
  ),
  withAutoscalingGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_group_name" expected to be of type "string"';
    {
      autoscaling_group_name: converted,
    }
  ),
  withDefaultResult(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_result" expected to be of type "string"';
    {
      default_result: converted,
    }
  ),
  withHeartbeatTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"heartbeat_timeout" expected to be of type "number"';
    {
      heartbeat_timeout: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLifecycleTransition(value):: (
    local converted = value;
    assert std.isString(converted) : '"lifecycle_transition" expected to be of type "string"';
    {
      lifecycle_transition: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNotificationMetadata(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_metadata" expected to be of type "string"';
    {
      notification_metadata: converted,
    }
  ),
  withNotificationTargetArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_target_arn" expected to be of type "string"';
    {
      notification_target_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
