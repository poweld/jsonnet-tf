{
  local block = self,
  new(terraformName, fileSystemId, policy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_efs_file_system_policy",
          type:: "resource",
          attributes:: ["bypass_policy_lockout_safety_check", "file_system_id", "id", "policy", "region"],
        },
      },
    }
    + block.withFileSystemId(fileSystemId)
    + block.withPolicy(policy)
  ),
  withBypassPolicyLockoutSafetyCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bypass_policy_lockout_safety_check" expected to be of type "bool"';
    {
      bypass_policy_lockout_safety_check: converted,
    }
  ),
  withFileSystemId(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
