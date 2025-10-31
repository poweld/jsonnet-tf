{
  local block = self,
  new(terraformName, keyId, policy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kms_key_policy",
          type:: "resource",
          attributes:: ["bypass_policy_lockout_safety_check", "id", "key_id", "policy", "region"],
        },
      },
    }
    + block.withKeyId(keyId)
    + block.withPolicy(policy)
  ),
  withBypassPolicyLockoutSafetyCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bypass_policy_lockout_safety_check" expected to be of type "bool"';
    {
      bypass_policy_lockout_safety_check: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
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
