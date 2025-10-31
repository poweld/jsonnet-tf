{
  local block = self,
  new(terraformName, dataSource, indexName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_location_place_index",
          type:: "resource",
          attributes:: ["create_time", "data_source", "description", "id", "index_arn", "index_name", "region", "tags", "tags_all", "update_time"],
        },
      },
    }
    + block.withDataSource(dataSource)
    + block.withIndexName(indexName)
  ),
  withDataSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_source" expected to be of type "string"';
    {
      data_source: converted,
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
  withIndexName(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_name" expected to be of type "string"';
    {
      index_name: converted,
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
  data_source_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withIntendedUse(value):: (
      local converted = value;
      assert std.isString(converted) : '"intended_use" expected to be of type "string"';
      {
        intended_use: converted,
      }
    ),
  },
  withDataSourceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_source_configuration: value,
    }
  ),
  withDataSourceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_source_configuration+: converted,
    }
  ),
}
