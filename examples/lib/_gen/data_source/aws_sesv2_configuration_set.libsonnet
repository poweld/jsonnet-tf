{
  local block = self,
  new(terraformName, configurationSetName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sesv2_configuration_set",
          type:: "data",
          attributes:: ["arn", "configuration_set_name", "delivery_options", "id", "region", "reputation_options", "sending_options", "suppression_options", "tags", "tracking_options", "vdm_options"],
        },
      },
    }
    + block.withConfigurationSetName(configurationSetName)
  ),
  withConfigurationSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_set_name" expected to be of type "string"';
    {
      configuration_set_name: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
