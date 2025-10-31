{
  local block = self,
  new(terraformName, targetGroupArn, targetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lb_target_group_attachment",
          type:: "resource",
          attributes:: ["availability_zone", "id", "port", "region", "target_group_arn", "target_id"],
        },
      },
    }
    + block.withTargetGroupArn(targetGroupArn)
    + block.withTargetId(targetId)
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
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
  withTargetGroupArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_group_arn" expected to be of type "string"';
    {
      target_group_arn: converted,
    }
  ),
  withTargetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_id" expected to be of type "string"';
    {
      target_id: converted,
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
