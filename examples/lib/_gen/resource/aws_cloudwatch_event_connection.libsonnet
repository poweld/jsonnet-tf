{
  local block = self,
  new(terraformName, authorizationType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_event_connection",
          type:: "resource",
          attributes:: ["arn", "authorization_type", "description", "id", "kms_key_identifier", "name", "region", "secret_arn"],
        },
      },
    }
    + block.withAuthorizationType(authorizationType)
    + block.withName(name)
  ),
  withAuthorizationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
    {
      authorization_type: converted,
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
  withKmsKeyIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  auth_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    api_key:: {
      local block = self,
      new(key, value):: (
        {}
        + block.withKey(key)
        + block.withValue(value)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    basic:: {
      local block = self,
      new(password, username):: (
        {}
        + block.withPassword(password)
        + block.withUsername(username)
      ),
      withPassword(value):: (
        local converted = value;
        assert std.isString(converted) : '"password" expected to be of type "string"';
        {
          password: converted,
        }
      ),
      withUsername(value):: (
        local converted = value;
        assert std.isString(converted) : '"username" expected to be of type "string"';
        {
          username: converted,
        }
      ),
    },
    invocation_http_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      body:: {
        local block = self,
        new():: (
          {}
        ),
        withIsValueSecret(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
          {
            is_value_secret: converted,
          }
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      header:: {
        local block = self,
        new():: (
          {}
        ),
        withIsValueSecret(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
          {
            is_value_secret: converted,
          }
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      query_string:: {
        local block = self,
        new():: (
          {}
        ),
        withIsValueSecret(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
          {
            is_value_secret: converted,
          }
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      withBody(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          body: value,
        }
      ),
      withHeader(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header: value,
        }
      ),
      withQueryString(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_string: value,
        }
      ),
      withBodyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          body+: converted,
        }
      ),
      withHeaderMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          header+: converted,
        }
      ),
      withQueryStringMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          query_string+: converted,
        }
      ),
    },
    oauth:: {
      local block = self,
      new(authorizationEndpoint, httpMethod):: (
        {}
        + block.withAuthorizationEndpoint(authorizationEndpoint)
        + block.withHttpMethod(httpMethod)
      ),
      withAuthorizationEndpoint(value):: (
        local converted = value;
        assert std.isString(converted) : '"authorization_endpoint" expected to be of type "string"';
        {
          authorization_endpoint: converted,
        }
      ),
      withHttpMethod(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_method" expected to be of type "string"';
        {
          http_method: converted,
        }
      ),
      client_parameters:: {
        local block = self,
        new(clientId, clientSecret):: (
          {}
          + block.withClientId(clientId)
          + block.withClientSecret(clientSecret)
        ),
        withClientId(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_id" expected to be of type "string"';
          {
            client_id: converted,
          }
        ),
        withClientSecret(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_secret" expected to be of type "string"';
          {
            client_secret: converted,
          }
        ),
      },
      oauth_http_parameters:: {
        local block = self,
        new():: (
          {}
        ),
        body:: {
          local block = self,
          new():: (
            {}
          ),
          withIsValueSecret(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
            {
              is_value_secret: converted,
            }
          ),
          withKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"value" expected to be of type "string"';
            {
              value: converted,
            }
          ),
        },
        header:: {
          local block = self,
          new():: (
            {}
          ),
          withIsValueSecret(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
            {
              is_value_secret: converted,
            }
          ),
          withKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"value" expected to be of type "string"';
            {
              value: converted,
            }
          ),
        },
        query_string:: {
          local block = self,
          new():: (
            {}
          ),
          withIsValueSecret(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"is_value_secret" expected to be of type "bool"';
            {
              is_value_secret: converted,
            }
          ),
          withKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isString(converted) : '"value" expected to be of type "string"';
            {
              value: converted,
            }
          ),
        },
        withBody(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            body: value,
          }
        ),
        withHeader(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header: value,
          }
        ),
        withQueryString(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_string: value,
          }
        ),
        withBodyMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            body+: converted,
          }
        ),
        withHeaderMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header+: converted,
          }
        ),
        withQueryStringMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_string+: converted,
          }
        ),
      },
      withClientParameters(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_parameters: value,
        }
      ),
      withOauthHttpParameters(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          oauth_http_parameters: value,
        }
      ),
      withClientParametersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_parameters+: converted,
        }
      ),
      withOauthHttpParametersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          oauth_http_parameters+: converted,
        }
      ),
    },
    withApiKey(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        api_key: value,
      }
    ),
    withBasic(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        basic: value,
      }
    ),
    withInvocationHttpParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        invocation_http_parameters: value,
      }
    ),
    withOauth(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oauth: value,
      }
    ),
    withApiKeyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        api_key+: converted,
      }
    ),
    withBasicMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        basic+: converted,
      }
    ),
    withInvocationHttpParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        invocation_http_parameters+: converted,
      }
    ),
    withOauthMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oauth+: converted,
      }
    ),
  },
  invocation_connectivity_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    resource_parameters:: {
      local block = self,
      new(resourceConfigurationArn):: (
        {}
        + block.withResourceConfigurationArn(resourceConfigurationArn)
      ),
      withResourceConfigurationArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_configuration_arn" expected to be of type "string"';
        {
          resource_configuration_arn: converted,
        }
      ),
    },
    withResourceParameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_parameters: value,
      }
    ),
    withResourceParametersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_parameters+: converted,
      }
    ),
  },
  withAuthParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth_parameters: value,
    }
  ),
  withInvocationConnectivityParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      invocation_connectivity_parameters: value,
    }
  ),
  withAuthParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth_parameters+: converted,
    }
  ),
  withInvocationConnectivityParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      invocation_connectivity_parameters+: converted,
    }
  ),
}
