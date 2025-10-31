{
  local block = self,
  new(terraformName, planId, selectionId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_selection",
          type:: "data",
          attributes:: ["iam_role_arn", "id", "name", "plan_id", "region", "resources", "selection_id"],
        },
      },
    }
    + block.withPlanId(planId)
    + block.withSelectionId(selectionId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPlanId(value):: (
    local converted = value;
    assert std.isString(converted) : '"plan_id" expected to be of type "string"';
    {
      plan_id: converted,
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
  withSelectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"selection_id" expected to be of type "string"';
    {
      selection_id: converted,
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
