{
  local block = self,
  new(terraformName, authenticationType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_graphql_api",
          type:: "resource",
          attributes:: ["api_type", "arn", "authentication_type", "id", "introspection_config", "merged_api_execution_role_arn", "name", "query_depth_limit", "region", "resolver_count_limit", "schema", "tags", "tags_all", "uris", "visibility", "xray_enabled"],
        },
      },
    }
    + block.withAuthenticationType(authenticationType)
    + block.withName(name)
  ),
  withApiType(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_type" expected to be of type "string"';
    {
      api_type: converted,
    }
  ),
  withAuthenticationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIntrospectionConfig(value):: (
    local converted = value;
    assert std.isString(converted) : '"introspection_config" expected to be of type "string"';
    {
      introspection_config: converted,
    }
  ),
  withMergedApiExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"merged_api_execution_role_arn" expected to be of type "string"';
    {
      merged_api_execution_role_arn: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withQueryDepthLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"query_depth_limit" expected to be of type "number"';
    {
      query_depth_limit: converted,
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
  withResolverCountLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"resolver_count_limit" expected to be of type "number"';
    {
      resolver_count_limit: converted,
    }
  ),
  withSchema(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema" expected to be of type "string"';
    {
      schema: converted,
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
  withVisibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"visibility" expected to be of type "string"';
    {
      visibility: converted,
    }
  ),
  withXrayEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"xray_enabled" expected to be of type "bool"';
    {
      xray_enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  additional_authentication_provider:: {
    local block = self,
    new(authenticationType):: (
      {}
      + block.withAuthenticationType(authenticationType)
    ),
    withAuthenticationType(value):: (
      local converted = value;
      assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
      {
        authentication_type: converted,
      }
    ),
    lambda_authorizer_config:: {
      local block = self,
      new(authorizerUri):: (
        {}
        + block.withAuthorizerUri(authorizerUri)
      ),
      withAuthorizerResultTtlInSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"authorizer_result_ttl_in_seconds" expected to be of type "number"';
        {
          authorizer_result_ttl_in_seconds: converted,
        }
      ),
      withAuthorizerUri(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorizer_uri" expected to be of type "string"';
        {
          authorizer_uri: converted,
        }
      ),
      withIdentityValidationExpression(value):: (
        local converted = value;
        assert std.isString(converted) : '"identity_validation_expression" expected to be of type "string"';
        {
          identity_validation_expression: converted,
        }
      ),
    },
    openid_connect_config:: {
      local block = self,
      new(issuer):: (
        {}
        + block.withIssuer(issuer)
      ),
      withAuthTtl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"auth_ttl" expected to be of type "number"';
        {
          auth_ttl: converted,
        }
      ),
      withClientId(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_id" expected to be of type "string"';
        {
          client_id: converted,
        }
      ),
      withIatTtl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"iat_ttl" expected to be of type "number"';
        {
          iat_ttl: converted,
        }
      ),
      withIssuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
    },
    user_pool_config:: {
      local block = self,
      new(userPoolId):: (
        {}
        + block.withUserPoolId(userPoolId)
      ),
      withAppIdClientRegex(value):: (
        local converted = value;
        assert std.isString(converted) : '"app_id_client_regex" expected to be of type "string"';
        {
          app_id_client_regex: converted,
        }
      ),
      withAwsRegion(value):: (
        local converted = value;
        assert std.isString(converted) : '"aws_region" expected to be of type "string"';
        {
          aws_region: converted,
        }
      ),
      withUserPoolId(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
        {
          user_pool_id: converted,
        }
      ),
    },
    withLambdaAuthorizerConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_authorizer_config: value,
      }
    ),
    withOpenidConnectConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        openid_connect_config: value,
      }
    ),
    withUserPoolConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_pool_config: value,
      }
    ),
    withLambdaAuthorizerConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_authorizer_config+: converted,
      }
    ),
    withOpenidConnectConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        openid_connect_config+: converted,
      }
    ),
    withUserPoolConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_pool_config+: converted,
      }
    ),
  },
  enhanced_metrics_config:: {
    local block = self,
    new(dataSourceLevelMetricsBehavior, operationLevelMetricsConfig, resolverLevelMetricsBehavior):: (
      {}
      + block.withDataSourceLevelMetricsBehavior(dataSourceLevelMetricsBehavior)
      + block.withOperationLevelMetricsConfig(operationLevelMetricsConfig)
      + block.withResolverLevelMetricsBehavior(resolverLevelMetricsBehavior)
    ),
    withDataSourceLevelMetricsBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_source_level_metrics_behavior" expected to be of type "string"';
      {
        data_source_level_metrics_behavior: converted,
      }
    ),
    withOperationLevelMetricsConfig(value):: (
      local converted = value;
      assert std.isString(converted) : '"operation_level_metrics_config" expected to be of type "string"';
      {
        operation_level_metrics_config: converted,
      }
    ),
    withResolverLevelMetricsBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"resolver_level_metrics_behavior" expected to be of type "string"';
      {
        resolver_level_metrics_behavior: converted,
      }
    ),
  },
  lambda_authorizer_config:: {
    local block = self,
    new(authorizerUri):: (
      {}
      + block.withAuthorizerUri(authorizerUri)
    ),
    withAuthorizerResultTtlInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"authorizer_result_ttl_in_seconds" expected to be of type "number"';
      {
        authorizer_result_ttl_in_seconds: converted,
      }
    ),
    withAuthorizerUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"authorizer_uri" expected to be of type "string"';
      {
        authorizer_uri: converted,
      }
    ),
    withIdentityValidationExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_validation_expression" expected to be of type "string"';
      {
        identity_validation_expression: converted,
      }
    ),
  },
  log_config:: {
    local block = self,
    new(cloudwatchLogsRoleArn, fieldLogLevel):: (
      {}
      + block.withCloudwatchLogsRoleArn(cloudwatchLogsRoleArn)
      + block.withFieldLogLevel(fieldLogLevel)
    ),
    withCloudwatchLogsRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch_logs_role_arn" expected to be of type "string"';
      {
        cloudwatch_logs_role_arn: converted,
      }
    ),
    withExcludeVerboseContent(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"exclude_verbose_content" expected to be of type "bool"';
      {
        exclude_verbose_content: converted,
      }
    ),
    withFieldLogLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"field_log_level" expected to be of type "string"';
      {
        field_log_level: converted,
      }
    ),
  },
  openid_connect_config:: {
    local block = self,
    new(issuer):: (
      {}
      + block.withIssuer(issuer)
    ),
    withAuthTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"auth_ttl" expected to be of type "number"';
      {
        auth_ttl: converted,
      }
    ),
    withClientId(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    withIatTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iat_ttl" expected to be of type "number"';
      {
        iat_ttl: converted,
      }
    ),
    withIssuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
  },
  user_pool_config:: {
    local block = self,
    new(defaultAction, userPoolId):: (
      {}
      + block.withDefaultAction(defaultAction)
      + block.withUserPoolId(userPoolId)
    ),
    withAppIdClientRegex(value):: (
      local converted = value;
      assert std.isString(converted) : '"app_id_client_regex" expected to be of type "string"';
      {
        app_id_client_regex: converted,
      }
    ),
    withAwsRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"aws_region" expected to be of type "string"';
      {
        aws_region: converted,
      }
    ),
    withDefaultAction(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_action" expected to be of type "string"';
      {
        default_action: converted,
      }
    ),
    withUserPoolId(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
      {
        user_pool_id: converted,
      }
    ),
  },
  withAdditionalAuthenticationProvider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      additional_authentication_provider: value,
    }
  ),
  withEnhancedMetricsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enhanced_metrics_config: value,
    }
  ),
  withLambdaAuthorizerConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_authorizer_config: value,
    }
  ),
  withLogConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_config: value,
    }
  ),
  withOpenidConnectConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      openid_connect_config: value,
    }
  ),
  withUserPoolConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_pool_config: value,
    }
  ),
  withAdditionalAuthenticationProviderMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      additional_authentication_provider+: converted,
    }
  ),
  withEnhancedMetricsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enhanced_metrics_config+: converted,
    }
  ),
  withLambdaAuthorizerConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_authorizer_config+: converted,
    }
  ),
  withLogConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_config+: converted,
    }
  ),
  withOpenidConnectConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      openid_connect_config+: converted,
    }
  ),
  withUserPoolConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_pool_config+: converted,
    }
  ),
}
