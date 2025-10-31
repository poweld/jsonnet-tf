{
  local block = self,
  new(terraformName, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_knowledge_base",
          type:: "resource",
          attributes:: ["arn", "created_at", "description", "failure_reasons", "id", "name", "region", "role_arn", "tags", "tags_all", "updated_at"],
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  knowledge_base_configuration:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    vector_knowledge_base_configuration:: {
      local block = self,
      new(embeddingModelArn):: (
        {}
        + block.withEmbeddingModelArn(embeddingModelArn)
      ),
      withEmbeddingModelArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"embedding_model_arn" expected to be of type "string"';
        {
          embedding_model_arn: converted,
        }
      ),
      embedding_model_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        bedrock_embedding_model_configuration:: {
          local block = self,
          new():: (
            {}
          ),
          withDimensions(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"dimensions" expected to be of type "number"';
            {
              dimensions: converted,
            }
          ),
          withEmbeddingDataType(value):: (
            local converted = value;
            assert std.isString(converted) : '"embedding_data_type" expected to be of type "string"';
            {
              embedding_data_type: converted,
            }
          ),
        },
        withBedrockEmbeddingModelConfiguration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            bedrock_embedding_model_configuration: value,
          }
        ),
        withBedrockEmbeddingModelConfigurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            bedrock_embedding_model_configuration+: converted,
          }
        ),
      },
      supplemental_data_storage_configuration:: {
        local block = self,
        new():: (
          {}
        ),
        storage_location:: {
          local block = self,
          new(type):: (
            {}
            + block.withType(type)
          ),
          withType(value):: (
            local converted = value;
            assert std.isString(converted) : '"type" expected to be of type "string"';
            {
              type: converted,
            }
          ),
          s3_location:: {
            local block = self,
            new(uri):: (
              {}
              + block.withUri(uri)
            ),
            withUri(value):: (
              local converted = value;
              assert std.isString(converted) : '"uri" expected to be of type "string"';
              {
                uri: converted,
              }
            ),
          },
          withS3Location(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              s3_location: value,
            }
          ),
          withS3LocationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              s3_location+: converted,
            }
          ),
        },
        withStorageLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            storage_location: value,
          }
        ),
        withStorageLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            storage_location+: converted,
          }
        ),
      },
      withEmbeddingModelConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          embedding_model_configuration: value,
        }
      ),
      withSupplementalDataStorageConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          supplemental_data_storage_configuration: value,
        }
      ),
      withEmbeddingModelConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          embedding_model_configuration+: converted,
        }
      ),
      withSupplementalDataStorageConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          supplemental_data_storage_configuration+: converted,
        }
      ),
    },
    withVectorKnowledgeBaseConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vector_knowledge_base_configuration: value,
      }
    ),
    withVectorKnowledgeBaseConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vector_knowledge_base_configuration+: converted,
      }
    ),
  },
  storage_configuration:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    opensearch_serverless_configuration:: {
      local block = self,
      new(collectionArn, vectorIndexName):: (
        {}
        + block.withCollectionArn(collectionArn)
        + block.withVectorIndexName(vectorIndexName)
      ),
      withCollectionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"collection_arn" expected to be of type "string"';
        {
          collection_arn: converted,
        }
      ),
      withVectorIndexName(value):: (
        local converted = value;
        assert std.isString(converted) : '"vector_index_name" expected to be of type "string"';
        {
          vector_index_name: converted,
        }
      ),
      field_mapping:: {
        local block = self,
        new():: (
          {}
        ),
        withMetadataField(value):: (
          local converted = value;
          assert std.isString(converted) : '"metadata_field" expected to be of type "string"';
          {
            metadata_field: converted,
          }
        ),
        withTextField(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_field" expected to be of type "string"';
          {
            text_field: converted,
          }
        ),
        withVectorField(value):: (
          local converted = value;
          assert std.isString(converted) : '"vector_field" expected to be of type "string"';
          {
            vector_field: converted,
          }
        ),
      },
      withFieldMapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping: value,
        }
      ),
      withFieldMappingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping+: converted,
        }
      ),
    },
    pinecone_configuration:: {
      local block = self,
      new(connectionString, credentialsSecretArn):: (
        {}
        + block.withConnectionString(connectionString)
        + block.withCredentialsSecretArn(credentialsSecretArn)
      ),
      withConnectionString(value):: (
        local converted = value;
        assert std.isString(converted) : '"connection_string" expected to be of type "string"';
        {
          connection_string: converted,
        }
      ),
      withCredentialsSecretArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
        {
          credentials_secret_arn: converted,
        }
      ),
      withNamespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      field_mapping:: {
        local block = self,
        new():: (
          {}
        ),
        withMetadataField(value):: (
          local converted = value;
          assert std.isString(converted) : '"metadata_field" expected to be of type "string"';
          {
            metadata_field: converted,
          }
        ),
        withTextField(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_field" expected to be of type "string"';
          {
            text_field: converted,
          }
        ),
      },
      withFieldMapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping: value,
        }
      ),
      withFieldMappingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping+: converted,
        }
      ),
    },
    rds_configuration:: {
      local block = self,
      new(credentialsSecretArn, databaseName, resourceArn, tableName):: (
        {}
        + block.withCredentialsSecretArn(credentialsSecretArn)
        + block.withDatabaseName(databaseName)
        + block.withResourceArn(resourceArn)
        + block.withTableName(tableName)
      ),
      withCredentialsSecretArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
        {
          credentials_secret_arn: converted,
        }
      ),
      withDatabaseName(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      withResourceArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
        }
      ),
      withTableName(value):: (
        local converted = value;
        assert std.isString(converted) : '"table_name" expected to be of type "string"';
        {
          table_name: converted,
        }
      ),
      field_mapping:: {
        local block = self,
        new(metadataField, primaryKeyField, textField, vectorField):: (
          {}
          + block.withMetadataField(metadataField)
          + block.withPrimaryKeyField(primaryKeyField)
          + block.withTextField(textField)
          + block.withVectorField(vectorField)
        ),
        withMetadataField(value):: (
          local converted = value;
          assert std.isString(converted) : '"metadata_field" expected to be of type "string"';
          {
            metadata_field: converted,
          }
        ),
        withPrimaryKeyField(value):: (
          local converted = value;
          assert std.isString(converted) : '"primary_key_field" expected to be of type "string"';
          {
            primary_key_field: converted,
          }
        ),
        withTextField(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_field" expected to be of type "string"';
          {
            text_field: converted,
          }
        ),
        withVectorField(value):: (
          local converted = value;
          assert std.isString(converted) : '"vector_field" expected to be of type "string"';
          {
            vector_field: converted,
          }
        ),
      },
      withFieldMapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping: value,
        }
      ),
      withFieldMappingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping+: converted,
        }
      ),
    },
    redis_enterprise_cloud_configuration:: {
      local block = self,
      new(credentialsSecretArn, endpoint, vectorIndexName):: (
        {}
        + block.withCredentialsSecretArn(credentialsSecretArn)
        + block.withEndpoint(endpoint)
        + block.withVectorIndexName(vectorIndexName)
      ),
      withCredentialsSecretArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"credentials_secret_arn" expected to be of type "string"';
        {
          credentials_secret_arn: converted,
        }
      ),
      withEndpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"endpoint" expected to be of type "string"';
        {
          endpoint: converted,
        }
      ),
      withVectorIndexName(value):: (
        local converted = value;
        assert std.isString(converted) : '"vector_index_name" expected to be of type "string"';
        {
          vector_index_name: converted,
        }
      ),
      field_mapping:: {
        local block = self,
        new():: (
          {}
        ),
        withMetadataField(value):: (
          local converted = value;
          assert std.isString(converted) : '"metadata_field" expected to be of type "string"';
          {
            metadata_field: converted,
          }
        ),
        withTextField(value):: (
          local converted = value;
          assert std.isString(converted) : '"text_field" expected to be of type "string"';
          {
            text_field: converted,
          }
        ),
        withVectorField(value):: (
          local converted = value;
          assert std.isString(converted) : '"vector_field" expected to be of type "string"';
          {
            vector_field: converted,
          }
        ),
      },
      withFieldMapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping: value,
        }
      ),
      withFieldMappingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_mapping+: converted,
        }
      ),
    },
    withOpensearchServerlessConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        opensearch_serverless_configuration: value,
      }
    ),
    withPineconeConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pinecone_configuration: value,
      }
    ),
    withRdsConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rds_configuration: value,
      }
    ),
    withRedisEnterpriseCloudConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redis_enterprise_cloud_configuration: value,
      }
    ),
    withOpensearchServerlessConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        opensearch_serverless_configuration+: converted,
      }
    ),
    withPineconeConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pinecone_configuration+: converted,
      }
    ),
    withRdsConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rds_configuration+: converted,
      }
    ),
    withRedisEnterpriseCloudConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redis_enterprise_cloud_configuration+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withKnowledgeBaseConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      knowledge_base_configuration: value,
    }
  ),
  withStorageConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withKnowledgeBaseConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      knowledge_base_configuration+: converted,
    }
  ),
  withStorageConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_configuration+: converted,
    }
  ),
}
