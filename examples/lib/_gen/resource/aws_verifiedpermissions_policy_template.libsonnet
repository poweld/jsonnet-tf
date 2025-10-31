{
  local block = self,
  new(terraformName, policyStoreId, statement):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedpermissions_policy_template",
          type:: "resource",
          attributes:: ["created_date", "description", "id", "policy_store_id", "policy_template_id", "region", "statement"],
        },
      },
    }
    + block.withPolicyStoreId(policyStoreId)
    + block.withStatement(statement)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withPolicyStoreId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_store_id" expected to be of type "string"';
    {
      policy_store_id: converted,
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
  withStatement(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement" expected to be of type "string"';
    {
      statement: converted,
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
