{
  local block = self,
  new(terraformName, autoScalingConfigurationName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apprunner_auto_scaling_configuration_version",
          type:: "resource",
          attributes:: ["arn", "auto_scaling_configuration_name", "auto_scaling_configuration_revision", "has_associated_service", "id", "is_default", "latest", "max_concurrency", "max_size", "min_size", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withAutoScalingConfigurationName(autoScalingConfigurationName)
  ),
  withAutoScalingConfigurationName(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_scaling_configuration_name" expected to be of type "string"';
    {
      auto_scaling_configuration_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxConcurrency(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_concurrency" expected to be of type "number"';
    {
      max_concurrency: converted,
    }
  ),
  withMaxSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  withMinSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
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
