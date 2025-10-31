{
  local block = self,
  new(terraformName, databaseName, partitionValues, tableName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_partition",
          type:: "resource",
          attributes:: ["catalog_id", "creation_time", "database_name", "id", "last_accessed_time", "last_analyzed_time", "parameters", "partition_values", "region", "table_name"],
        },
      },
    }
    + block.withDatabaseName(databaseName)
    + block.withPartitionValues(partitionValues)
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
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  withPartitionValues(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"partition_values" expected to be of type "list"';
    {
      partition_values: converted,
    }
  ),
  withPartitionValuesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"partition_values" expected to be of type "list"';
    {
      partition_values+: converted,
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
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
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
  withStorageDescriptor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_descriptor: value,
    }
  ),
  withStorageDescriptorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_descriptor+: converted,
    }
  ),
}
