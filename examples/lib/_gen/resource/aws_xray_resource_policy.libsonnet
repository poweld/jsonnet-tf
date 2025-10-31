{
  local block = self,
  new(terraformName, policyDocument, policyName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_xray_resource_policy",
          type:: "resource",
          attributes:: ["bypass_policy_lockout_check", "last_updated_time", "policy_document", "policy_name", "policy_revision_id", "region"],
        },
      },
    }
    + block.withPolicyDocument(policyDocument)
    + block.withPolicyName(policyName)
  ),
  withBypassPolicyLockoutCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bypass_policy_lockout_check" expected to be of type "bool"';
    {
      bypass_policy_lockout_check: converted,
    }
  ),
  withPolicyDocument(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_document" expected to be of type "string"';
    {
      policy_document: converted,
    }
  ),
  withPolicyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_name" expected to be of type "string"';
    {
      policy_name: converted,
    }
  ),
  withPolicyRevisionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_revision_id" expected to be of type "string"';
    {
      policy_revision_id: converted,
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
