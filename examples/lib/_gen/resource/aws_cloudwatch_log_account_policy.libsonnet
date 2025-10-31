{
  local block = self,
  new(terraformName, policyDocument, policyName, policyType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_account_policy",
          type:: "resource",
          attributes:: ["id", "policy_document", "policy_name", "policy_type", "region", "scope", "selection_criteria"],
        },
      },
    }
    + block.withPolicyDocument(policyDocument)
    + block.withPolicyName(policyName)
    + block.withPolicyType(policyType)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withPolicyType(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_type" expected to be of type "string"';
    {
      policy_type: converted,
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
  withScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
    }
  ),
  withSelectionCriteria(value):: (
    local converted = value;
    assert std.isString(converted) : '"selection_criteria" expected to be of type "string"';
    {
      selection_criteria: converted,
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
