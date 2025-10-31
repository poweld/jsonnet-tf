{
  local block = self,
  new(terraformName, securityControlId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_standards_control_associations",
          type:: "data",
          attributes:: ["id", "region", "security_control_id", "standards_control_associations"],
        },
      },
    }
    + block.withSecurityControlId(securityControlId)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
