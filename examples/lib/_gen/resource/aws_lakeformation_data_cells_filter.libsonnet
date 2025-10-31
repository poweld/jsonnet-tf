{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lakeformation_data_cells_filter",
          type:: "resource",
          attributes:: ["id", "region"],
        },
      },
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
  table_data:: {
    local block = self,
    new(databaseName, name, tableCatalogId, tableName):: (
      {}
      + block.withDatabaseName(databaseName)
      + block.withName(name)
      + block.withTableCatalogId(tableCatalogId)
      + block.withTableName(tableName)
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
    withTableCatalogId(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_catalog_id" expected to be of type "string"';
      {
        table_catalog_id: converted,
      }
    ),
    withTableName(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
    withVersionId(value):: (
      local converted = value;
      assert std.isString(converted) : '"version_id" expected to be of type "string"';
      {
        version_id: converted,
      }
    ),
    column_wildcard:: {
      local block = self,
      new():: (
        {}
      ),
      withExcludedColumnNames(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"excluded_column_names" expected to be of type "list"';
        {
          excluded_column_names: converted,
        }
      ),
      withExcludedColumnNamesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"excluded_column_names" expected to be of type "list"';
        {
          excluded_column_names+: converted,
        }
      ),
    },
    row_filter:: {
      local block = self,
      new():: (
        {}
      ),
      withFilterExpression(value):: (
        local converted = value;
        assert std.isString(converted) : '"filter_expression" expected to be of type "string"';
        {
          filter_expression: converted,
        }
      ),
      all_rows_wildcard:: {
        local block = self,
        new():: (
          {}
        ),
      },
      withAllRowsWildcard(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          all_rows_wildcard: value,
        }
      ),
      withAllRowsWildcardMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          all_rows_wildcard+: converted,
        }
      ),
    },
    withColumnWildcard(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column_wildcard: value,
      }
    ),
    withRowFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        row_filter: value,
      }
    ),
    withColumnWildcardMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column_wildcard+: converted,
      }
    ),
    withRowFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        row_filter+: converted,
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
  },
  withTableData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_data: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTableDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      table_data+: converted,
    }
  ),
}
