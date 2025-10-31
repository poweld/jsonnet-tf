{
  local block = self,
  new(terraformName, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_ml_transform",
          type:: "resource",
          attributes:: ["arn", "description", "glue_version", "id", "label_count", "max_capacity", "max_retries", "name", "number_of_workers", "region", "role_arn", "schema", "tags", "tags_all", "timeout", "worker_type"],
        },
      },
    }
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withGlueVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"glue_version" expected to be of type "string"';
    {
      glue_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
    {
      max_capacity: converted,
    }
  ),
  withMaxRetries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
    {
      max_retries: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNumberOfWorkers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_workers" expected to be of type "number"';
    {
      number_of_workers: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  withTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
    {
      timeout: converted,
    }
  ),
  withWorkerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"worker_type" expected to be of type "string"';
    {
      worker_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  input_record_tables:: {
    local block = self,
    new(databaseName, tableName):: (
      {}
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
    withTableName(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_name" expected to be of type "string"';
      {
        table_name: converted,
      }
    ),
  },
  parameters:: {
    local block = self,
    new(transformType):: (
      {}
      + block.withTransformType(transformType)
    ),
    withTransformType(value):: (
      local converted = value;
      assert std.isString(converted) : '"transform_type" expected to be of type "string"';
      {
        transform_type: converted,
      }
    ),
    find_matches_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      withAccuracyCostTradeOff(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"accuracy_cost_trade_off" expected to be of type "number"';
        {
          accuracy_cost_trade_off: converted,
        }
      ),
      withEnforceProvidedLabels(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enforce_provided_labels" expected to be of type "bool"';
        {
          enforce_provided_labels: converted,
        }
      ),
      withPrecisionRecallTradeOff(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"precision_recall_trade_off" expected to be of type "number"';
        {
          precision_recall_trade_off: converted,
        }
      ),
      withPrimaryKeyColumnName(value):: (
        local converted = value;
        assert std.isString(converted) : '"primary_key_column_name" expected to be of type "string"';
        {
          primary_key_column_name: converted,
        }
      ),
    },
    withFindMatchesParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        find_matches_parameters: value,
      }
    ),
    withFindMatchesParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        find_matches_parameters+: converted,
      }
    ),
  },
  withInputRecordTables(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_record_tables: value,
    }
  ),
  withParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters: value,
    }
  ),
  withInputRecordTablesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_record_tables+: converted,
    }
  ),
  withParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters+: converted,
    }
  ),
}
