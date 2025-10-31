{
  local block = self,
  new(terraformName, roleName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_instance_profiles",
          type:: "data",
          attributes:: ["arns", "id", "names", "paths", "role_name"],
        },
      },
    }
    + block.withRoleName(roleName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withRoleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_name" expected to be of type "string"';
    {
      role_name: converted,
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
