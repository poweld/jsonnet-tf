{
  local block = self,
  new(terraformName, name, ruleset):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_data_quality_ruleset",
          type:: "resource",
          attributes:: ["arn", "created_on", "description", "id", "last_modified_on", "name", "recommendation_run_id", "region", "ruleset", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withRuleset(ruleset)
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withRuleset(value):: (
    local converted = value;
    assert std.isString(converted) : '"ruleset" expected to be of type "string"';
    {
      ruleset: converted,
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
  target_table:: {
    local block = self,
    new(databaseName, tableName):: (
      {}
      + block.withDatabaseName(databaseName)
      + block.withTableName(tableName)
    ),
    withCatalogId(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    withDatabaseName(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    withTableName(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
  },
  withTargetTable(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_table: value,
    }
  ),
  withTargetTableMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_table+: converted,
    }
  ),
}
