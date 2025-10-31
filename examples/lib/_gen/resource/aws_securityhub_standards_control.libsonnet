{
  local block = self,
  new(terraformName, controlStatus, standardsControlArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_standards_control",
          type:: "resource",
          attributes:: ["control_id", "control_status", "control_status_updated_at", "description", "disabled_reason", "id", "region", "related_requirements", "remediation_url", "severity_rating", "standards_control_arn", "title"],
        },
      },
    }
    + block.withControlStatus(controlStatus)
    + block.withStandardsControlArn(standardsControlArn)
  ),
  withControlStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_status" expected to be of type "string"';
    {
      control_status: converted,
    }
  ),
  withDisabledReason(value):: (
    local converted = value;
    assert std.isString(converted) : '"disabled_reason" expected to be of type "string"';
    {
      disabled_reason: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withStandardsControlArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"standards_control_arn" expected to be of type "string"';
    {
      standards_control_arn: converted,
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
