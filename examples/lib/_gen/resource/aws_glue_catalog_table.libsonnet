{
  local block = self,
  new(terraformName, databaseName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_catalog_table",
          type:: "resource",
          attributes:: ["arn", "catalog_id", "database_name", "description", "id", "name", "owner", "parameters", "region", "retention", "table_type", "view_expanded_text", "view_original_text"],
        },
      },
    }
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
  withDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
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
  withOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner" expected to be of type "string"';
    {
      owner: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
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
  withRetention(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention" expected to be of type "number"';
    {
      retention: converted,
    }
  ),
  withTableType(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_type" expected to be of type "string"';
    {
      table_type: converted,
    }
  ),
  withViewExpandedText(value):: (
    local converted = value;
    assert std.isString(converted) : '"view_expanded_text" expected to be of type "string"';
    {
      view_expanded_text: converted,
    }
  ),
  withViewOriginalText(value):: (
    local converted = value;
    assert std.isString(converted) : '"view_original_text" expected to be of type "string"';
    {
      view_original_text: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  open_table_format_input:: {
    local block = self,
    new():: (
      {}
    ),
    iceberg_input:: {
      local block = self,
      new(metadataOperation):: (
        {}
        + block.withMetadataOperation(metadataOperation)
      ),
      withMetadataOperation(value):: (
        local converted = value;
        assert std.isString(converted) : '"metadata_operation" expected to be of type "string"';
        {
          metadata_operation: converted,
        }
      ),
      withVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"version" expected to be of type "string"';
        {
          version: converted,
        }
      ),
    },
    withIcebergInput(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iceberg_input: value,
      }
    ),
    withIcebergInputMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iceberg_input+: converted,
      }
    ),
  },
  partition_index:: {
    local block = self,
    new(indexName, keys):: (
      {}
      + block.withIndexName(indexName)
      + block.withKeys(keys)
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
  partition_keys:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withComment(value):: (
      local converted = value;
      assert std.isString(converted) : '"comment" expected to be of type "string"';
      {
        comment: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withParameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"parameters" expected to be of type "map"';
      {
        parameters: converted,
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
  storage_descriptor:: {
    local block = self,
    new():: (
      {}
    ),
    withAdditionalLocations(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"additional_locations" expected to be of type "list"';
      {
        additional_locations: converted,
      }
    ),
    withAdditionalLocationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"additional_locations" expected to be of type "list"';
      {
        additional_locations+: converted,
      }
    ),
    withBucketColumns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"bucket_columns" expected to be of type "list"';
      {
        bucket_columns: converted,
      }
    ),
    withBucketColumnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"bucket_columns" expected to be of type "list"';
      {
        bucket_columns+: converted,
      }
    ),
    withCompressed(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"compressed" expected to be of type "bool"';
      {
        compressed: converted,
      }
    ),
    withInputFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_format" expected to be of type "string"';
      {
        input_format: converted,
      }
    ),
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    withNumberOfBuckets(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"number_of_buckets" expected to be of type "number"';
      {
        number_of_buckets: converted,
      }
    ),
    withOutputFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"output_format" expected to be of type "string"';
      {
        output_format: converted,
      }
    ),
    withParameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"parameters" expected to be of type "map"';
      {
        parameters: converted,
      }
    ),
    withStoredAsSubDirectories(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"stored_as_sub_directories" expected to be of type "bool"';
      {
        stored_as_sub_directories: converted,
      }
    ),
    columns:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withComment(value):: (
        local converted = value;
        assert std.isString(converted) : '"comment" expected to be of type "string"';
        {
          comment: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withParameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"parameters" expected to be of type "map"';
        {
          parameters: converted,
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
    schema_reference:: {
      local block = self,
      new(schemaVersionNumber):: (
        {}
        + block.withSchemaVersionNumber(schemaVersionNumber)
      ),
      withSchemaVersionId(value):: (
        local converted = value;
        assert std.isString(converted) : '"schema_version_id" expected to be of type "string"';
        {
          schema_version_id: converted,
        }
      ),
      withSchemaVersionNumber(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"schema_version_number" expected to be of type "number"';
        {
          schema_version_number: converted,
        }
      ),
      schema_id:: {
        local block = self,
        new():: (
          {}
        ),
        withRegistryName(value):: (
          local converted = value;
          assert std.isString(converted) : '"registry_name" expected to be of type "string"';
          {
            registry_name: converted,
          }
        ),
        withSchemaArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"schema_arn" expected to be of type "string"';
          {
            schema_arn: converted,
          }
        ),
        withSchemaName(value):: (
          local converted = value;
          assert std.isString(converted) : '"schema_name" expected to be of type "string"';
          {
            schema_name: converted,
          }
        ),
      },
      withSchemaId(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema_id: value,
        }
      ),
      withSchemaIdMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema_id+: converted,
        }
      ),
    },
    ser_de_info:: {
      local block = self,
      new():: (
        {}
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withParameters(value):: (
        local converted = value;
        assert std.isObject(converted) : '"parameters" expected to be of type "map"';
        {
          parameters: converted,
        }
      ),
      withSerializationLibrary(value):: (
        local converted = value;
        assert std.isString(converted) : '"serialization_library" expected to be of type "string"';
        {
          serialization_library: converted,
        }
      ),
    },
    skewed_info:: {
      local block = self,
      new():: (
        {}
      ),
      withSkewedColumnNames(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"skewed_column_names" expected to be of type "list"';
        {
          skewed_column_names: converted,
        }
      ),
      withSkewedColumnNamesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"skewed_column_names" expected to be of type "list"';
        {
          skewed_column_names+: converted,
        }
      ),
      withSkewedColumnValueLocationMaps(value):: (
        local converted = value;
        assert std.isObject(converted) : '"skewed_column_value_location_maps" expected to be of type "map"';
        {
          skewed_column_value_location_maps: converted,
        }
      ),
      withSkewedColumnValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"skewed_column_values" expected to be of type "list"';
        {
          skewed_column_values: converted,
        }
      ),
      withSkewedColumnValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"skewed_column_values" expected to be of type "list"';
        {
          skewed_column_values+: converted,
        }
      ),
    },
    sort_columns:: {
      local block = self,
      new(column, sortOrder):: (
        {}
        + block.withColumn(column)
        + block.withSortOrder(sortOrder)
      ),
      withColumn(value):: (
        local converted = value;
        assert std.isString(converted) : '"column" expected to be of type "string"';
        {
          column: converted,
        }
      ),
      withSortOrder(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"sort_order" expected to be of type "number"';
        {
          sort_order: converted,
        }
      ),
    },
    withColumns(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        columns: value,
      }
    ),
    withSchemaReference(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema_reference: value,
      }
    ),
    withSerDeInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ser_de_info: value,
      }
    ),
    withSkewedInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        skewed_info: value,
      }
    ),
    withSortColumns(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sort_columns: value,
      }
    ),
    withColumnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        columns+: converted,
      }
    ),
    withSchemaReferenceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schema_reference+: converted,
      }
    ),
    withSerDeInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ser_de_info+: converted,
      }
    ),
    withSkewedInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        skewed_info+: converted,
      }
    ),
    withSortColumnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sort_columns+: converted,
      }
    ),
  },
  target_table:: {
    local block = self,
    new(catalogId, databaseName, name):: (
      {}
      + block.withCatalogId(catalogId)
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
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  withOpenTableFormatInput(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      open_table_format_input: value,
    }
  ),
  withPartitionIndex(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_index: value,
    }
  ),
  withPartitionKeys(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_keys: value,
    }
  ),
  withStorageDescriptor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_descriptor: value,
    }
  ),
  withTargetTable(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_table: value,
    }
  ),
  withOpenTableFormatInputMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      open_table_format_input+: converted,
    }
  ),
  withPartitionIndexMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_index+: converted,
    }
  ),
  withPartitionKeysMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      partition_keys+: converted,
    }
  ),
  withStorageDescriptorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_descriptor+: converted,
    }
  ),
  withTargetTableMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_table+: converted,
    }
  ),
}
