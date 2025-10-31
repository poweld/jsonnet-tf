{
  local block = self,
  new(terraformName, applicationArn, principalId, principalType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_application_assignment",
          type:: "resource",
          attributes:: ["application_arn", "id", "principal_id", "principal_type", "region"],
        },
      },
    }
    + block.withApplicationArn(applicationArn)
    + block.withPrincipalId(principalId)
    + block.withPrincipalType(principalType)
  ),
  withApplicationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_arn" expected to be of type "string"';
    {
      application_arn: converted,
    }
  ),
  withPrincipalId(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_id" expected to be of type "string"';
    {
      principal_id: converted,
    }
  ),
  withPrincipalType(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_type" expected to be of type "string"';
    {
      principal_type: converted,
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
