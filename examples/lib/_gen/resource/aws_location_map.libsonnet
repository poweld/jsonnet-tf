{
  local block = self,
  new(terraformName, mapName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_location_map",
          type:: "resource",
          attributes:: ["create_time", "description", "id", "map_arn", "map_name", "region", "tags", "tags_all", "update_time"],
        },
      },
    }
    + block.withMapName(mapName)
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
  withMapName(value):: (
    local converted = value;
    assert std.isString(converted) : '"map_name" expected to be of type "string"';
    {
      map_name: converted,
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
  configuration:: {
    local block = self,
    new(style):: (
      {}
      + block.withStyle(style)
    ),
    withStyle(value):: (
      local converted = value;
      assert std.isString(converted) : '"style" expected to be of type "string"';
      {
        style: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
