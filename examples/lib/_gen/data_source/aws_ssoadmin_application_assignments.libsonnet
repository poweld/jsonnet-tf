{
  local block = self,
  new(terraformName, applicationArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_application_assignments",
          type:: "data",
          attributes:: ["application_arn", "application_assignments", "id", "region"],
        },
      },
    }
    + block.withApplicationArn(applicationArn)
  ),
  withApplicationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_arn" expected to be of type "string"';
    {
      application_arn: converted,
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
