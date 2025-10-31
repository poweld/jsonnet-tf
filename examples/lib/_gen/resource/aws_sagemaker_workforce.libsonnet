{
  local block = self,
  new(terraformName, workforceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_workforce",
          type:: "resource",
          attributes:: ["arn", "id", "region", "subdomain", "workforce_name"],
        },
      },
    }
    + block.withWorkforceName(workforceName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withWorkforceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"workforce_name" expected to be of type "string"';
    {
      workforce_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cognito_config:: {
    local block = self,
    new(clientId, userPool):: (
      {}
      + block.withClientId(clientId)
      + block.withUserPool(userPool)
    ),
    withClientId(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    withUserPool(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_pool" expected to be of type "string"';
      {
        user_pool: converted,
      }
    ),
  },
  oidc_config:: {
    local block = self,
    new(authorizationEndpoint, clientId, clientSecret, issuer, jwksUri, logoutEndpoint, tokenEndpoint, userInfoEndpoint):: (
      {}
      + block.withAuthorizationEndpoint(authorizationEndpoint)
      + block.withClientId(clientId)
      + block.withClientSecret(clientSecret)
      + block.withIssuer(issuer)
      + block.withJwksUri(jwksUri)
      + block.withLogoutEndpoint(logoutEndpoint)
      + block.withTokenEndpoint(tokenEndpoint)
      + block.withUserInfoEndpoint(userInfoEndpoint)
    ),
    withAuthenticationRequestExtraParams(value):: (
      local converted = value;
      assert std.isObject(converted) : '"authentication_request_extra_params" expected to be of type "map"';
      {
        authentication_request_extra_params: converted,
      }
    ),
    withAuthorizationEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"authorization_endpoint" expected to be of type "string"';
      {
        authorization_endpoint: converted,
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
    withIssuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
    withJwksUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"jwks_uri" expected to be of type "string"';
      {
        jwks_uri: converted,
      }
    ),
    withLogoutEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"logout_endpoint" expected to be of type "string"';
      {
        logout_endpoint: converted,
      }
    ),
    withScope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
    withTokenEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"token_endpoint" expected to be of type "string"';
      {
        token_endpoint: converted,
      }
    ),
    withUserInfoEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_info_endpoint" expected to be of type "string"';
      {
        user_info_endpoint: converted,
      }
    ),
  },
  source_ip_config:: {
    local block = self,
    new(cidrs):: (
      {}
      + block.withCidrs(cidrs)
    ),
    withCidrs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
      {
        cidrs: converted,
      }
    ),
    withCidrsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
      {
        cidrs+: converted,
      }
    ),
  },
  workforce_vpc_config:: {
    local block = self,
    new():: (
      {}
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    withSubnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    withSubnetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  withCognitoConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_config: value,
    }
  ),
  withOidcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc_config: value,
    }
  ),
  withSourceIpConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_ip_config: value,
    }
  ),
  withWorkforceVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workforce_vpc_config: value,
    }
  ),
  withCognitoConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_config+: converted,
    }
  ),
  withOidcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc_config+: converted,
    }
  ),
  withSourceIpConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_ip_config+: converted,
    }
  ),
  withWorkforceVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workforce_vpc_config+: converted,
    }
  ),
}
