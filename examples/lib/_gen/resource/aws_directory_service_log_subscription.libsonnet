{
  local block = self,
  new(terraformName, directoryId, logGroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_directory_service_log_subscription",
          type:: "resource",
          attributes:: ["directory_id", "id", "log_group_name", "region"],
        },
      },
    }
    + block.withDirectoryId(directoryId)
    + block.withLogGroupName(logGroupName)
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
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
