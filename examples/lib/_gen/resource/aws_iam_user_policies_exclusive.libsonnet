{
  local block = self,
  new(terraformName, policyNames, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_user_policies_exclusive",
          type:: "resource",
          attributes:: ["policy_names", "user_name"],
        },
      },
    }
    + block.withPolicyNames(policyNames)
    + block.withUserName(userName)
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
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
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
