{
  local block = self,
  new(terraformName, studioLifecycleConfigAppType, studioLifecycleConfigContent, studioLifecycleConfigName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_studio_lifecycle_config",
          type:: "resource",
          attributes:: ["arn", "id", "region", "studio_lifecycle_config_app_type", "studio_lifecycle_config_content", "studio_lifecycle_config_name", "tags", "tags_all"],
        },
      },
    }
    + block.withStudioLifecycleConfigAppType(studioLifecycleConfigAppType)
    + block.withStudioLifecycleConfigContent(studioLifecycleConfigContent)
    + block.withStudioLifecycleConfigName(studioLifecycleConfigName)
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
  withStudioLifecycleConfigAppType(value):: (
    local converted = value;
    assert std.isString(converted) : '"studio_lifecycle_config_app_type" expected to be of type "string"';
    {
      studio_lifecycle_config_app_type: converted,
    }
  ),
  withStudioLifecycleConfigContent(value):: (
    local converted = value;
    assert std.isString(converted) : '"studio_lifecycle_config_content" expected to be of type "string"';
    {
      studio_lifecycle_config_content: converted,
    }
  ),
  withStudioLifecycleConfigName(value):: (
    local converted = value;
    assert std.isString(converted) : '"studio_lifecycle_config_name" expected to be of type "string"';
    {
      studio_lifecycle_config_name: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
