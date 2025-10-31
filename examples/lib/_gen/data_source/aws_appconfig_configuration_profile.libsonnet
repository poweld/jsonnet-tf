{
  local block = self,
  new(terraformName, applicationId, configurationProfileId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appconfig_configuration_profile",
          type:: "data",
          attributes:: ["application_id", "arn", "configuration_profile_id", "description", "id", "kms_key_identifier", "location_uri", "name", "region", "retrieval_role_arn", "tags", "type", "validator"],
        },
      },
    }
    + block.withApplicationId(applicationId)
    + block.withConfigurationProfileId(configurationProfileId)
  ),
  withApplicationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  withConfigurationProfileId(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_profile_id" expected to be of type "string"';
    {
      configuration_profile_id: converted,
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
