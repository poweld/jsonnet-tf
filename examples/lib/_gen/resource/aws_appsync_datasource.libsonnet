{
  local block = self,
  new(terraformName, apiId, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_datasource",
          type:: "resource",
          attributes:: ["api_id", "arn", "description", "id", "name", "region", "service_role_arn", "type"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withName(name)
    + block.withType(type)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
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
  withServiceRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role_arn" expected to be of type "string"';
    {
      service_role_arn: converted,
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
  dynamodb_config:: {
    local block = self,
    new(tableName):: (
      {}
      + block.withTableName(tableName)
    ),
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
    withUseCallerCredentials(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_caller_credentials" expected to be of type "bool"';
      {
        use_caller_credentials: converted,
      }
    ),
    withVersioned(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"versioned" expected to be of type "bool"';
      {
        versioned: converted,
      }
    ),
    delta_sync_config:: {
      local block = self,
      new(deltaSyncTableName):: (
        {}
        + block.withDeltaSyncTableName(deltaSyncTableName)
      ),
      withBaseTableTtl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"base_table_ttl" expected to be of type "number"';
        {
          base_table_ttl: converted,
        }
      ),
      withDeltaSyncTableName(value):: (
        local converted = value;
        assert std.isString(converted) : '"delta_sync_table_name" expected to be of type "string"';
        {
          delta_sync_table_name: converted,
        }
      ),
      withDeltaSyncTableTtl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"delta_sync_table_ttl" expected to be of type "number"';
        {
          delta_sync_table_ttl: converted,
        }
      ),
    },
    withDeltaSyncConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delta_sync_config: value,
      }
    ),
    withDeltaSyncConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delta_sync_config+: converted,
      }
    ),
  },
  elasticsearch_config:: {
    local block = self,
    new(endpoint):: (
      {}
      + block.withEndpoint(endpoint)
    ),
    withEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
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
  event_bridge_config:: {
    local block = self,
    new(eventBusArn):: (
      {}
      + block.withEventBusArn(eventBusArn)
    ),
    withEventBusArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_bus_arn" expected to be of type "string"';
      {
        event_bus_arn: converted,
      }
    ),
  },
  http_config:: {
    local block = self,
    new(endpoint):: (
      {}
      + block.withEndpoint(endpoint)
    ),
    withEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
      }
    ),
    authorization_config:: {
      local block = self,
      new():: (
        {}
      ),
      withAuthorizationType(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
        {
          authorization_type: converted,
        }
      ),
      aws_iam_config:: {
        local block = self,
        new():: (
          {}
        ),
        withSigningRegion(value):: (
          local converted = value;
          assert std.isString(converted) : '"signing_region" expected to be of type "string"';
          {
            signing_region: converted,
          }
        ),
        withSigningServiceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"signing_service_name" expected to be of type "string"';
          {
            signing_service_name: converted,
          }
        ),
      },
      withAwsIamConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          aws_iam_config: value,
        }
      ),
      withAwsIamConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          aws_iam_config+: converted,
        }
      ),
    },
    withAuthorizationConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authorization_config: value,
      }
    ),
    withAuthorizationConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authorization_config+: converted,
      }
    ),
  },
  lambda_config:: {
    local block = self,
    new(functionArn):: (
      {}
      + block.withFunctionArn(functionArn)
    ),
    withFunctionArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"function_arn" expected to be of type "string"';
      {
        function_arn: converted,
      }
    ),
  },
  opensearchservice_config:: {
    local block = self,
    new(endpoint):: (
      {}
      + block.withEndpoint(endpoint)
    ),
    withEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint" expected to be of type "string"';
      {
        endpoint: converted,
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
  relational_database_config:: {
    local block = self,
    new():: (
      {}
    ),
    withSourceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_type" expected to be of type "string"';
      {
        source_type: converted,
      }
    ),
    http_endpoint_config:: {
      local block = self,
      new(awsSecretStoreArn, dbClusterIdentifier):: (
        {}
        + block.withAwsSecretStoreArn(awsSecretStoreArn)
        + block.withDbClusterIdentifier(dbClusterIdentifier)
      ),
      withAwsSecretStoreArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"aws_secret_store_arn" expected to be of type "string"';
        {
          aws_secret_store_arn: converted,
        }
      ),
      withDatabaseName(value):: (
        local converted = value;
        assert std.isString(converted) : '"database_name" expected to be of type "string"';
        {
          database_name: converted,
        }
      ),
      withDbClusterIdentifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"db_cluster_identifier" expected to be of type "string"';
        {
          db_cluster_identifier: converted,
        }
      ),
      withRegion(value):: (
        local converted = value;
        assert std.isString(converted) : '"region" expected to be of type "string"';
        {
          region: converted,
        }
      ),
      withSchema(value):: (
        local converted = value;
        assert std.isString(converted) : '"schema" expected to be of type "string"';
        {
          schema: converted,
        }
      ),
    },
    withHttpEndpointConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_endpoint_config: value,
      }
    ),
    withHttpEndpointConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_endpoint_config+: converted,
      }
    ),
  },
  withDynamodbConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb_config: value,
    }
  ),
  withElasticsearchConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_config: value,
    }
  ),
  withEventBridgeConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_bridge_config: value,
    }
  ),
  withHttpConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_config: value,
    }
  ),
  withLambdaConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_config: value,
    }
  ),
  withOpensearchserviceConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearchservice_config: value,
    }
  ),
  withRelationalDatabaseConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      relational_database_config: value,
    }
  ),
  withDynamodbConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dynamodb_config+: converted,
    }
  ),
  withElasticsearchConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_config+: converted,
    }
  ),
  withEventBridgeConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_bridge_config+: converted,
    }
  ),
  withHttpConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_config+: converted,
    }
  ),
  withLambdaConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_config+: converted,
    }
  ),
  withOpensearchserviceConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      opensearchservice_config+: converted,
    }
  ),
  withRelationalDatabaseConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      relational_database_config+: converted,
    }
  ),
}
