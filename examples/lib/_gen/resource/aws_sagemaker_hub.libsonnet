{
  local block = self,
  new(terraformName, hubDescription, hubName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_hub",
          type:: "resource",
          attributes:: ["arn", "hub_description", "hub_display_name", "hub_name", "hub_search_keywords", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withHubDescription(hubDescription)
    + block.withHubName(hubName)
  ),
  withHubDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"hub_description" expected to be of type "string"';
    {
      hub_description: converted,
    }
  ),
  withHubDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"hub_display_name" expected to be of type "string"';
    {
      hub_display_name: converted,
    }
  ),
  withHubName(value):: (
    local converted = value;
    assert std.isString(converted) : '"hub_name" expected to be of type "string"';
    {
      hub_name: converted,
    }
  ),
  withHubSearchKeywords(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hub_search_keywords" expected to be of type "set"';
    {
      hub_search_keywords: converted,
    }
  ),
  withHubSearchKeywordsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"hub_search_keywords" expected to be of type "set"';
    {
      hub_search_keywords+: converted,
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
  s3_storage_config:: {
    local block = self,
    new():: (
      {}
    ),
    withS3OutputPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_output_path" expected to be of type "string"';
      {
        s3_output_path: converted,
      }
    ),
  },
  withS3StorageConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_storage_config: value,
    }
  ),
  withS3StorageConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_storage_config+: converted,
    }
  ),
}
