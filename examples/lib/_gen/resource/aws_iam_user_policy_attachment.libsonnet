{
  local block = self,
  new(terraformName, policyArn, user):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_user_policy_attachment",
          type:: "resource",
          attributes:: ["id", "policy_arn", "user"],
        },
      },
    }
    + block.withPolicyArn(policyArn)
    + block.withUser(user)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_arn" expected to be of type "string"';
    {
      policy_arn: converted,
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
