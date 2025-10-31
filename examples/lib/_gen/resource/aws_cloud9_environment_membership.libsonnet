{
  local block = self,
  new(terraformName, environmentId, permissions, userArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloud9_environment_membership",
          type:: "resource",
          attributes:: ["environment_id", "id", "permissions", "region", "user_arn", "user_id"],
        },
      },
    }
    + block.withEnvironmentId(environmentId)
    + block.withPermissions(permissions)
    + block.withUserArn(userArn)
  ),
  withEnvironmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPermissions(value):: (
    local converted = value;
    assert std.isString(converted) : '"permissions" expected to be of type "string"';
    {
      permissions: converted,
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
  withUserArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_arn" expected to be of type "string"';
    {
      user_arn: converted,
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
