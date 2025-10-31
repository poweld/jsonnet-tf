{
  local block = self,
  new(terraformName, policyArns, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_user_policy_attachments_exclusive",
          type:: "resource",
          attributes:: ["policy_arns", "user_name"],
        },
      },
    }
    + block.withPolicyArns(policyArns)
    + block.withUserName(userName)
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
