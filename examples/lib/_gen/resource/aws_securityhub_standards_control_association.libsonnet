{
  local block = self,
  new(terraformName, associationStatus, securityControlId, standardsArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_standards_control_association",
          type:: "resource",
          attributes:: ["association_status", "id", "region", "security_control_id", "standards_arn", "updated_reason"],
        },
      },
    }
    + block.withAssociationStatus(associationStatus)
    + block.withSecurityControlId(securityControlId)
    + block.withStandardsArn(standardsArn)
  ),
  withAssociationStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_status" expected to be of type "string"';
    {
      association_status: converted,
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
  withSecurityControlId(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_control_id" expected to be of type "string"';
    {
      security_control_id: converted,
    }
  ),
  withStandardsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"standards_arn" expected to be of type "string"';
    {
      standards_arn: converted,
    }
  ),
  withUpdatedReason(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_reason" expected to be of type "string"';
    {
      updated_reason: converted,
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
