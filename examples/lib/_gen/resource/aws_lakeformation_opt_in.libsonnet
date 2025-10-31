{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lakeformation_opt_in",
          type:: "resource",
          attributes:: ["last_modified", "last_updated_by", "region"],
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
  condition:: {
    local block = self,
    new():: (
      {}
    ),
  },
  principal:: {
    local block = self,
    new(dataLakePrincipalIdentifier):: (
      {}
      + block.withDataLakePrincipalIdentifier(dataLakePrincipalIdentifier)
    ),
    withDataLakePrincipalIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_lake_principal_identifier" expected to be of type "string"';
      {
        data_lake_principal_identifier: converted,
      }
    ),
  },
  resource_data:: {
    local block = self,
    new():: (
      {}
    ),
    catalog:: {
      local block = self,
      new():: (
        {}
      ),
      withId(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
    },
    data_cells_filter:: {
      local block = self,
      new():: (
        {}
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
      new(resourceArn):: (
        {}
        + block.withResourceArn(resourceArn)
      ),
      withCatalogId(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
        {
          catalog_id: converted,
        }
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
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
    lf_tag_expression:: {
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
      withExpression(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"expression" expected to be of type "list"';
        {
          expression: converted,
        }
      ),
      withExpressionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"expression" expected to be of type "list"';
        {
          expression+: converted,
        }
      ),
      withExpressionName(value):: (
        local converted = value;
        assert std.isString(converted) : '"expression_name" expected to be of type "string"';
        {
          expression_name: converted,
        }
      ),
      withResourceType(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_type" expected to be of type "string"';
        {
          resource_type: converted,
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
    withCatalog(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        catalog: value,
      }
    ),
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
    withLfTagExpression(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lf_tag_expression: value,
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
    withCatalogMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        catalog+: converted,
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
    withLfTagExpressionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lf_tag_expression+: converted,
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
  },
  withCondition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition: value,
    }
  ),
  withPrincipal(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      principal: value,
    }
  ),
  withResourceData(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_data: value,
    }
  ),
  withConditionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition+: converted,
    }
  ),
  withPrincipalMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      principal+: converted,
    }
  ),
  withResourceDataMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_data+: converted,
    }
  ),
}
