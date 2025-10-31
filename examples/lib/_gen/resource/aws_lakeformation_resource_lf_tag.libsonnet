{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lakeformation_resource_lf_tag",
          type:: "resource",
          attributes:: ["catalog_id", "id", "region"],
        },
      },
    }
  ),
  withCatalogId(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
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
  database:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withCatalogId(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  lf_tag:: {
    local block = self,
    new(key, value):: (
      {}
      + block.withKey(key)
      + block.withValue(value)
    ),
    withCatalogId(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  table:: {
    local block = self,
    new(databaseName):: (
      {}
      + block.withDatabaseName(databaseName)
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
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withWildcard(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"wildcard" expected to be of type "bool"';
      {
        wildcard: converted,
      }
    ),
  },
  table_with_columns:: {
    local block = self,
    new(databaseName, name):: (
      {}
      + block.withDatabaseName(databaseName)
      + block.withName(name)
    ),
    withCatalogId(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    withColumnNames(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"column_names" expected to be of type "set"';
      {
        column_names: converted,
      }
    ),
    withColumnNamesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"column_names" expected to be of type "set"';
      {
        column_names+: converted,
      }
    ),
    withDatabaseName(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    column_wildcard:: {
      local block = self,
      new():: (
        {}
      ),
      withExcludedColumnNames(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_column_names" expected to be of type "set"';
        {
          excluded_column_names: converted,
        }
      ),
      withExcludedColumnNamesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_column_names" expected to be of type "set"';
        {
          excluded_column_names+: converted,
        }
      ),
    },
    withColumnWildcard(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column_wildcard: value,
      }
    ),
    withColumnWildcardMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column_wildcard+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withDatabase(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      database: value,
    }
  ),
  withLfTag(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lf_tag: value,
    }
  ),
  withTable(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table: value,
    }
  ),
  withTableWithColumns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_with_columns: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDatabaseMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      database+: converted,
    }
  ),
  withLfTagMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lf_tag+: converted,
    }
  ),
  withTableMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table+: converted,
    }
  ),
  withTableWithColumnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_with_columns+: converted,
    }
  ),
}
