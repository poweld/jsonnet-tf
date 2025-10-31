{
  local block = self,
  new(terraformName, policy, resourceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dynamodb_resource_policy",
          type:: "resource",
          attributes:: ["confirm_remove_self_resource_access", "id", "policy", "region", "resource_arn", "revision_id"],
        },
      },
    }
    + block.withPolicy(policy)
    + block.withResourceArn(resourceArn)
  ),
  withConfirmRemoveSelfResourceAccess(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"confirm_remove_self_resource_access" expected to be of type "bool"';
    {
      confirm_remove_self_resource_access: converted,
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
  withResourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
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
