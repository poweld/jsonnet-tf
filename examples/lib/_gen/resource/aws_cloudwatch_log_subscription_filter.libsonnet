{
  local block = self,
  new(terraformName, destinationArn, filterPattern, logGroupName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_subscription_filter",
          type:: "resource",
          attributes:: ["destination_arn", "distribution", "filter_pattern", "id", "log_group_name", "name", "region", "role_arn"],
        },
      },
    }
    + block.withDestinationArn(destinationArn)
    + block.withFilterPattern(filterPattern)
    + block.withLogGroupName(logGroupName)
    + block.withName(name)
  ),
  withDestinationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
    {
      destination_arn: converted,
    }
  ),
  withDistribution(value):: (
    local converted = value;
    assert std.isString(converted) : '"distribution" expected to be of type "string"';
    {
      distribution: converted,
    }
  ),
  withFilterPattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_pattern" expected to be of type "string"';
    {
      filter_pattern: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLogGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
    {
      log_group_name: converted,
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
