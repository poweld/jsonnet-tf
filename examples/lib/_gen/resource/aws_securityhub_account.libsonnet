{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securityhub_account",
          type:: "resource",
          attributes:: ["arn", "auto_enable_controls", "control_finding_generator", "enable_default_standards", "id", "region"],
        },
      },
    }
  ),
  withAutoEnableControls(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_enable_controls" expected to be of type "bool"';
    {
      auto_enable_controls: converted,
    }
  ),
  withControlFindingGenerator(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_finding_generator" expected to be of type "string"';
    {
      control_finding_generator: converted,
    }
  ),
  withEnableDefaultStandards(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_default_standards" expected to be of type "bool"';
    {
      enable_default_standards: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
