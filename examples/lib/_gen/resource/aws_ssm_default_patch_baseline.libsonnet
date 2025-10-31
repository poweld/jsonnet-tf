{
  local block = self,
  new(terraformName, baselineId, operatingSystem):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_default_patch_baseline",
          type:: "resource",
          attributes:: ["baseline_id", "id", "operating_system", "region"],
        },
      },
    }
    + block.withBaselineId(baselineId)
    + block.withOperatingSystem(operatingSystem)
  ),
  withBaselineId(value):: (
    local converted = value;
    assert std.isString(converted) : '"baseline_id" expected to be of type "string"';
    {
      baseline_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withOperatingSystem(value):: (
    local converted = value;
    assert std.isString(converted) : '"operating_system" expected to be of type "string"';
    {
      operating_system: converted,
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
