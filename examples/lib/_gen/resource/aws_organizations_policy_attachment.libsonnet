{
  local block = self,
  new(terraformName, policyId, targetId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_organizations_policy_attachment",
          type:: "resource",
          attributes:: ["id", "policy_id", "skip_destroy", "target_id"],
        },
      },
    }
    + block.withPolicyId(policyId)
    + block.withTargetId(targetId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  withTargetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_id" expected to be of type "string"';
    {
      target_id: converted,
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
