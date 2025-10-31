{
  local block = self,
  new(terraformName, assessmentId, controlSetId, roleArn, roleType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_auditmanager_assessment_delegation",
          type:: "resource",
          attributes:: ["assessment_id", "comment", "control_set_id", "delegation_id", "id", "region", "role_arn", "role_type", "status"],
        },
      },
    }
    + block.withAssessmentId(assessmentId)
    + block.withControlSetId(controlSetId)
    + block.withRoleArn(roleArn)
    + block.withRoleType(roleType)
  ),
  withAssessmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"assessment_id" expected to be of type "string"';
    {
      assessment_id: converted,
    }
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withControlSetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_set_id" expected to be of type "string"';
    {
      control_set_id: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withRoleType(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_type" expected to be of type "string"';
    {
      role_type: converted,
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
