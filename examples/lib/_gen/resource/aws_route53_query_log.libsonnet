{
  local block = self,
  new(terraformName, cloudwatchLogGroupArn, zoneId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_query_log",
          type:: "resource",
          attributes:: ["arn", "cloudwatch_log_group_arn", "id", "zone_id"],
        },
      },
    }
    + block.withCloudwatchLogGroupArn(cloudwatchLogGroupArn)
    + block.withZoneId(zoneId)
  ),
  withCloudwatchLogGroupArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_log_group_arn" expected to be of type "string"';
    {
      cloudwatch_log_group_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
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
