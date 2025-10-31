{
  local block = self,
  new(terraformName, apiId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appsync_channel_namespace",
          type:: "resource",
          attributes:: ["api_id", "channel_namespace_arn", "code_handlers", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withName(name)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withCodeHandlers(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_handlers" expected to be of type "string"';
    {
      code_handlers: converted,
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
  handler_configs:: {
    local block = self,
    new():: (
      {}
    ),
    on_publish:: {
      local block = self,
      new(behavior):: (
        {}
        + block.withBehavior(behavior)
      ),
      withBehavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"behavior" expected to be of type "string"';
        {
          behavior: converted,
        }
      ),
      integration:: {
        local block = self,
        new(dataSourceName):: (
          {}
          + block.withDataSourceName(dataSourceName)
        ),
        withDataSourceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_source_name" expected to be of type "string"';
          {
            data_source_name: converted,
          }
        ),
        lambda_config:: {
          local block = self,
          new():: (
            {}
          ),
          withInvokeType(value):: (
            local converted = value;
            assert std.isString(converted) : '"invoke_type" expected to be of type "string"';
            {
              invoke_type: converted,
            }
          ),
        },
        withLambdaConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_config: value,
          }
        ),
        withLambdaConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_config+: converted,
          }
        ),
      },
      withIntegration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          integration: value,
        }
      ),
      withIntegrationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          integration+: converted,
        }
      ),
    },
    on_subscribe:: {
      local block = self,
      new(behavior):: (
        {}
        + block.withBehavior(behavior)
      ),
      withBehavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"behavior" expected to be of type "string"';
        {
          behavior: converted,
        }
      ),
      integration:: {
        local block = self,
        new(dataSourceName):: (
          {}
          + block.withDataSourceName(dataSourceName)
        ),
        withDataSourceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_source_name" expected to be of type "string"';
          {
            data_source_name: converted,
          }
        ),
        lambda_config:: {
          local block = self,
          new():: (
            {}
          ),
          withInvokeType(value):: (
            local converted = value;
            assert std.isString(converted) : '"invoke_type" expected to be of type "string"';
            {
              invoke_type: converted,
            }
          ),
        },
        withLambdaConfig(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_config: value,
          }
        ),
        withLambdaConfigMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            lambda_config+: converted,
          }
        ),
      },
      withIntegration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          integration: value,
        }
      ),
      withIntegrationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          integration+: converted,
        }
      ),
    },
    withOnPublish(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_publish: value,
      }
    ),
    withOnSubscribe(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_subscribe: value,
      }
    ),
    withOnPublishMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_publish+: converted,
      }
    ),
    withOnSubscribeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_subscribe+: converted,
      }
    ),
  },
  publish_auth_mode:: {
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
  subscribe_auth_mode:: {
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
  withHandlerConfigs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      handler_configs: value,
    }
  ),
  withPublishAuthMode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      publish_auth_mode: value,
    }
  ),
  withSubscribeAuthMode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscribe_auth_mode: value,
    }
  ),
  withHandlerConfigsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      handler_configs+: converted,
    }
  ),
  withPublishAuthModeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      publish_auth_mode+: converted,
    }
  ),
  withSubscribeAuthModeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscribe_auth_mode+: converted,
    }
  ),
}
