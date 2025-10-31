{
  local block = self,
  new(terraformName, allowedColumns, analysisMethod, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cleanrooms_configured_table",
          type:: "resource",
          attributes:: ["allowed_columns", "analysis_method", "arn", "create_time", "description", "id", "name", "region", "tags", "tags_all", "update_time"],
        },
      },
    }
    + block.withAllowedColumns(allowedColumns)
    + block.withAnalysisMethod(analysisMethod)
    + block.withName(name)
  ),
  withAllowedColumns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_columns" expected to be of type "set"';
    {
      allowed_columns: converted,
    }
  ),
  withAllowedColumnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_columns" expected to be of type "set"';
    {
      allowed_columns+: converted,
    }
  ),
  withAnalysisMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"analysis_method" expected to be of type "string"';
    {
      analysis_method: converted,
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
  table_reference:: {
    local block = self,
    new(databaseName, tableName):: (
      {}
      + block.withDatabaseName(databaseName)
      + block.withTableName(tableName)
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTableReference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_reference: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTableReferenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_reference+: converted,
    }
  ),
}
