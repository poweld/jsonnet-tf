{
  local block = self,
  new(terraformName, autoscalingGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscaling_group_tag",
          type:: "resource",
          attributes:: ["autoscaling_group_name", "id", "region"],
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
  tag:: {
    local block = self,
    new(key, propagateAtLaunch, value):: (
      {}
      + block.withKey(key)
      + block.withPropagateAtLaunch(propagateAtLaunch)
      + block.withValue(value)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withPropagateAtLaunch(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"propagate_at_launch" expected to be of type "bool"';
      {
        propagate_at_launch: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withTag(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag: value,
    }
  ),
  withTagMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag+: converted,
    }
  ),
}
