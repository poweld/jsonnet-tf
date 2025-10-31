{
  local block = self,
  new(terraformName, policyArns, roleName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_role_policy_attachments_exclusive",
          type:: "resource",
          attributes:: ["policy_arns", "role_name"],
        },
      },
    }
    + block.withPolicyArns(policyArns)
    + block.withRoleName(roleName)
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
