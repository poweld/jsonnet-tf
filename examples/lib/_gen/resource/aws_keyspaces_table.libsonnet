{
  local block = self,
  new(terraformName, keyspaceName, tableName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_keyspaces_table",
          type:: "resource",
          attributes:: ["arn", "default_time_to_live", "id", "keyspace_name", "region", "table_name", "tags", "tags_all"],
        },
      },
    }
    + block.withKeyspaceName(keyspaceName)
    + block.withTableName(tableName)
  ),
  withDefaultTimeToLive(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_time_to_live" expected to be of type "number"';
    {
      default_time_to_live: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyspaceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"keyspace_name" expected to be of type "string"';
    {
      keyspace_name: converted,
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
  capacity_specification:: {
    local block = self,
    new():: (
      {}
    ),
    withReadCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"read_capacity_units" expected to be of type "number"';
      {
        read_capacity_units: converted,
      }
    ),
    withThroughputMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"throughput_mode" expected to be of type "string"';
      {
        throughput_mode: converted,
      }
    ),
    withWriteCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"write_capacity_units" expected to be of type "number"';
      {
        write_capacity_units: converted,
      }
    ),
  },
  client_side_timestamps:: {
    local block = self,
    new(status):: (
      {}
      + block.withStatus(status)
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  comment:: {
    local block = self,
    new():: (
      {}
    ),
    withMessage(value):: (
      local converted = value;
      assert std.isString(converted) : '"message" expected to be of type "string"';
      {
        message: converted,
      }
    ),
  },
  encryption_specification:: {
    local block = self,
    new():: (
      {}
    ),
    withKmsKeyIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
      {
        kms_key_identifier: converted,
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
  point_in_time_recovery:: {
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
  },
  schema_definition:: {
    local block = self,
    new():: (
      {}
    ),
    clustering_key:: {
      local block = self,
      new(name, orderBy):: (
        {}
        + block.withName(name)
        + block.withOrderBy(orderBy)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withOrderBy(value):: (
        local converted = value;
        assert std.isString(converted) : '"order_by" expected to be of type "string"';
        {
          order_by: converted,
        }
      ),
    },
    column:: {
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
    partition_key:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    static_column:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    withClusteringKey(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        clustering_key: value,
      }
    ),
    withColumn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column: value,
      }
    ),
    withPartitionKey(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        partition_key: value,
      }
    ),
    withStaticColumn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        static_column: value,
      }
    ),
    withClusteringKeyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        clustering_key+: converted,
      }
    ),
    withColumnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        column+: converted,
      }
    ),
    withPartitionKeyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        partition_key+: converted,
      }
    ),
    withStaticColumnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        static_column+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  ttl:: {
    local block = self,
    new(status):: (
      {}
      + block.withStatus(status)
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  withCapacitySpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_specification: value,
    }
  ),
  withClientSideTimestamps(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_side_timestamps: value,
    }
  ),
  withComment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      comment: value,
    }
  ),
  withEncryptionSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_specification: value,
    }
  ),
  withPointInTimeRecovery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      point_in_time_recovery: value,
    }
  ),
  withSchemaDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema_definition: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTtl(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ttl: value,
    }
  ),
  withCapacitySpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_specification+: converted,
    }
  ),
  withClientSideTimestampsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      client_side_timestamps+: converted,
    }
  ),
  withCommentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      comment+: converted,
    }
  ),
  withEncryptionSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_specification+: converted,
    }
  ),
  withPointInTimeRecoveryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      point_in_time_recovery+: converted,
    }
  ),
  withSchemaDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schema_definition+: converted,
    }
  ),
  withTtlMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ttl+: converted,
    }
  ),
}
