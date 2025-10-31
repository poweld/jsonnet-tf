{
  local block = self,
  new(terraformName, databaseName, tableName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_partition_index",
          type:: "resource",
          attributes:: ["catalog_id", "database_name", "id", "region", "table_name"],
        },
      },
    }
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
  withTableName(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_name" expected to be of type "string"';
    {
      table_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  partition_index:: {
    local block = self,
    new():: (
      {}
    ),
    withIndexName(value):: (
      local converted = value;
      assert std.isString(converted) : '"index_name" expected to be of type "string"';
      {
        index_name: converted,
      }
    ),
    withKeys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"keys" expected to be of type "list"';
      {
        keys: converted,
      }
    ),
    withKeysMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"keys" expected to be of type "list"';
      {
        keys+: converted,
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
  },
  withPartitionIndex(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_index: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withPartitionIndexMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_index+: converted,
    }
  ),
}
