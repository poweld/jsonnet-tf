{
  local block = self,
  new(terraformName, databaseName, name, role):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_crawler",
          type:: "resource",
          attributes:: ["arn", "classifiers", "configuration", "database_name", "description", "id", "name", "region", "role", "schedule", "security_configuration", "table_prefix", "tags", "tags_all"],
        },
      },
    }
    + block.withDatabaseName(databaseName)
    + block.withName(name)
    + block.withRole(role)
  ),
  withClassifiers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"classifiers" expected to be of type "list"';
    {
      classifiers: converted,
    }
  ),
  withClassifiersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"classifiers" expected to be of type "list"';
    {
      classifiers+: converted,
    }
  ),
  withConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration" expected to be of type "string"';
    {
      configuration: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  withSchedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  withSecurityConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
    {
      security_configuration: converted,
    }
  ),
  withTablePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_prefix" expected to be of type "string"';
    {
      table_prefix: converted,
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
  catalog_target:: {
    local block = self,
    new(databaseName, tables):: (
      {}
      + block.withDatabaseName(databaseName)
      + block.withTables(tables)
    ),
    withConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    withDatabaseName(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    withDlqEventQueueArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"dlq_event_queue_arn" expected to be of type "string"';
      {
        dlq_event_queue_arn: converted,
      }
    ),
    withEventQueueArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_queue_arn" expected to be of type "string"';
      {
        event_queue_arn: converted,
      }
    ),
    withTables(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tables" expected to be of type "list"';
      {
        tables: converted,
      }
    ),
    withTablesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"tables" expected to be of type "list"';
      {
        tables+: converted,
      }
    ),
  },
  delta_target:: {
    local block = self,
    new(deltaTables, writeManifest):: (
      {}
      + block.withDeltaTables(deltaTables)
      + block.withWriteManifest(writeManifest)
    ),
    withConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    withCreateNativeDeltaTable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"create_native_delta_table" expected to be of type "bool"';
      {
        create_native_delta_table: converted,
      }
    ),
    withDeltaTables(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delta_tables" expected to be of type "set"';
      {
        delta_tables: converted,
      }
    ),
    withDeltaTablesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delta_tables" expected to be of type "set"';
      {
        delta_tables+: converted,
      }
    ),
    withWriteManifest(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"write_manifest" expected to be of type "bool"';
      {
        write_manifest: converted,
      }
    ),
  },
  dynamodb_target:: {
    local block = self,
    new(path):: (
      {}
      + block.withPath(path)
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    withScanAll(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"scan_all" expected to be of type "bool"';
      {
        scan_all: converted,
      }
    ),
    withScanRate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scan_rate" expected to be of type "number"';
      {
        scan_rate: converted,
      }
    ),
  },
  hudi_target:: {
    local block = self,
    new(maximumTraversalDepth, paths):: (
      {}
      + block.withMaximumTraversalDepth(maximumTraversalDepth)
      + block.withPaths(paths)
    ),
    withConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    withExclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions: converted,
      }
    ),
    withExclusionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions+: converted,
      }
    ),
    withMaximumTraversalDepth(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_traversal_depth" expected to be of type "number"';
      {
        maximum_traversal_depth: converted,
      }
    ),
    withPaths(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
      {
        paths: converted,
      }
    ),
    withPathsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
      {
        paths+: converted,
      }
    ),
  },
  iceberg_target:: {
    local block = self,
    new(maximumTraversalDepth, paths):: (
      {}
      + block.withMaximumTraversalDepth(maximumTraversalDepth)
      + block.withPaths(paths)
    ),
    withConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    withExclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions: converted,
      }
    ),
    withExclusionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions+: converted,
      }
    ),
    withMaximumTraversalDepth(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_traversal_depth" expected to be of type "number"';
      {
        maximum_traversal_depth: converted,
      }
    ),
    withPaths(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
      {
        paths: converted,
      }
    ),
    withPathsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
      {
        paths+: converted,
      }
    ),
  },
  jdbc_target:: {
    local block = self,
    new(connectionName, path):: (
      {}
      + block.withConnectionName(connectionName)
      + block.withPath(path)
    ),
    withConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    withEnableAdditionalMetadata(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"enable_additional_metadata" expected to be of type "list"';
      {
        enable_additional_metadata: converted,
      }
    ),
    withEnableAdditionalMetadataMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"enable_additional_metadata" expected to be of type "list"';
      {
        enable_additional_metadata+: converted,
      }
    ),
    withExclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions: converted,
      }
    ),
    withExclusionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions+: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
  },
  lake_formation_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAccountId(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_id" expected to be of type "string"';
      {
        account_id: converted,
      }
    ),
    withUseLakeFormationCredentials(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_lake_formation_credentials" expected to be of type "bool"';
      {
        use_lake_formation_credentials: converted,
      }
    ),
  },
  lineage_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withCrawlerLineageSettings(value):: (
      local converted = value;
      assert std.isString(converted) : '"crawler_lineage_settings" expected to be of type "string"';
      {
        crawler_lineage_settings: converted,
      }
    ),
  },
  mongodb_target:: {
    local block = self,
    new(connectionName, path):: (
      {}
      + block.withConnectionName(connectionName)
      + block.withPath(path)
    ),
    withConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    withScanAll(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"scan_all" expected to be of type "bool"';
      {
        scan_all: converted,
      }
    ),
  },
  recrawl_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withRecrawlBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"recrawl_behavior" expected to be of type "string"';
      {
        recrawl_behavior: converted,
      }
    ),
  },
  s3_target:: {
    local block = self,
    new(path):: (
      {}
      + block.withPath(path)
    ),
    withConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"connection_name" expected to be of type "string"';
      {
        connection_name: converted,
      }
    ),
    withDlqEventQueueArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"dlq_event_queue_arn" expected to be of type "string"';
      {
        dlq_event_queue_arn: converted,
      }
    ),
    withEventQueueArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_queue_arn" expected to be of type "string"';
      {
        event_queue_arn: converted,
      }
    ),
    withExclusions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions: converted,
      }
    ),
    withExclusionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"exclusions" expected to be of type "list"';
      {
        exclusions+: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    withSampleSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"sample_size" expected to be of type "number"';
      {
        sample_size: converted,
      }
    ),
  },
  schema_change_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withDeleteBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete_behavior" expected to be of type "string"';
      {
        delete_behavior: converted,
      }
    ),
    withUpdateBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"update_behavior" expected to be of type "string"';
      {
        update_behavior: converted,
      }
    ),
  },
  withCatalogTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      catalog_target: value,
    }
  ),
  withDeltaTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delta_target: value,
    }
  ),
  withDynamodbTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb_target: value,
    }
  ),
  withHudiTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hudi_target: value,
    }
  ),
  withIcebergTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iceberg_target: value,
    }
  ),
  withJdbcTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jdbc_target: value,
    }
  ),
  withLakeFormationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lake_formation_configuration: value,
    }
  ),
  withLineageConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lineage_configuration: value,
    }
  ),
  withMongodbTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mongodb_target: value,
    }
  ),
  withRecrawlPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recrawl_policy: value,
    }
  ),
  withS3Target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_target: value,
    }
  ),
  withSchemaChangePolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema_change_policy: value,
    }
  ),
  withCatalogTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      catalog_target+: converted,
    }
  ),
  withDeltaTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      delta_target+: converted,
    }
  ),
  withDynamodbTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb_target+: converted,
    }
  ),
  withHudiTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hudi_target+: converted,
    }
  ),
  withIcebergTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iceberg_target+: converted,
    }
  ),
  withJdbcTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jdbc_target+: converted,
    }
  ),
  withLakeFormationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lake_formation_configuration+: converted,
    }
  ),
  withLineageConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lineage_configuration+: converted,
    }
  ),
  withMongodbTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mongodb_target+: converted,
    }
  ),
  withRecrawlPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recrawl_policy+: converted,
    }
  ),
  withS3TargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_target+: converted,
    }
  ),
  withSchemaChangePolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema_change_policy+: converted,
    }
  ),
}
