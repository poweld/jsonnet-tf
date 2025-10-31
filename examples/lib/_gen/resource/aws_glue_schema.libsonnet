{
  local block = self,
  new(terraformName, compatibility, dataFormat, schemaDefinition, schemaName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_schema",
          type:: "resource",
          attributes:: ["arn", "compatibility", "data_format", "description", "id", "latest_schema_version", "next_schema_version", "region", "registry_arn", "registry_name", "schema_checkpoint", "schema_definition", "schema_name", "tags", "tags_all"],
        },
      },
    }
    + block.withCompatibility(compatibility)
    + block.withDataFormat(dataFormat)
    + block.withSchemaDefinition(schemaDefinition)
    + block.withSchemaName(schemaName)
  ),
  withCompatibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"compatibility" expected to be of type "string"';
    {
      compatibility: converted,
    }
  ),
  withDataFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_format" expected to be of type "string"';
    {
      data_format: converted,
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
  withRegistryArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_arn" expected to be of type "string"';
    {
      registry_arn: converted,
    }
  ),
  withSchemaDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema_definition" expected to be of type "string"';
    {
      schema_definition: converted,
    }
  ),
  withSchemaName(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema_name" expected to be of type "string"';
    {
      schema_name: converted,
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
