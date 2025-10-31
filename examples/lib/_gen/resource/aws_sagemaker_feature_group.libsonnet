{
  local block = self,
  new(terraformName, eventTimeFeatureName, featureGroupName, recordIdentifierFeatureName, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_feature_group",
          type:: "resource",
          attributes:: ["arn", "description", "event_time_feature_name", "feature_group_name", "id", "record_identifier_feature_name", "region", "role_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withEventTimeFeatureName(eventTimeFeatureName)
    + block.withFeatureGroupName(featureGroupName)
    + block.withRecordIdentifierFeatureName(recordIdentifierFeatureName)
    + block.withRoleArn(roleArn)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEventTimeFeatureName(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_time_feature_name" expected to be of type "string"';
    {
      event_time_feature_name: converted,
    }
  ),
  withFeatureGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_group_name" expected to be of type "string"';
    {
      feature_group_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withRecordIdentifierFeatureName(value):: (
    local converted = value;
    assert std.isString(converted) : '"record_identifier_feature_name" expected to be of type "string"';
    {
      record_identifier_feature_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  feature_definition:: {
    local block = self,
    new():: (
      {}
    ),
    withCollectionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"collection_type" expected to be of type "string"';
      {
        collection_type: converted,
      }
    ),
    withFeatureName(value):: (
      local converted = value;
      assert std.isString(converted) : '"feature_name" expected to be of type "string"';
      {
        feature_name: converted,
      }
    ),
    withFeatureType(value):: (
      local converted = value;
      assert std.isString(converted) : '"feature_type" expected to be of type "string"';
      {
        feature_type: converted,
      }
    ),
    collection_config:: {
      local block = self,
      new():: (
        {}
      ),
      vector_config:: {
        local block = self,
        new():: (
          {}
        ),
        withDimension(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"dimension" expected to be of type "number"';
          {
            dimension: converted,
          }
        ),
      },
      withVectorConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vector_config: value,
        }
      ),
      withVectorConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          vector_config+: converted,
        }
      ),
    },
    withCollectionConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        collection_config: value,
      }
    ),
    withCollectionConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        collection_config+: converted,
      }
    ),
  },
  offline_store_config:: {
    local block = self,
    new():: (
      {}
    ),
    withDisableGlueTableCreation(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_glue_table_creation" expected to be of type "bool"';
      {
        disable_glue_table_creation: converted,
      }
    ),
    withTableFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"table_format" expected to be of type "string"';
      {
        table_format: converted,
      }
    ),
    data_catalog_config:: {
      local block = self,
      new():: (
        {}
      ),
      withCatalog(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog" expected to be of type "string"';
        {
          catalog: converted,
        }
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
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
    s3_storage_config:: {
      local block = self,
      new(s3Uri):: (
        {}
        + block.withS3Uri(s3Uri)
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      withResolvedOutputS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"resolved_output_s3_uri" expected to be of type "string"';
        {
          resolved_output_s3_uri: converted,
        }
      ),
      withS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    withDataCatalogConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_catalog_config: value,
      }
    ),
    withS3StorageConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_storage_config: value,
      }
    ),
    withDataCatalogConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_catalog_config+: converted,
      }
    ),
    withS3StorageConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_storage_config+: converted,
      }
    ),
  },
  online_store_config:: {
    local block = self,
    new():: (
      {}
    ),
    withEnableOnlineStore(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_online_store" expected to be of type "bool"';
      {
        enable_online_store: converted,
      }
    ),
    withStorageType(value):: (
      local converted = value;
      assert std.isString(converted) : '"storage_type" expected to be of type "string"';
      {
        storage_type: converted,
      }
    ),
    security_config:: {
      local block = self,
      new():: (
        {}
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
    },
    ttl_duration:: {
      local block = self,
      new():: (
        {}
      ),
      withUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"value" expected to be of type "number"';
        {
          value: converted,
        }
      ),
    },
    withSecurityConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        security_config: value,
      }
    ),
    withTtlDuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ttl_duration: value,
      }
    ),
    withSecurityConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        security_config+: converted,
      }
    ),
    withTtlDurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ttl_duration+: converted,
      }
    ),
  },
  throughput_config:: {
    local block = self,
    new():: (
      {}
    ),
    withProvisionedReadCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"provisioned_read_capacity_units" expected to be of type "number"';
      {
        provisioned_read_capacity_units: converted,
      }
    ),
    withProvisionedWriteCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"provisioned_write_capacity_units" expected to be of type "number"';
      {
        provisioned_write_capacity_units: converted,
      }
    ),
    withThroughputMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"throughput_mode" expected to be of type "string"';
      {
        throughput_mode: converted,
      }
    ),
  },
  withFeatureDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      feature_definition: value,
    }
  ),
  withOfflineStoreConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      offline_store_config: value,
    }
  ),
  withOnlineStoreConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      online_store_config: value,
    }
  ),
  withThroughputConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      throughput_config: value,
    }
  ),
  withFeatureDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      feature_definition+: converted,
    }
  ),
  withOfflineStoreConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      offline_store_config+: converted,
    }
  ),
  withOnlineStoreConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      online_store_config+: converted,
    }
  ),
  withThroughputConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      throughput_config+: converted,
    }
  ),
}
