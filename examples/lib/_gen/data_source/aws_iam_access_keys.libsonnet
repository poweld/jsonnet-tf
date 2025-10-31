{
  local block = self,
  new(terraformName, user):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_access_keys",
          type:: "data",
          attributes:: ["access_keys", "id", "user"],
        },
      },
    }
    + block.withUser(user)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withUser(value):: (
    local converted = value;
    assert std.isString(converted) : '"user" expected to be of type "string"';
    {
      user: converted,
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
