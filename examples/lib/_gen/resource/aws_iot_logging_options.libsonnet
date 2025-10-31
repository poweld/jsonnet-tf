{
  local block = self,
  new(terraformName, defaultLogLevel, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_logging_options",
          type:: "resource",
          attributes:: ["default_log_level", "disable_all_logs", "id", "region", "role_arn"],
        },
      },
    }
    + block.withDefaultLogLevel(defaultLogLevel)
    + block.withRoleArn(roleArn)
  ),
  withDefaultLogLevel(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_log_level" expected to be of type "string"';
    {
      default_log_level: converted,
    }
  ),
  withDisableAllLogs(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_all_logs" expected to be of type "bool"';
    {
      disable_all_logs: converted,
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
