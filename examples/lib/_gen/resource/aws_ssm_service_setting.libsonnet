{
  local block = self,
  new(terraformName, settingId, settingValue):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_service_setting",
          type:: "resource",
          attributes:: ["arn", "id", "region", "setting_id", "setting_value", "status"],
        },
      },
    }
    + block.withSettingId(settingId)
    + block.withSettingValue(settingValue)
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
  withSettingId(value):: (
    local converted = value;
    assert std.isString(converted) : '"setting_id" expected to be of type "string"';
    {
      setting_id: converted,
    }
  ),
  withSettingValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"setting_value" expected to be of type "string"';
    {
      setting_value: converted,
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
