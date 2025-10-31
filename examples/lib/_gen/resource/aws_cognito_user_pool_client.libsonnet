{
  local block = self,
  new(terraformName, name, userPoolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cognito_user_pool_client",
          type:: "resource",
          attributes:: ["access_token_validity", "allowed_oauth_flows", "allowed_oauth_flows_user_pool_client", "allowed_oauth_scopes", "auth_session_validity", "callback_urls", "client_secret", "default_redirect_uri", "enable_propagate_additional_user_context_data", "enable_token_revocation", "explicit_auth_flows", "generate_secret", "id", "id_token_validity", "logout_urls", "name", "prevent_user_existence_errors", "read_attributes", "refresh_token_validity", "region", "supported_identity_providers", "user_pool_id", "write_attributes"],
        },
      },
    }
    + block.withName(name)
    + block.withUserPoolId(userPoolId)
  ),
  withAccessTokenValidity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"access_token_validity" expected to be of type "number"';
    {
      access_token_validity: converted,
    }
  ),
  withAllowedOauthFlows(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_oauth_flows" expected to be of type "set"';
    {
      allowed_oauth_flows: converted,
    }
  ),
  withAllowedOauthFlowsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_oauth_flows" expected to be of type "set"';
    {
      allowed_oauth_flows+: converted,
    }
  ),
  withAllowedOauthFlowsUserPoolClient(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allowed_oauth_flows_user_pool_client" expected to be of type "bool"';
    {
      allowed_oauth_flows_user_pool_client: converted,
    }
  ),
  withAllowedOauthScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_oauth_scopes" expected to be of type "set"';
    {
      allowed_oauth_scopes: converted,
    }
  ),
  withAllowedOauthScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_oauth_scopes" expected to be of type "set"';
    {
      allowed_oauth_scopes+: converted,
    }
  ),
  withAuthSessionValidity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"auth_session_validity" expected to be of type "number"';
    {
      auth_session_validity: converted,
    }
  ),
  withCallbackUrls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"callback_urls" expected to be of type "set"';
    {
      callback_urls: converted,
    }
  ),
  withCallbackUrlsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"callback_urls" expected to be of type "set"';
    {
      callback_urls+: converted,
    }
  ),
  withDefaultRedirectUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_redirect_uri" expected to be of type "string"';
    {
      default_redirect_uri: converted,
    }
  ),
  withEnablePropagateAdditionalUserContextData(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_propagate_additional_user_context_data" expected to be of type "bool"';
    {
      enable_propagate_additional_user_context_data: converted,
    }
  ),
  withEnableTokenRevocation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_token_revocation" expected to be of type "bool"';
    {
      enable_token_revocation: converted,
    }
  ),
  withExplicitAuthFlows(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"explicit_auth_flows" expected to be of type "set"';
    {
      explicit_auth_flows: converted,
    }
  ),
  withExplicitAuthFlowsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"explicit_auth_flows" expected to be of type "set"';
    {
      explicit_auth_flows+: converted,
    }
  ),
  withGenerateSecret(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"generate_secret" expected to be of type "bool"';
    {
      generate_secret: converted,
    }
  ),
  withIdTokenValidity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"id_token_validity" expected to be of type "number"';
    {
      id_token_validity: converted,
    }
  ),
  withLogoutUrls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"logout_urls" expected to be of type "set"';
    {
      logout_urls: converted,
    }
  ),
  withLogoutUrlsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"logout_urls" expected to be of type "set"';
    {
      logout_urls+: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPreventUserExistenceErrors(value):: (
    local converted = value;
    assert std.isString(converted) : '"prevent_user_existence_errors" expected to be of type "string"';
    {
      prevent_user_existence_errors: converted,
    }
  ),
  withReadAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"read_attributes" expected to be of type "set"';
    {
      read_attributes: converted,
    }
  ),
  withReadAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"read_attributes" expected to be of type "set"';
    {
      read_attributes+: converted,
    }
  ),
  withRefreshTokenValidity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"refresh_token_validity" expected to be of type "number"';
    {
      refresh_token_validity: converted,
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
  withSupportedIdentityProviders(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_identity_providers" expected to be of type "set"';
    {
      supported_identity_providers: converted,
    }
  ),
  withSupportedIdentityProvidersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_identity_providers" expected to be of type "set"';
    {
      supported_identity_providers+: converted,
    }
  ),
  withUserPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  withWriteAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"write_attributes" expected to be of type "set"';
    {
      write_attributes: converted,
    }
  ),
  withWriteAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"write_attributes" expected to be of type "set"';
    {
      write_attributes+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  analytics_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withApplicationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"application_arn" expected to be of type "string"';
      {
        application_arn: converted,
      }
    ),
    withApplicationId(value):: (
      local converted = value;
      assert std.isString(converted) : '"application_id" expected to be of type "string"';
      {
        application_id: converted,
      }
    ),
    withExternalId(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_id" expected to be of type "string"';
      {
        external_id: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withUserDataShared(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"user_data_shared" expected to be of type "bool"';
      {
        user_data_shared: converted,
      }
    ),
  },
  refresh_token_rotation:: {
    local block = self,
    new(feature):: (
      {}
      + block.withFeature(feature)
    ),
    withFeature(value):: (
      local converted = value;
      assert std.isString(converted) : '"feature" expected to be of type "string"';
      {
        feature: converted,
      }
    ),
    withRetryGracePeriodSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retry_grace_period_seconds" expected to be of type "number"';
      {
        retry_grace_period_seconds: converted,
      }
    ),
  },
  token_validity_units:: {
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
    withIdToken(value):: (
      local converted = value;
      assert std.isString(converted) : '"id_token" expected to be of type "string"';
      {
        id_token: converted,
      }
    ),
    withRefreshToken(value):: (
      local converted = value;
      assert std.isString(converted) : '"refresh_token" expected to be of type "string"';
      {
        refresh_token: converted,
      }
    ),
  },
  withAnalyticsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      analytics_configuration: value,
    }
  ),
  withRefreshTokenRotation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      refresh_token_rotation: value,
    }
  ),
  withTokenValidityUnits(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      token_validity_units: value,
    }
  ),
  withAnalyticsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      analytics_configuration+: converted,
    }
  ),
  withRefreshTokenRotationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      refresh_token_rotation+: converted,
    }
  ),
  withTokenValidityUnitsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      token_validity_units+: converted,
    }
  ),
}
