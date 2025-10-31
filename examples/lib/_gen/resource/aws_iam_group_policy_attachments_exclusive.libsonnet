{
  local block = self,
  new(terraformName, groupName, policyArns):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_group_policy_attachments_exclusive",
          type:: "resource",
          attributes:: ["group_name", "policy_arns"],
        },
      },
    }
    + block.withGroupName(groupName)
    + block.withPolicyArns(policyArns)
  ),
  withGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
    }
  ),
  withPolicyArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
    {
      policy_arns: converted,
    }
  ),
  withPolicyArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
    {
      policy_arns+: converted,
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
