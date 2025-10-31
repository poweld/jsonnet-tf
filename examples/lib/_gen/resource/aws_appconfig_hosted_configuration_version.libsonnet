{
  local block = self,
  new(terraformName, applicationId, configurationProfileId, content, contentType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appconfig_hosted_configuration_version",
          type:: "resource",
          attributes:: ["application_id", "arn", "configuration_profile_id", "content", "content_type", "description", "id", "region", "version_number"],
        },
      },
    }
    + block.withApplicationId(applicationId)
    + block.withConfigurationProfileId(configurationProfileId)
    + block.withContent(content)
    + block.withContentType(contentType)
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
  withContent(value):: (
    local converted = value;
    assert std.isString(converted) : '"content" expected to be of type "string"';
    {
      content: converted,
    }
  ),
  withContentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_type" expected to be of type "string"';
    {
      content_type: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
