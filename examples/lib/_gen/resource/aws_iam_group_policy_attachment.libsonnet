{
  local block = self,
  new(terraformName, group, policyArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_group_policy_attachment",
          type:: "resource",
          attributes:: ["group", "id", "policy_arn"],
        },
      },
    }
    + block.withGroup(group)
    + block.withPolicyArn(policyArn)
  ),
  withGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"group" expected to be of type "string"';
    {
      group: converted,
    }
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
