{
  local block = self,
  new(terraformName, connectionMode, connectorType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appflow_connector_profile",
          type:: "resource",
          attributes:: ["arn", "connection_mode", "connector_label", "connector_type", "credentials_arn", "id", "kms_arn", "name", "region"],
        },
      },
    }
    + block.withConnectionMode(connectionMode)
    + block.withConnectorType(connectorType)
    + block.withName(name)
  ),
  withConnectionMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_mode" expected to be of type "string"';
    {
      connection_mode: converted,
    }
  ),
  withConnectorLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"connector_label" expected to be of type "string"';
    {
      connector_label: converted,
    }
  ),
  withConnectorType(value):: (
    local converted = value;
    assert std.isString(converted) : '"connector_type" expected to be of type "string"';
    {
      connector_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_arn" expected to be of type "string"';
    {
      kms_arn: converted,
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
  connector_profile_config:: {
    local block = self,
    new():: (
      {}
    ),
    connector_profile_credentials:: {
      local block = self,
      new():: (
        {}
      ),
      amplitude:: {
        local block = self,
        new(apiKey, secretKey):: (
          {}
          + block.withApiKey(apiKey)
          + block.withSecretKey(secretKey)
        ),
        withApiKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_key" expected to be of type "string"';
          {
            api_key: converted,
          }
        ),
        withSecretKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"secret_key" expected to be of type "string"';
          {
            secret_key: converted,
          }
        ),
      },
      custom_connector:: {
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
        api_key:: {
          local block = self,
          new(apiKey):: (
            {}
            + block.withApiKey(apiKey)
          ),
          withApiKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"api_key" expected to be of type "string"';
            {
              api_key: converted,
            }
          ),
          withApiSecretKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"api_secret_key" expected to be of type "string"';
            {
              api_secret_key: converted,
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
        custom:: {
          local block = self,
          new(customAuthenticationType):: (
            {}
            + block.withCustomAuthenticationType(customAuthenticationType)
          ),
          withCredentialsMap(value):: (
            local converted = value;
            assert std.isObject(converted) : '"credentials_map" expected to be of type "map"';
            {
              credentials_map: converted,
            }
          ),
          withCustomAuthenticationType(value):: (
            local converted = value;
            assert std.isString(converted) : '"custom_authentication_type" expected to be of type "string"';
            {
              custom_authentication_type: converted,
            }
          ),
        },
        oauth2:: {
          local block = self,
          new():: (
            {}
          ),
          withAccessToken(value):: (
            local converted = value;
            assert std.isString(converted) : '"access_token" expected to be of type "string"';
            {
              access_token: converted,
            }
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
          withRefreshToken(value):: (
            local converted = value;
            assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
            {
              refresh_token: converted,
            }
          ),
          oauth_request:: {
            local block = self,
            new():: (
              {}
            ),
            withAuthCode(value):: (
              local converted = value;
              assert std.isString(converted) : '"auth_code" expected to be of type "string"';
              {
                auth_code: converted,
              }
            ),
            withRedirectUri(value):: (
              local converted = value;
              assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
              {
                redirect_uri: converted,
              }
            ),
          },
          withOauthRequest(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              oauth_request: value,
            }
          ),
          withOauthRequestMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              oauth_request+: converted,
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
        withCustom(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            custom: value,
          }
        ),
        withOauth2(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth2: value,
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
        withCustomMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            custom+: converted,
          }
        ),
        withOauth2Mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth2+: converted,
          }
        ),
      },
      datadog:: {
        local block = self,
        new(apiKey, applicationKey):: (
          {}
          + block.withApiKey(apiKey)
          + block.withApplicationKey(applicationKey)
        ),
        withApiKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_key" expected to be of type "string"';
          {
            api_key: converted,
          }
        ),
        withApplicationKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"application_key" expected to be of type "string"';
          {
            application_key: converted,
          }
        ),
      },
      dynatrace:: {
        local block = self,
        new(apiToken):: (
          {}
          + block.withApiToken(apiToken)
        ),
        withApiToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_token" expected to be of type "string"';
          {
            api_token: converted,
          }
        ),
      },
      google_analytics:: {
        local block = self,
        new(clientId, clientSecret):: (
          {}
          + block.withClientId(clientId)
          + block.withClientSecret(clientSecret)
        ),
        withAccessToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
          }
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
        withRefreshToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
          {
            refresh_token: converted,
          }
        ),
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          withAuthCode(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          withRedirectUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        withOauthRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        withOauthRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      honeycode:: {
        local block = self,
        new():: (
          {}
        ),
        withAccessToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
          }
        ),
        withRefreshToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
          {
            refresh_token: converted,
          }
        ),
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          withAuthCode(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          withRedirectUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        withOauthRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        withOauthRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      infor_nexus:: {
        local block = self,
        new(accessKeyId, datakey, secretAccessKey, userId):: (
          {}
          + block.withAccessKeyId(accessKeyId)
          + block.withDatakey(datakey)
          + block.withSecretAccessKey(secretAccessKey)
          + block.withUserId(userId)
        ),
        withAccessKeyId(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_key_id" expected to be of type "string"';
          {
            access_key_id: converted,
          }
        ),
        withDatakey(value):: (
          local converted = value;
          assert std.isString(converted) : '"datakey" expected to be of type "string"';
          {
            datakey: converted,
          }
        ),
        withSecretAccessKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"secret_access_key" expected to be of type "string"';
          {
            secret_access_key: converted,
          }
        ),
        withUserId(value):: (
          local converted = value;
          assert std.isString(converted) : '"user_id" expected to be of type "string"';
          {
            user_id: converted,
          }
        ),
      },
      marketo:: {
        local block = self,
        new(clientId, clientSecret):: (
          {}
          + block.withClientId(clientId)
          + block.withClientSecret(clientSecret)
        ),
        withAccessToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
          }
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
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          withAuthCode(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          withRedirectUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        withOauthRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        withOauthRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      redshift:: {
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
      salesforce:: {
        local block = self,
        new():: (
          {}
        ),
        withAccessToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
          }
        ),
        withClientCredentialsArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_credentials_arn" expected to be of type "string"';
          {
            client_credentials_arn: converted,
          }
        ),
        withJwtToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"jwt_token" expected to be of type "string"';
          {
            jwt_token: converted,
          }
        ),
        withOauth2GrantType(value):: (
          local converted = value;
          assert std.isString(converted) : '"oauth2_grant_type" expected to be of type "string"';
          {
            oauth2_grant_type: converted,
          }
        ),
        withRefreshToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
          {
            refresh_token: converted,
          }
        ),
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          withAuthCode(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          withRedirectUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        withOauthRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        withOauthRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      sapo_data:: {
        local block = self,
        new():: (
          {}
        ),
        basic_auth_credentials:: {
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
        oauth_credentials:: {
          local block = self,
          new(clientId, clientSecret):: (
            {}
            + block.withClientId(clientId)
            + block.withClientSecret(clientSecret)
          ),
          withAccessToken(value):: (
            local converted = value;
            assert std.isString(converted) : '"access_token" expected to be of type "string"';
            {
              access_token: converted,
            }
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
          withRefreshToken(value):: (
            local converted = value;
            assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
            {
              refresh_token: converted,
            }
          ),
          oauth_request:: {
            local block = self,
            new():: (
              {}
            ),
            withAuthCode(value):: (
              local converted = value;
              assert std.isString(converted) : '"auth_code" expected to be of type "string"';
              {
                auth_code: converted,
              }
            ),
            withRedirectUri(value):: (
              local converted = value;
              assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
              {
                redirect_uri: converted,
              }
            ),
          },
          withOauthRequest(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              oauth_request: value,
            }
          ),
          withOauthRequestMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              oauth_request+: converted,
            }
          ),
        },
        withBasicAuthCredentials(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            basic_auth_credentials: value,
          }
        ),
        withOauthCredentials(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_credentials: value,
          }
        ),
        withBasicAuthCredentialsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            basic_auth_credentials+: converted,
          }
        ),
        withOauthCredentialsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_credentials+: converted,
          }
        ),
      },
      service_now:: {
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
      singular:: {
        local block = self,
        new(apiKey):: (
          {}
          + block.withApiKey(apiKey)
        ),
        withApiKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_key" expected to be of type "string"';
          {
            api_key: converted,
          }
        ),
      },
      slack:: {
        local block = self,
        new(clientId, clientSecret):: (
          {}
          + block.withClientId(clientId)
          + block.withClientSecret(clientSecret)
        ),
        withAccessToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
          }
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
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          withAuthCode(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          withRedirectUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        withOauthRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        withOauthRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      snowflake:: {
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
      trendmicro:: {
        local block = self,
        new(apiSecretKey):: (
          {}
          + block.withApiSecretKey(apiSecretKey)
        ),
        withApiSecretKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"api_secret_key" expected to be of type "string"';
          {
            api_secret_key: converted,
          }
        ),
      },
      veeva:: {
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
      zendesk:: {
        local block = self,
        new(clientId, clientSecret):: (
          {}
          + block.withClientId(clientId)
          + block.withClientSecret(clientSecret)
        ),
        withAccessToken(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_token" expected to be of type "string"';
          {
            access_token: converted,
          }
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
        oauth_request:: {
          local block = self,
          new():: (
            {}
          ),
          withAuthCode(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code" expected to be of type "string"';
            {
              auth_code: converted,
            }
          ),
          withRedirectUri(value):: (
            local converted = value;
            assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
            {
              redirect_uri: converted,
            }
          ),
        },
        withOauthRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request: value,
          }
        ),
        withOauthRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_request+: converted,
          }
        ),
      },
      withAmplitude(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amplitude: value,
        }
      ),
      withCustomConnector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector: value,
        }
      ),
      withDatadog(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          datadog: value,
        }
      ),
      withDynatrace(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dynatrace: value,
        }
      ),
      withGoogleAnalytics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          google_analytics: value,
        }
      ),
      withHoneycode(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode: value,
        }
      ),
      withInforNexus(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          infor_nexus: value,
        }
      ),
      withMarketo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo: value,
        }
      ),
      withRedshift(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift: value,
        }
      ),
      withSalesforce(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce: value,
        }
      ),
      withSapoData(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data: value,
        }
      ),
      withServiceNow(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          service_now: value,
        }
      ),
      withSingular(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          singular: value,
        }
      ),
      withSlack(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          slack: value,
        }
      ),
      withSnowflake(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake: value,
        }
      ),
      withTrendmicro(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          trendmicro: value,
        }
      ),
      withVeeva(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          veeva: value,
        }
      ),
      withZendesk(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk: value,
        }
      ),
      withAmplitudeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amplitude+: converted,
        }
      ),
      withCustomConnectorMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector+: converted,
        }
      ),
      withDatadogMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          datadog+: converted,
        }
      ),
      withDynatraceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dynatrace+: converted,
        }
      ),
      withGoogleAnalyticsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          google_analytics+: converted,
        }
      ),
      withHoneycodeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode+: converted,
        }
      ),
      withInforNexusMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          infor_nexus+: converted,
        }
      ),
      withMarketoMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo+: converted,
        }
      ),
      withRedshiftMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift+: converted,
        }
      ),
      withSalesforceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce+: converted,
        }
      ),
      withSapoDataMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data+: converted,
        }
      ),
      withServiceNowMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          service_now+: converted,
        }
      ),
      withSingularMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          singular+: converted,
        }
      ),
      withSlackMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          slack+: converted,
        }
      ),
      withSnowflakeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake+: converted,
        }
      ),
      withTrendmicroMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          trendmicro+: converted,
        }
      ),
      withVeevaMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          veeva+: converted,
        }
      ),
      withZendeskMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk+: converted,
        }
      ),
    },
    connector_profile_properties:: {
      local block = self,
      new():: (
        {}
      ),
      amplitude:: {
        local block = self,
        new():: (
          {}
        ),
      },
      custom_connector:: {
        local block = self,
        new():: (
          {}
        ),
        withProfileProperties(value):: (
          local converted = value;
          assert std.isObject(converted) : '"profile_properties" expected to be of type "map"';
          {
            profile_properties: converted,
          }
        ),
        oauth2_properties:: {
          local block = self,
          new(oauth2GrantType, tokenUrl):: (
            {}
            + block.withOauth2GrantType(oauth2GrantType)
            + block.withTokenUrl(tokenUrl)
          ),
          withOauth2GrantType(value):: (
            local converted = value;
            assert std.isString(converted) : '"oauth2_grant_type" expected to be of type "string"';
            {
              oauth2_grant_type: converted,
            }
          ),
          withTokenUrl(value):: (
            local converted = value;
            assert std.isString(converted) : '"token_url" expected to be of type "string"';
            {
              token_url: converted,
            }
          ),
          withTokenUrlCustomProperties(value):: (
            local converted = value;
            assert std.isObject(converted) : '"token_url_custom_properties" expected to be of type "map"';
            {
              token_url_custom_properties: converted,
            }
          ),
        },
        withOauth2Properties(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth2_properties: value,
          }
        ),
        withOauth2PropertiesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth2_properties+: converted,
          }
        ),
      },
      datadog:: {
        local block = self,
        new(instanceUrl):: (
          {}
          + block.withInstanceUrl(instanceUrl)
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      dynatrace:: {
        local block = self,
        new(instanceUrl):: (
          {}
          + block.withInstanceUrl(instanceUrl)
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      google_analytics:: {
        local block = self,
        new():: (
          {}
        ),
      },
      honeycode:: {
        local block = self,
        new():: (
          {}
        ),
      },
      infor_nexus:: {
        local block = self,
        new(instanceUrl):: (
          {}
          + block.withInstanceUrl(instanceUrl)
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      marketo:: {
        local block = self,
        new(instanceUrl):: (
          {}
          + block.withInstanceUrl(instanceUrl)
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      redshift:: {
        local block = self,
        new(bucketName, roleArn):: (
          {}
          + block.withBucketName(bucketName)
          + block.withRoleArn(roleArn)
        ),
        withBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        withBucketPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        withClusterIdentifier(value):: (
          local converted = value;
          assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
          {
            cluster_identifier: converted,
          }
        ),
        withDataApiRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"data_api_role_arn" expected to be of type "string"';
          {
            data_api_role_arn: converted,
          }
        ),
        withDatabaseName(value):: (
          local converted = value;
          assert std.isString(converted) : '"database_name" expected to be of type "string"';
          {
            database_name: converted,
          }
        ),
        withDatabaseUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"database_url" expected to be of type "string"';
          {
            database_url: converted,
          }
        ),
        withRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"role_arn" expected to be of type "string"';
          {
            role_arn: converted,
          }
        ),
      },
      salesforce:: {
        local block = self,
        new():: (
          {}
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
        withIsSandboxEnvironment(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"is_sandbox_environment" expected to be of type "bool"';
          {
            is_sandbox_environment: converted,
          }
        ),
        withUsePrivatelinkForMetadataAndAuthorization(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"use_privatelink_for_metadata_and_authorization" expected to be of type "bool"';
          {
            use_privatelink_for_metadata_and_authorization: converted,
          }
        ),
      },
      sapo_data:: {
        local block = self,
        new(applicationHostUrl, applicationServicePath, clientNumber, portNumber):: (
          {}
          + block.withApplicationHostUrl(applicationHostUrl)
          + block.withApplicationServicePath(applicationServicePath)
          + block.withClientNumber(clientNumber)
          + block.withPortNumber(portNumber)
        ),
        withApplicationHostUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"application_host_url" expected to be of type "string"';
          {
            application_host_url: converted,
          }
        ),
        withApplicationServicePath(value):: (
          local converted = value;
          assert std.isString(converted) : '"application_service_path" expected to be of type "string"';
          {
            application_service_path: converted,
          }
        ),
        withClientNumber(value):: (
          local converted = value;
          assert std.isString(converted) : '"client_number" expected to be of type "string"';
          {
            client_number: converted,
          }
        ),
        withLogonLanguage(value):: (
          local converted = value;
          assert std.isString(converted) : '"logon_language" expected to be of type "string"';
          {
            logon_language: converted,
          }
        ),
        withPortNumber(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port_number" expected to be of type "number"';
          {
            port_number: converted,
          }
        ),
        withPrivateLinkServiceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"private_link_service_name" expected to be of type "string"';
          {
            private_link_service_name: converted,
          }
        ),
        oauth_properties:: {
          local block = self,
          new(authCodeUrl, oauthScopes, tokenUrl):: (
            {}
            + block.withAuthCodeUrl(authCodeUrl)
            + block.withOauthScopes(oauthScopes)
            + block.withTokenUrl(tokenUrl)
          ),
          withAuthCodeUrl(value):: (
            local converted = value;
            assert std.isString(converted) : '"auth_code_url" expected to be of type "string"';
            {
              auth_code_url: converted,
            }
          ),
          withOauthScopes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"oauth_scopes" expected to be of type "list"';
            {
              oauth_scopes: converted,
            }
          ),
          withOauthScopesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert std.isArray(converted) : '"oauth_scopes" expected to be of type "list"';
            {
              oauth_scopes+: converted,
            }
          ),
          withTokenUrl(value):: (
            local converted = value;
            assert std.isString(converted) : '"token_url" expected to be of type "string"';
            {
              token_url: converted,
            }
          ),
        },
        withOauthProperties(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_properties: value,
          }
        ),
        withOauthPropertiesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            oauth_properties+: converted,
          }
        ),
      },
      service_now:: {
        local block = self,
        new(instanceUrl):: (
          {}
          + block.withInstanceUrl(instanceUrl)
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      singular:: {
        local block = self,
        new():: (
          {}
        ),
      },
      slack:: {
        local block = self,
        new(instanceUrl):: (
          {}
          + block.withInstanceUrl(instanceUrl)
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      snowflake:: {
        local block = self,
        new(bucketName, stage, warehouse):: (
          {}
          + block.withBucketName(bucketName)
          + block.withStage(stage)
          + block.withWarehouse(warehouse)
        ),
        withAccountName(value):: (
          local converted = value;
          assert std.isString(converted) : '"account_name" expected to be of type "string"';
          {
            account_name: converted,
          }
        ),
        withBucketName(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
          {
            bucket_name: converted,
          }
        ),
        withBucketPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
          {
            bucket_prefix: converted,
          }
        ),
        withPrivateLinkServiceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"private_link_service_name" expected to be of type "string"';
          {
            private_link_service_name: converted,
          }
        ),
        withRegion(value):: (
          local converted = value;
          assert std.isString(converted) : '"region" expected to be of type "string"';
          {
            region: converted,
          }
        ),
        withStage(value):: (
          local converted = value;
          assert std.isString(converted) : '"stage" expected to be of type "string"';
          {
            stage: converted,
          }
        ),
        withWarehouse(value):: (
          local converted = value;
          assert std.isString(converted) : '"warehouse" expected to be of type "string"';
          {
            warehouse: converted,
          }
        ),
      },
      trendmicro:: {
        local block = self,
        new():: (
          {}
        ),
      },
      veeva:: {
        local block = self,
        new(instanceUrl):: (
          {}
          + block.withInstanceUrl(instanceUrl)
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      zendesk:: {
        local block = self,
        new(instanceUrl):: (
          {}
          + block.withInstanceUrl(instanceUrl)
        ),
        withInstanceUrl(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_url" expected to be of type "string"';
          {
            instance_url: converted,
          }
        ),
      },
      withAmplitude(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amplitude: value,
        }
      ),
      withCustomConnector(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector: value,
        }
      ),
      withDatadog(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          datadog: value,
        }
      ),
      withDynatrace(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dynatrace: value,
        }
      ),
      withGoogleAnalytics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          google_analytics: value,
        }
      ),
      withHoneycode(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode: value,
        }
      ),
      withInforNexus(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          infor_nexus: value,
        }
      ),
      withMarketo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo: value,
        }
      ),
      withRedshift(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift: value,
        }
      ),
      withSalesforce(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce: value,
        }
      ),
      withSapoData(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data: value,
        }
      ),
      withServiceNow(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          service_now: value,
        }
      ),
      withSingular(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          singular: value,
        }
      ),
      withSlack(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          slack: value,
        }
      ),
      withSnowflake(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake: value,
        }
      ),
      withTrendmicro(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          trendmicro: value,
        }
      ),
      withVeeva(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          veeva: value,
        }
      ),
      withZendesk(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk: value,
        }
      ),
      withAmplitudeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          amplitude+: converted,
        }
      ),
      withCustomConnectorMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          custom_connector+: converted,
        }
      ),
      withDatadogMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          datadog+: converted,
        }
      ),
      withDynatraceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dynatrace+: converted,
        }
      ),
      withGoogleAnalyticsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          google_analytics+: converted,
        }
      ),
      withHoneycodeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          honeycode+: converted,
        }
      ),
      withInforNexusMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          infor_nexus+: converted,
        }
      ),
      withMarketoMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          marketo+: converted,
        }
      ),
      withRedshiftMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          redshift+: converted,
        }
      ),
      withSalesforceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          salesforce+: converted,
        }
      ),
      withSapoDataMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          sapo_data+: converted,
        }
      ),
      withServiceNowMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          service_now+: converted,
        }
      ),
      withSingularMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          singular+: converted,
        }
      ),
      withSlackMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          slack+: converted,
        }
      ),
      withSnowflakeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          snowflake+: converted,
        }
      ),
      withTrendmicroMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          trendmicro+: converted,
        }
      ),
      withVeevaMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          veeva+: converted,
        }
      ),
      withZendeskMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          zendesk+: converted,
        }
      ),
    },
    withConnectorProfileCredentials(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_profile_credentials: value,
      }
    ),
    withConnectorProfileProperties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_profile_properties: value,
      }
    ),
    withConnectorProfileCredentialsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_profile_credentials+: converted,
      }
    ),
    withConnectorProfilePropertiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connector_profile_properties+: converted,
      }
    ),
  },
  withConnectorProfileConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connector_profile_config: value,
    }
  ),
  withConnectorProfileConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connector_profile_config+: converted,
    }
  ),
}
