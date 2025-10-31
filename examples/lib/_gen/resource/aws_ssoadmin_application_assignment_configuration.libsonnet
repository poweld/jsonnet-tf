{
  local block = self,
  new(terraformName, applicationArn, assignmentRequired):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_application_assignment_configuration",
          type:: "resource",
          attributes:: ["application_arn", "assignment_required", "id", "region"],
        },
      },
    }
    + block.withApplicationArn(applicationArn)
    + block.withAssignmentRequired(assignmentRequired)
  ),
  withApplicationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_arn" expected to be of type "string"';
    {
      application_arn: converted,
    }
  ),
  withAssignmentRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assignment_required" expected to be of type "bool"';
    {
      assignment_required: converted,
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
