{
  local block = self,
  new(terraformName, groupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_group",
          type:: "data",
          attributes:: ["arn", "group_id", "group_name", "id", "path", "users"],
        },
      },
    }
    + block.withGroupName(groupName)
  ),
  withGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
