{
  local block = self,
  new(terraformName, endpointId, endpointType, engineName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_dms_endpoint",
          type:: "resource",
          attributes:: ["certificate_arn", "database_name", "endpoint_arn", "endpoint_id", "endpoint_type", "engine_name", "extra_connection_attributes", "id", "kms_key_arn", "password", "pause_replication_tasks", "port", "region", "secrets_manager_access_role_arn", "secrets_manager_arn", "server_name", "service_access_role", "ssl_mode", "tags", "tags_all", "username"],
        },
      },
    }
    + block.withEndpointId(endpointId)
    + block.withEndpointType(endpointType)
    + block.withEngineName(engineName)
  ),
  withCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  withDatabaseName(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  withEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
    {
      endpoint_id: converted,
    }
  ),
  withEndpointType(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  withEngineName(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_name" expected to be of type "string"';
    {
      engine_name: converted,
    }
  ),
  withExtraConnectionAttributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"extra_connection_attributes" expected to be of type "string"';
    {
      extra_connection_attributes: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  withPauseReplicationTasks(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"pause_replication_tasks" expected to be of type "bool"';
    {
      pause_replication_tasks: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
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
  withSecretsManagerAccessRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secrets_manager_access_role_arn" expected to be of type "string"';
    {
      secrets_manager_access_role_arn: converted,
    }
  ),
  withSecretsManagerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"secrets_manager_arn" expected to be of type "string"';
    {
      secrets_manager_arn: converted,
    }
  ),
  withServerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_name" expected to be of type "string"';
    {
      server_name: converted,
    }
  ),
  withServiceAccessRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_access_role" expected to be of type "string"';
    {
      service_access_role: converted,
    }
  ),
  withSslMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssl_mode" expected to be of type "string"';
    {
      ssl_mode: converted,
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
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  elasticsearch_settings:: {
    local block = self,
    new(endpointUri, serviceAccessRoleArn):: (
      {}
      + block.withEndpointUri(endpointUri)
      + block.withServiceAccessRoleArn(serviceAccessRoleArn)
    ),
    withEndpointUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_uri" expected to be of type "string"';
      {
        endpoint_uri: converted,
      }
    ),
    withErrorRetryDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"error_retry_duration" expected to be of type "number"';
      {
        error_retry_duration: converted,
      }
    ),
    withFullLoadErrorPercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"full_load_error_percentage" expected to be of type "number"';
      {
        full_load_error_percentage: converted,
      }
    ),
    withServiceAccessRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
      {
        service_access_role_arn: converted,
      }
    ),
    withUseNewMappingType(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_new_mapping_type" expected to be of type "bool"';
      {
        use_new_mapping_type: converted,
      }
    ),
  },
  kafka_settings:: {
    local block = self,
    new(broker):: (
      {}
      + block.withBroker(broker)
    ),
    withBroker(value):: (
      local converted = value;
      assert std.isString(converted) : '"broker" expected to be of type "string"';
      {
        broker: converted,
      }
    ),
    withIncludeControlDetails(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_control_details" expected to be of type "bool"';
      {
        include_control_details: converted,
      }
    ),
    withIncludeNullAndEmpty(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_null_and_empty" expected to be of type "bool"';
      {
        include_null_and_empty: converted,
      }
    ),
    withIncludePartitionValue(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_partition_value" expected to be of type "bool"';
      {
        include_partition_value: converted,
      }
    ),
    withIncludeTableAlterOperations(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_table_alter_operations" expected to be of type "bool"';
      {
        include_table_alter_operations: converted,
      }
    ),
    withIncludeTransactionDetails(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_transaction_details" expected to be of type "bool"';
      {
        include_transaction_details: converted,
      }
    ),
    withMessageFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_format" expected to be of type "string"';
      {
        message_format: converted,
      }
    ),
    withMessageMaxBytes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"message_max_bytes" expected to be of type "number"';
      {
        message_max_bytes: converted,
      }
    ),
    withNoHexPrefix(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"no_hex_prefix" expected to be of type "bool"';
      {
        no_hex_prefix: converted,
      }
    ),
    withPartitionIncludeSchemaTable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"partition_include_schema_table" expected to be of type "bool"';
      {
        partition_include_schema_table: converted,
      }
    ),
    withSaslMechanism(value):: (
      local converted = value;
      assert std.isString(converted) : '"sasl_mechanism" expected to be of type "string"';
      {
        sasl_mechanism: converted,
      }
    ),
    withSaslPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"sasl_password" expected to be of type "string"';
      {
        sasl_password: converted,
      }
    ),
    withSaslUsername(value):: (
      local converted = value;
      assert std.isString(converted) : '"sasl_username" expected to be of type "string"';
      {
        sasl_username: converted,
      }
    ),
    withSecurityProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_protocol" expected to be of type "string"';
      {
        security_protocol: converted,
      }
    ),
    withSslCaCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_ca_certificate_arn" expected to be of type "string"';
      {
        ssl_ca_certificate_arn: converted,
      }
    ),
    withSslClientCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_client_certificate_arn" expected to be of type "string"';
      {
        ssl_client_certificate_arn: converted,
      }
    ),
    withSslClientKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_client_key_arn" expected to be of type "string"';
      {
        ssl_client_key_arn: converted,
      }
    ),
    withSslClientKeyPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_client_key_password" expected to be of type "string"';
      {
        ssl_client_key_password: converted,
      }
    ),
    withTopic(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic" expected to be of type "string"';
      {
        topic: converted,
      }
    ),
  },
  kinesis_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withIncludeControlDetails(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_control_details" expected to be of type "bool"';
      {
        include_control_details: converted,
      }
    ),
    withIncludeNullAndEmpty(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_null_and_empty" expected to be of type "bool"';
      {
        include_null_and_empty: converted,
      }
    ),
    withIncludePartitionValue(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_partition_value" expected to be of type "bool"';
      {
        include_partition_value: converted,
      }
    ),
    withIncludeTableAlterOperations(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_table_alter_operations" expected to be of type "bool"';
      {
        include_table_alter_operations: converted,
      }
    ),
    withIncludeTransactionDetails(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_transaction_details" expected to be of type "bool"';
      {
        include_transaction_details: converted,
      }
    ),
    withMessageFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"message_format" expected to be of type "string"';
      {
        message_format: converted,
      }
    ),
    withPartitionIncludeSchemaTable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"partition_include_schema_table" expected to be of type "bool"';
      {
        partition_include_schema_table: converted,
      }
    ),
    withServiceAccessRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
      {
        service_access_role_arn: converted,
      }
    ),
    withStreamArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_arn" expected to be of type "string"';
      {
        stream_arn: converted,
      }
    ),
    withUseLargeIntegerValue(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_large_integer_value" expected to be of type "bool"';
      {
        use_large_integer_value: converted,
      }
    ),
  },
  mongodb_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withAuthMechanism(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_mechanism" expected to be of type "string"';
      {
        auth_mechanism: converted,
      }
    ),
    withAuthSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_source" expected to be of type "string"';
      {
        auth_source: converted,
      }
    ),
    withAuthType(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_type" expected to be of type "string"';
      {
        auth_type: converted,
      }
    ),
    withDocsToInvestigate(value):: (
      local converted = value;
      assert std.isString(converted) : '"docs_to_investigate" expected to be of type "string"';
      {
        docs_to_investigate: converted,
      }
    ),
    withExtractDocId(value):: (
      local converted = value;
      assert std.isString(converted) : '"extract_doc_id" expected to be of type "string"';
      {
        extract_doc_id: converted,
      }
    ),
    withNestingLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"nesting_level" expected to be of type "string"';
      {
        nesting_level: converted,
      }
    ),
  },
  oracle_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withAuthenticationMethod(value):: (
      local converted = value;
      assert std.isString(converted) : '"authentication_method" expected to be of type "string"';
      {
        authentication_method: converted,
      }
    ),
  },
  postgres_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withAfterConnectScript(value):: (
      local converted = value;
      assert std.isString(converted) : '"after_connect_script" expected to be of type "string"';
      {
        after_connect_script: converted,
      }
    ),
    withAuthenticationMethod(value):: (
      local converted = value;
      assert std.isString(converted) : '"authentication_method" expected to be of type "string"';
      {
        authentication_method: converted,
      }
    ),
    withBabelfishDatabaseName(value):: (
      local converted = value;
      assert std.isString(converted) : '"babelfish_database_name" expected to be of type "string"';
      {
        babelfish_database_name: converted,
      }
    ),
    withCaptureDdls(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"capture_ddls" expected to be of type "bool"';
      {
        capture_ddls: converted,
      }
    ),
    withDatabaseMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_mode" expected to be of type "string"';
      {
        database_mode: converted,
      }
    ),
    withDdlArtifactsSchema(value):: (
      local converted = value;
      assert std.isString(converted) : '"ddl_artifacts_schema" expected to be of type "string"';
      {
        ddl_artifacts_schema: converted,
      }
    ),
    withExecuteTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"execute_timeout" expected to be of type "number"';
      {
        execute_timeout: converted,
      }
    ),
    withFailTasksOnLobTruncation(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"fail_tasks_on_lob_truncation" expected to be of type "bool"';
      {
        fail_tasks_on_lob_truncation: converted,
      }
    ),
    withHeartbeatEnable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"heartbeat_enable" expected to be of type "bool"';
      {
        heartbeat_enable: converted,
      }
    ),
    withHeartbeatFrequency(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"heartbeat_frequency" expected to be of type "number"';
      {
        heartbeat_frequency: converted,
      }
    ),
    withHeartbeatSchema(value):: (
      local converted = value;
      assert std.isString(converted) : '"heartbeat_schema" expected to be of type "string"';
      {
        heartbeat_schema: converted,
      }
    ),
    withMapBooleanAsBoolean(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"map_boolean_as_boolean" expected to be of type "bool"';
      {
        map_boolean_as_boolean: converted,
      }
    ),
    withMapJsonbAsClob(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"map_jsonb_as_clob" expected to be of type "bool"';
      {
        map_jsonb_as_clob: converted,
      }
    ),
    withMapLongVarcharAs(value):: (
      local converted = value;
      assert std.isString(converted) : '"map_long_varchar_as" expected to be of type "string"';
      {
        map_long_varchar_as: converted,
      }
    ),
    withMaxFileSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_file_size" expected to be of type "number"';
      {
        max_file_size: converted,
      }
    ),
    withPluginName(value):: (
      local converted = value;
      assert std.isString(converted) : '"plugin_name" expected to be of type "string"';
      {
        plugin_name: converted,
      }
    ),
    withServiceAccessRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
      {
        service_access_role_arn: converted,
      }
    ),
    withSlotName(value):: (
      local converted = value;
      assert std.isString(converted) : '"slot_name" expected to be of type "string"';
      {
        slot_name: converted,
      }
    ),
  },
  redis_settings:: {
    local block = self,
    new(authType, port, serverName):: (
      {}
      + block.withAuthType(authType)
      + block.withPort(port)
      + block.withServerName(serverName)
    ),
    withAuthPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_password" expected to be of type "string"';
      {
        auth_password: converted,
      }
    ),
    withAuthType(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_type" expected to be of type "string"';
      {
        auth_type: converted,
      }
    ),
    withAuthUserName(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_user_name" expected to be of type "string"';
      {
        auth_user_name: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    withServerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"server_name" expected to be of type "string"';
      {
        server_name: converted,
      }
    ),
    withSslCaCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_ca_certificate_arn" expected to be of type "string"';
      {
        ssl_ca_certificate_arn: converted,
      }
    ),
    withSslSecurityProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_security_protocol" expected to be of type "string"';
      {
        ssl_security_protocol: converted,
      }
    ),
  },
  redshift_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withBucketFolder(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_folder" expected to be of type "string"';
      {
        bucket_folder: converted,
      }
    ),
    withBucketName(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
      {
        bucket_name: converted,
      }
    ),
    withEncryptionMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_mode" expected to be of type "string"';
      {
        encryption_mode: converted,
      }
    ),
    withServerSideEncryptionKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"server_side_encryption_kms_key_id" expected to be of type "string"';
      {
        server_side_encryption_kms_key_id: converted,
      }
    ),
    withServiceAccessRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_access_role_arn" expected to be of type "string"';
      {
        service_access_role_arn: converted,
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
  },
  withElasticsearchSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_settings: value,
    }
  ),
  withKafkaSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_settings: value,
    }
  ),
  withKinesisSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_settings: value,
    }
  ),
  withMongodbSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mongodb_settings: value,
    }
  ),
  withOracleSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oracle_settings: value,
    }
  ),
  withPostgresSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      postgres_settings: value,
    }
  ),
  withRedisSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redis_settings: value,
    }
  ),
  withRedshiftSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_settings: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withElasticsearchSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      elasticsearch_settings+: converted,
    }
  ),
  withKafkaSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kafka_settings+: converted,
    }
  ),
  withKinesisSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_settings+: converted,
    }
  ),
  withMongodbSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mongodb_settings+: converted,
    }
  ),
  withOracleSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oracle_settings+: converted,
    }
  ),
  withPostgresSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      postgres_settings+: converted,
    }
  ),
  withRedisSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redis_settings+: converted,
    }
  ),
  withRedshiftSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_settings+: converted,
    }
  ),
}
