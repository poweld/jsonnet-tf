{
  local block = self,
  new(terraformName, groupName, policyNames):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_group_policies_exclusive",
          type:: "resource",
          attributes:: ["group_name", "policy_names"],
        },
      },
    }
    + block.withGroupName(groupName)
    + block.withPolicyNames(policyNames)
  ),
  withGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
    }
  ),
  withPolicyNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_names" expected to be of type "set"';
    {
      policy_names: converted,
    }
  ),
  withPolicyNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_names" expected to be of type "set"';
    {
      policy_names+: converted,
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
