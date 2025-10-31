{
  local block = self,
  new(terraformName, policyNames, roleName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_role_policies_exclusive",
          type:: "resource",
          attributes:: ["policy_names", "role_name"],
        },
      },
    }
    + block.withPolicyNames(policyNames)
    + block.withRoleName(roleName)
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
