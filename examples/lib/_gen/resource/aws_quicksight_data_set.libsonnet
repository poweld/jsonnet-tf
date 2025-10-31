{
  local block = self,
  new(terraformName, dataSetId, importMode, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_data_set",
          type:: "resource",
          attributes:: ["arn", "aws_account_id", "data_set_id", "id", "import_mode", "name", "output_columns", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDataSetId(dataSetId)
    + block.withImportMode(importMode)
    + block.withName(name)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withDataSetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImportMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"import_mode" expected to be of type "string"';
    {
      import_mode: converted,
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
  column_groups:: {
    local block = self,
    new():: (
      {}
    ),
    geo_spatial_column_group:: {
      local block = self,
      new(columns, countryCode, name):: (
        {}
        + block.withColumns(columns)
        + block.withCountryCode(countryCode)
        + block.withName(name)
      ),
      withColumns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"columns" expected to be of type "list"';
        {
          columns: converted,
        }
      ),
      withColumnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"columns" expected to be of type "list"';
        {
          columns+: converted,
        }
      ),
      withCountryCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"country_code" expected to be of type "string"';
        {
          country_code: converted,
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
    withGeoSpatialColumnGroup(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_spatial_column_group: value,
      }
    ),
    withGeoSpatialColumnGroupMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_spatial_column_group+: converted,
      }
    ),
  },
  column_level_permission_rules:: {
    local block = self,
    new():: (
      {}
    ),
    withColumnNames(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"column_names" expected to be of type "list"';
      {
        column_names: converted,
      }
    ),
    withColumnNamesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"column_names" expected to be of type "list"';
      {
        column_names+: converted,
      }
    ),
    withPrincipals(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"principals" expected to be of type "list"';
      {
        principals: converted,
      }
    ),
    withPrincipalsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"principals" expected to be of type "list"';
      {
        principals+: converted,
      }
    ),
  },
  data_set_usage_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withDisableUseAsDirectQuerySource(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_use_as_direct_query_source" expected to be of type "bool"';
      {
        disable_use_as_direct_query_source: converted,
      }
    ),
    withDisableUseAsImportedSource(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_use_as_imported_source" expected to be of type "bool"';
      {
        disable_use_as_imported_source: converted,
      }
    ),
  },
  field_folders:: {
    local block = self,
    new(fieldFoldersId):: (
      {}
      + block.withFieldFoldersId(fieldFoldersId)
    ),
    withColumns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"columns" expected to be of type "list"';
      {
        columns: converted,
      }
    ),
    withColumnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"columns" expected to be of type "list"';
      {
        columns+: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withFieldFoldersId(value):: (
      local converted = value;
      assert std.isString(converted) : '"field_folders_id" expected to be of type "string"';
      {
        field_folders_id: converted,
      }
    ),
  },
  logical_table_map:: {
    local block = self,
    new(alias, logicalTableMapId):: (
      {}
      + block.withAlias(alias)
      + block.withLogicalTableMapId(logicalTableMapId)
    ),
    withAlias(value):: (
      local converted = value;
      assert std.isString(converted) : '"alias" expected to be of type "string"';
      {
        alias: converted,
      }
    ),
    withLogicalTableMapId(value):: (
      local converted = value;
      assert std.isString(converted) : '"logical_table_map_id" expected to be of type "string"';
      {
        logical_table_map_id: converted,
      }
    ),
    data_transforms:: {
      local block = self,
      new():: (
        {}
      ),
      cast_column_type_operation:: {
        local block = self,
        new(columnName, newColumnType):: (
          {}
          + block.withColumnName(columnName)
          + block.withNewColumnType(newColumnType)
        ),
        withColumnName(value):: (
          local converted = value;
          assert std.isString(converted) : '"column_name" expected to be of type "string"';
          {
            column_name: converted,
          }
        ),
        withFormat(value):: (
          local converted = value;
          assert std.isString(converted) : '"format" expected to be of type "string"';
          {
            format: converted,
          }
        ),
        withNewColumnType(value):: (
          local converted = value;
          assert std.isString(converted) : '"new_column_type" expected to be of type "string"';
          {
            new_column_type: converted,
          }
        ),
      },
      create_columns_operation:: {
        local block = self,
        new():: (
          {}
        ),
        columns:: {
          local block = self,
          new(columnId, columnName, expression):: (
            {}
            + block.withColumnId(columnId)
            + block.withColumnName(columnName)
            + block.withExpression(expression)
          ),
          withColumnId(value):: (
            local converted = value;
            assert std.isString(converted) : '"column_id" expected to be of type "string"';
            {
              column_id: converted,
            }
          ),
          withColumnName(value):: (
            local converted = value;
            assert std.isString(converted) : '"column_name" expected to be of type "string"';
            {
              column_name: converted,
            }
          ),
          withExpression(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression" expected to be of type "string"';
            {
              expression: converted,
            }
          ),
        },
        withColumns(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            columns: value,
          }
        ),
        withColumnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            columns+: converted,
          }
        ),
      },
      filter_operation:: {
        local block = self,
        new(conditionExpression):: (
          {}
          + block.withConditionExpression(conditionExpression)
        ),
        withConditionExpression(value):: (
          local converted = value;
          assert std.isString(converted) : '"condition_expression" expected to be of type "string"';
          {
            condition_expression: converted,
          }
        ),
      },
      project_operation:: {
        local block = self,
        new(projectedColumns):: (
          {}
          + block.withProjectedColumns(projectedColumns)
        ),
        withProjectedColumns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"projected_columns" expected to be of type "list"';
          {
            projected_columns: converted,
          }
        ),
        withProjectedColumnsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"projected_columns" expected to be of type "list"';
          {
            projected_columns+: converted,
          }
        ),
      },
      rename_column_operation:: {
        local block = self,
        new(columnName, newColumnName):: (
          {}
          + block.withColumnName(columnName)
          + block.withNewColumnName(newColumnName)
        ),
        withColumnName(value):: (
          local converted = value;
          assert std.isString(converted) : '"column_name" expected to be of type "string"';
          {
            column_name: converted,
          }
        ),
        withNewColumnName(value):: (
          local converted = value;
          assert std.isString(converted) : '"new_column_name" expected to be of type "string"';
          {
            new_column_name: converted,
          }
        ),
      },
      tag_column_operation:: {
        local block = self,
        new(columnName):: (
          {}
          + block.withColumnName(columnName)
        ),
        withColumnName(value):: (
          local converted = value;
          assert std.isString(converted) : '"column_name" expected to be of type "string"';
          {
            column_name: converted,
          }
        ),
        tags:: {
          local block = self,
          new():: (
            {}
          ),
          withColumnGeographicRole(value):: (
            local converted = value;
            assert std.isString(converted) : '"column_geographic_role" expected to be of type "string"';
            {
              column_geographic_role: converted,
            }
          ),
          column_description:: {
            local block = self,
            new():: (
              {}
            ),
            withText(value):: (
              local converted = value;
              assert std.isString(converted) : '"text" expected to be of type "string"';
              {
                text: converted,
              }
            ),
          },
          withColumnDescription(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              column_description: value,
            }
          ),
          withColumnDescriptionMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              column_description+: converted,
            }
          ),
        },
        withTags(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tags: value,
          }
        ),
        withTagsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tags+: converted,
          }
        ),
      },
      untag_column_operation:: {
        local block = self,
        new(columnName, tagNames):: (
          {}
          + block.withColumnName(columnName)
          + block.withTagNames(tagNames)
        ),
        withColumnName(value):: (
          local converted = value;
          assert std.isString(converted) : '"column_name" expected to be of type "string"';
          {
            column_name: converted,
          }
        ),
        withTagNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"tag_names" expected to be of type "list"';
          {
            tag_names: converted,
          }
        ),
        withTagNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"tag_names" expected to be of type "list"';
          {
            tag_names+: converted,
          }
        ),
      },
      withCastColumnTypeOperation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cast_column_type_operation: value,
        }
      ),
      withCreateColumnsOperation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          create_columns_operation: value,
        }
      ),
      withFilterOperation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter_operation: value,
        }
      ),
      withProjectOperation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          project_operation: value,
        }
      ),
      withRenameColumnOperation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rename_column_operation: value,
        }
      ),
      withTagColumnOperation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag_column_operation: value,
        }
      ),
      withUntagColumnOperation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          untag_column_operation: value,
        }
      ),
      withCastColumnTypeOperationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cast_column_type_operation+: converted,
        }
      ),
      withCreateColumnsOperationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          create_columns_operation+: converted,
        }
      ),
      withFilterOperationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          filter_operation+: converted,
        }
      ),
      withProjectOperationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          project_operation+: converted,
        }
      ),
      withRenameColumnOperationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rename_column_operation+: converted,
        }
      ),
      withTagColumnOperationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag_column_operation+: converted,
        }
      ),
      withUntagColumnOperationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          untag_column_operation+: converted,
        }
      ),
    },
    source:: {
      local block = self,
      new():: (
        {}
      ),
      withDataSetArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_set_arn" expected to be of type "string"';
        {
          data_set_arn: converted,
        }
      ),
      withPhysicalTableId(value):: (
        local converted = value;
        assert std.isString(converted) : '"physical_table_id" expected to be of type "string"';
        {
          physical_table_id: converted,
        }
      ),
      join_instruction:: {
        local block = self,
        new(leftOperand, onClause, rightOperand, type):: (
          {}
          + block.withLeftOperand(leftOperand)
          + block.withOnClause(onClause)
          + block.withRightOperand(rightOperand)
          + block.withType(type)
        ),
        withLeftOperand(value):: (
          local converted = value;
          assert std.isString(converted) : '"left_operand" expected to be of type "string"';
          {
            left_operand: converted,
          }
        ),
        withOnClause(value):: (
          local converted = value;
          assert std.isString(converted) : '"on_clause" expected to be of type "string"';
          {
            on_clause: converted,
          }
        ),
        withRightOperand(value):: (
          local converted = value;
          assert std.isString(converted) : '"right_operand" expected to be of type "string"';
          {
            right_operand: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        left_join_key_properties:: {
          local block = self,
          new():: (
            {}
          ),
          withUniqueKey(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"unique_key" expected to be of type "bool"';
            {
              unique_key: converted,
            }
          ),
        },
        right_join_key_properties:: {
          local block = self,
          new():: (
            {}
          ),
          withUniqueKey(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"unique_key" expected to be of type "bool"';
            {
              unique_key: converted,
            }
          ),
        },
        withLeftJoinKeyProperties(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            left_join_key_properties: value,
          }
        ),
        withRightJoinKeyProperties(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            right_join_key_properties: value,
          }
        ),
        withLeftJoinKeyPropertiesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            left_join_key_properties+: converted,
          }
        ),
        withRightJoinKeyPropertiesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            right_join_key_properties+: converted,
          }
        ),
      },
      withJoinInstruction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          join_instruction: value,
        }
      ),
      withJoinInstructionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          join_instruction+: converted,
        }
      ),
    },
    withDataTransforms(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_transforms: value,
      }
    ),
    withSource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source: value,
      }
    ),
    withDataTransformsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_transforms+: converted,
      }
    ),
    withSourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source+: converted,
      }
    ),
  },
  permissions:: {
    local block = self,
    new(actions, principal):: (
      {}
      + block.withActions(actions)
      + block.withPrincipal(principal)
    ),
    withActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions: converted,
      }
    ),
    withActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions+: converted,
      }
    ),
    withPrincipal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  physical_table_map:: {
    local block = self,
    new(physicalTableMapId):: (
      {}
      + block.withPhysicalTableMapId(physicalTableMapId)
    ),
    withPhysicalTableMapId(value):: (
      local converted = value;
      assert std.isString(converted) : '"physical_table_map_id" expected to be of type "string"';
      {
        physical_table_map_id: converted,
      }
    ),
    custom_sql:: {
      local block = self,
      new(dataSourceArn, name, sqlQuery):: (
        {}
        + block.withDataSourceArn(dataSourceArn)
        + block.withName(name)
        + block.withSqlQuery(sqlQuery)
      ),
      withDataSourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_source_arn" expected to be of type "string"';
        {
          data_source_arn: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withSqlQuery(value):: (
        local converted = value;
        assert std.isString(converted) : '"sql_query" expected to be of type "string"';
        {
          sql_query: converted,
        }
      ),
      columns:: {
        local block = self,
        new(name, type):: (
          {}
          + block.withName(name)
          + block.withType(type)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      withColumns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          columns: value,
        }
      ),
      withColumnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          columns+: converted,
        }
      ),
    },
    relational_table:: {
      local block = self,
      new(dataSourceArn, name):: (
        {}
        + block.withDataSourceArn(dataSourceArn)
        + block.withName(name)
      ),
      withCatalog(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog" expected to be of type "string"';
        {
          catalog: converted,
        }
      ),
      withDataSourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_source_arn" expected to be of type "string"';
        {
          data_source_arn: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withSchema(value):: (
        local converted = value;
        assert std.isString(converted) : '"schema" expected to be of type "string"';
        {
          schema: converted,
        }
      ),
      input_columns:: {
        local block = self,
        new(name, type):: (
          {}
          + block.withName(name)
          + block.withType(type)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      withInputColumns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_columns: value,
        }
      ),
      withInputColumnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_columns+: converted,
        }
      ),
    },
    s3_source:: {
      local block = self,
      new(dataSourceArn):: (
        {}
        + block.withDataSourceArn(dataSourceArn)
      ),
      withDataSourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_source_arn" expected to be of type "string"';
        {
          data_source_arn: converted,
        }
      ),
      input_columns:: {
        local block = self,
        new(name, type):: (
          {}
          + block.withName(name)
          + block.withType(type)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
      },
      upload_settings:: {
        local block = self,
        new():: (
          {}
        ),
        withContainsHeader(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"contains_header" expected to be of type "bool"';
          {
            contains_header: converted,
          }
        ),
        withDelimiter(value):: (
          local converted = value;
          assert std.isString(converted) : '"delimiter" expected to be of type "string"';
          {
            delimiter: converted,
          }
        ),
        withFormat(value):: (
          local converted = value;
          assert std.isString(converted) : '"format" expected to be of type "string"';
          {
            format: converted,
          }
        ),
        withStartFromRow(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"start_from_row" expected to be of type "number"';
          {
            start_from_row: converted,
          }
        ),
        withTextQualifier(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_qualifier" expected to be of type "string"';
          {
            text_qualifier: converted,
          }
        ),
      },
      withInputColumns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_columns: value,
        }
      ),
      withUploadSettings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          upload_settings: value,
        }
      ),
      withInputColumnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          input_columns+: converted,
        }
      ),
      withUploadSettingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          upload_settings+: converted,
        }
      ),
    },
    withCustomSql(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_sql: value,
      }
    ),
    withRelationalTable(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        relational_table: value,
      }
    ),
    withS3Source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_source: value,
      }
    ),
    withCustomSqlMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_sql+: converted,
      }
    ),
    withRelationalTableMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        relational_table+: converted,
      }
    ),
    withS3SourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_source+: converted,
      }
    ),
  },
  refresh_properties:: {
    local block = self,
    new():: (
      {}
    ),
    refresh_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      incremental_refresh:: {
        local block = self,
        new():: (
          {}
        ),
        lookback_window:: {
          local block = self,
          new(columnName, size, sizeUnit):: (
            {}
            + block.withColumnName(columnName)
            + block.withSize(size)
            + block.withSizeUnit(sizeUnit)
          ),
          withColumnName(value):: (
            local converted = value;
            assert std.isString(converted) : '"column_name" expected to be of type "string"';
            {
              column_name: converted,
            }
          ),
          withSize(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"size" expected to be of type "number"';
            {
              size: converted,
            }
          ),
          withSizeUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"size_unit" expected to be of type "string"';
            {
              size_unit: converted,
            }
          ),
        },
        withLookbackWindow(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lookback_window: value,
          }
        ),
        withLookbackWindowMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lookback_window+: converted,
          }
        ),
      },
      withIncrementalRefresh(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          incremental_refresh: value,
        }
      ),
      withIncrementalRefreshMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          incremental_refresh+: converted,
        }
      ),
    },
    withRefreshConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        refresh_configuration: value,
      }
    ),
    withRefreshConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        refresh_configuration+: converted,
      }
    ),
  },
  row_level_permission_data_set:: {
    local block = self,
    new(arn, permissionPolicy):: (
      {}
      + block.withArn(arn)
      + block.withPermissionPolicy(permissionPolicy)
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    withFormatVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"format_version" expected to be of type "string"';
      {
        format_version: converted,
      }
    ),
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    withPermissionPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"permission_policy" expected to be of type "string"';
      {
        permission_policy: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  row_level_permission_tag_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    tag_rules:: {
      local block = self,
      new(columnName, tagKey):: (
        {}
        + block.withColumnName(columnName)
        + block.withTagKey(tagKey)
      ),
      withColumnName(value):: (
        local converted = value;
        assert std.isString(converted) : '"column_name" expected to be of type "string"';
        {
          column_name: converted,
        }
      ),
      withMatchAllValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"match_all_value" expected to be of type "string"';
        {
          match_all_value: converted,
        }
      ),
      withTagKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"tag_key" expected to be of type "string"';
        {
          tag_key: converted,
        }
      ),
      withTagMultiValueDelimiter(value):: (
        local converted = value;
        assert std.isString(converted) : '"tag_multi_value_delimiter" expected to be of type "string"';
        {
          tag_multi_value_delimiter: converted,
        }
      ),
    },
    withTagRules(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_rules: value,
      }
    ),
    withTagRulesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_rules+: converted,
      }
    ),
  },
  withColumnGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      column_groups: value,
    }
  ),
  withColumnLevelPermissionRules(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      column_level_permission_rules: value,
    }
  ),
  withDataSetUsageConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_set_usage_configuration: value,
    }
  ),
  withFieldFolders(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      field_folders: value,
    }
  ),
  withLogicalTableMap(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logical_table_map: value,
    }
  ),
  withPermissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions: value,
    }
  ),
  withPhysicalTableMap(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      physical_table_map: value,
    }
  ),
  withRefreshProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      refresh_properties: value,
    }
  ),
  withRowLevelPermissionDataSet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      row_level_permission_data_set: value,
    }
  ),
  withRowLevelPermissionTagConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      row_level_permission_tag_configuration: value,
    }
  ),
  withColumnGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      column_groups+: converted,
    }
  ),
  withColumnLevelPermissionRulesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      column_level_permission_rules+: converted,
    }
  ),
  withDataSetUsageConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_set_usage_configuration+: converted,
    }
  ),
  withFieldFoldersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      field_folders+: converted,
    }
  ),
  withLogicalTableMapMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logical_table_map+: converted,
    }
  ),
  withPermissionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions+: converted,
    }
  ),
  withPhysicalTableMapMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      physical_table_map+: converted,
    }
  ),
  withRefreshPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      refresh_properties+: converted,
    }
  ),
  withRowLevelPermissionDataSetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      row_level_permission_data_set+: converted,
    }
  ),
  withRowLevelPermissionTagConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      row_level_permission_tag_configuration+: converted,
    }
  ),
}
