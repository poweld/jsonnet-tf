{
  local block = self,
  new(terraformName, catalogId, databaseName, tableName, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_catalog_table_optimizer",
          type:: "resource",
          attributes:: ["catalog_id", "database_name", "region", "table_name", "type"],
        },
      },
    }
    + block.withCatalogId(catalogId)
    + block.withDatabaseName(databaseName)
    + block.withTableName(tableName)
    + block.withType(type)
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new(enabled, roleArn):: (
      {}
      + block.withEnabled(enabled)
      + block.withRoleArn(roleArn)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    orphan_file_deletion_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      iceberg_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withLocation(value):: (
          local converted = value;
          assert std.isString(converted) : '"location" expected to be of type "string"';
          {
            location: converted,
          }
        ),
        withOrphanFileRetentionPeriodInDays(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"orphan_file_retention_period_in_days" expected to be of type "number"';
          {
            orphan_file_retention_period_in_days: converted,
          }
        ),
        withRunRateInHours(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"run_rate_in_hours" expected to be of type "number"';
          {
            run_rate_in_hours: converted,
          }
        ),
      },
      withIcebergConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iceberg_configuration: value,
        }
      ),
      withIcebergConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iceberg_configuration+: converted,
        }
      ),
    },
    retention_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      iceberg_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        withCleanExpiredFiles(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"clean_expired_files" expected to be of type "bool"';
          {
            clean_expired_files: converted,
          }
        ),
        withNumberOfSnapshotsToRetain(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"number_of_snapshots_to_retain" expected to be of type "number"';
          {
            number_of_snapshots_to_retain: converted,
          }
        ),
        withRunRateInHours(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"run_rate_in_hours" expected to be of type "number"';
          {
            run_rate_in_hours: converted,
          }
        ),
        withSnapshotRetentionPeriodInDays(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"snapshot_retention_period_in_days" expected to be of type "number"';
          {
            snapshot_retention_period_in_days: converted,
          }
        ),
      },
      withIcebergConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iceberg_configuration: value,
        }
      ),
      withIcebergConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iceberg_configuration+: converted,
        }
      ),
    },
    withOrphanFileDeletionConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        orphan_file_deletion_configuration: value,
      }
    ),
    withRetentionConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retention_configuration: value,
      }
    ),
    withOrphanFileDeletionConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        orphan_file_deletion_configuration+: converted,
      }
    ),
    withRetentionConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retention_configuration+: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
