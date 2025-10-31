{
  local block = self,
  new(terraformName, autoscalingGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscaling_attachment",
          type:: "resource",
          attributes:: ["autoscaling_group_name", "elb", "id", "lb_target_group_arn", "region"],
        },
      },
    }
    + block.withAutoscalingGroupName(autoscalingGroupName)
  ),
  withAutoscalingGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_group_name" expected to be of type "string"';
    {
      autoscaling_group_name: converted,
    }
  ),
  withElb(value):: (
    local converted = value;
    assert std.isString(converted) : '"elb" expected to be of type "string"';
    {
      elb: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLbTargetGroupArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"lb_target_group_arn" expected to be of type "string"';
    {
      lb_target_group_arn: converted,
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
}
