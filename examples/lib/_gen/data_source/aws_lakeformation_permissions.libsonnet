{
  local block = self,
  new(terraformName, principal):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lakeformation_permissions",
          type:: "data",
          attributes:: ["catalog_id", "catalog_resource", "id", "permissions", "permissions_with_grant_option", "principal", "region"],
        },
      },
    }
    + block.withPrincipal(principal)
  ),
  withCatalogId(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  withCatalogResource(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"catalog_resource" expected to be of type "bool"';
    {
      catalog_resource: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
  data_cells_filter:: {
    local block = self,
    new(databaseName, name, tableCatalogId, tableName):: (
      {}
      + block.withDatabaseName(databaseName)
      + block.withName(name)
      + block.withTableCatalogId(tableCatalogId)
      + block.withTableName(tableName)
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
  },
  data_location:: {
    local block = self,
    new(arn):: (
      {}
      + block.withArn(arn)
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    withCatalogId(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
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
    new(key, values):: (
      {}
      + block.withKey(key)
      + block.withValues(values)
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
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  lf_tag_policy:: {
    local block = self,
    new(resourceType):: (
      {}
      + block.withResourceType(resourceType)
    ),
    withCatalogId(value):: (
      local converted = value;
      assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
      {
        catalog_id: converted,
      }
    ),
    withResourceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
    expression:: {
      local block = self,
      new(key, values):: (
        {}
        + block.withKey(key)
        + block.withValues(values)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    withExpression(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expression: value,
      }
    ),
    withExpressionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        expression+: converted,
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
  withDataCellsFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_cells_filter: value,
    }
  ),
  withDataLocation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_location: value,
    }
  ),
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
  withLfTagPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lf_tag_policy: value,
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
  withDataCellsFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_cells_filter+: converted,
    }
  ),
  withDataLocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_location+: converted,
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
  withLfTagPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lf_tag_policy+: converted,
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
