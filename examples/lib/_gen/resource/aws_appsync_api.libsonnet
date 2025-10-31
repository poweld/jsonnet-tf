{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_api",
          type:: "resource",
          attributes:: ["api_arn", "api_id", "dns", "name", "owner_contact", "region", "tags", "tags_all", "waf_web_acl_arn", "xray_enabled"],
        },
      },
    }
    + block.withName(name)
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withOwnerContact(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_contact" expected to be of type "string"';
    {
      owner_contact: converted,
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
  event_config:: {
    local block = self,
    new():: (
      {}
    ),
    auth_provider:: {
      local block = self,
      new(authType):: (
        {}
        + block.withAuthType(authType)
      ),
      withAuthType(value):: (
        local converted = value;
        assert std.isString(converted) : '"auth_type" expected to be of type "string"';
        {
          auth_type: converted,
        }
      ),
      cognito_config:: {
        local block = self,
        new(awsRegion, userPoolId):: (
          {}
          + block.withAwsRegion(awsRegion)
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
      withCognitoConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cognito_config: value,
        }
      ),
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
      withCognitoConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cognito_config+: converted,
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
    },
    connection_auth_mode:: {
      local block = self,
      new(authType):: (
        {}
        + block.withAuthType(authType)
      ),
      withAuthType(value):: (
        local converted = value;
        assert std.isString(converted) : '"auth_type" expected to be of type "string"';
        {
          auth_type: converted,
        }
      ),
    },
    default_publish_auth_mode:: {
      local block = self,
      new(authType):: (
        {}
        + block.withAuthType(authType)
      ),
      withAuthType(value):: (
        local converted = value;
        assert std.isString(converted) : '"auth_type" expected to be of type "string"';
        {
          auth_type: converted,
        }
      ),
    },
    default_subscribe_auth_mode:: {
      local block = self,
      new(authType):: (
        {}
        + block.withAuthType(authType)
      ),
      withAuthType(value):: (
        local converted = value;
        assert std.isString(converted) : '"auth_type" expected to be of type "string"';
        {
          auth_type: converted,
        }
      ),
    },
    log_config:: {
      local block = self,
      new(cloudwatchLogsRoleArn, logLevel):: (
        {}
        + block.withCloudwatchLogsRoleArn(cloudwatchLogsRoleArn)
        + block.withLogLevel(logLevel)
      ),
      withCloudwatchLogsRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"cloudwatch_logs_role_arn" expected to be of type "string"';
        {
          cloudwatch_logs_role_arn: converted,
        }
      ),
      withLogLevel(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_level" expected to be of type "string"';
        {
          log_level: converted,
        }
      ),
    },
    withAuthProvider(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth_provider: value,
      }
    ),
    withConnectionAuthMode(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_auth_mode: value,
      }
    ),
    withDefaultPublishAuthMode(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_publish_auth_mode: value,
      }
    ),
    withDefaultSubscribeAuthMode(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_subscribe_auth_mode: value,
      }
    ),
    withLogConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_config: value,
      }
    ),
    withAuthProviderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth_provider+: converted,
      }
    ),
    withConnectionAuthModeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_auth_mode+: converted,
      }
    ),
    withDefaultPublishAuthModeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_publish_auth_mode+: converted,
      }
    ),
    withDefaultSubscribeAuthModeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        default_subscribe_auth_mode+: converted,
      }
    ),
    withLogConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_config+: converted,
      }
    ),
  },
  withEventConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_config: value,
    }
  ),
  withEventConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_config+: converted,
    }
  ),
}
