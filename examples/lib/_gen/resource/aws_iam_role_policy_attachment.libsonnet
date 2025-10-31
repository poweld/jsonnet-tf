{
  local block = self,
  new(terraformName, policyArn, role):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_role_policy_attachment",
          type:: "resource",
          attributes:: ["id", "policy_arn", "role"],
        },
      },
    }
    + block.withPolicyArn(policyArn)
    + block.withRole(role)
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
  withRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
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
