{
  local block = self,
  new(terraformName, autoscalingGroupName, scheduledActionName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscaling_schedule",
          type:: "resource",
          attributes:: ["arn", "autoscaling_group_name", "desired_capacity", "end_time", "id", "max_size", "min_size", "recurrence", "region", "scheduled_action_name", "start_time", "time_zone"],
        },
      },
    }
    + block.withAutoscalingGroupName(autoscalingGroupName)
    + block.withScheduledActionName(scheduledActionName)
  ),
  withAutoscalingGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_group_name" expected to be of type "string"';
    {
      autoscaling_group_name: converted,
    }
  ),
  withDesiredCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_capacity" expected to be of type "number"';
    {
      desired_capacity: converted,
    }
  ),
  withEndTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_time" expected to be of type "string"';
    {
      end_time: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  withMinSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
    }
  ),
  withRecurrence(value):: (
    local converted = value;
    assert std.isString(converted) : '"recurrence" expected to be of type "string"';
    {
      recurrence: converted,
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
  withScheduledActionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"scheduled_action_name" expected to be of type "string"';
    {
      scheduled_action_name: converted,
    }
  ),
  withStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  withTimeZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_zone" expected to be of type "string"';
    {
      time_zone: converted,
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
