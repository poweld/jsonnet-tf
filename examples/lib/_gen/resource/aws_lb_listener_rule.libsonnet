{
  local block = self,
  new(terraformName, listenerArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lb_listener_rule",
          type:: "resource",
          attributes:: ["arn", "id", "listener_arn", "priority", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withListenerArn(listenerArn)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withListenerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_arn" expected to be of type "string"';
    {
      listener_arn: converted,
    }
  ),
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  action:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withOrder(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"order" expected to be of type "number"';
      {
        order: converted,
      }
    ),
    withTargetGroupArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_group_arn" expected to be of type "string"';
      {
        target_group_arn: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    authenticate_cognito:: {
      local block = self,
      new(userPoolArn, userPoolClientId, userPoolDomain):: (
        {}
        + block.withUserPoolArn(userPoolArn)
        + block.withUserPoolClientId(userPoolClientId)
        + block.withUserPoolDomain(userPoolDomain)
      ),
      withAuthenticationRequestExtraParams(value):: (
        local converted = value;
        assert std.isObject(converted) : '"authentication_request_extra_params" expected to be of type "map"';
        {
          authentication_request_extra_params: converted,
        }
      ),
      withOnUnauthenticatedRequest(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_unauthenticated_request" expected to be of type "string"';
        {
          on_unauthenticated_request: converted,
        }
      ),
      withScope(value):: (
        local converted = value;
        assert std.isString(converted) : '"scope" expected to be of type "string"';
        {
          scope: converted,
        }
      ),
      withSessionCookieName(value):: (
        local converted = value;
        assert std.isString(converted) : '"session_cookie_name" expected to be of type "string"';
        {
          session_cookie_name: converted,
        }
      ),
      withSessionTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"session_timeout" expected to be of type "number"';
        {
          session_timeout: converted,
        }
      ),
      withUserPoolArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_arn" expected to be of type "string"';
        {
          user_pool_arn: converted,
        }
      ),
      withUserPoolClientId(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_client_id" expected to be of type "string"';
        {
          user_pool_client_id: converted,
        }
      ),
      withUserPoolDomain(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool_domain" expected to be of type "string"';
        {
          user_pool_domain: converted,
        }
      ),
    },
    authenticate_oidc:: {
      local block = self,
      new(authorizationEndpoint, clientId, clientSecret, issuer, tokenEndpoint, userInfoEndpoint):: (
        {}
        + block.withAuthorizationEndpoint(authorizationEndpoint)
        + block.withClientId(clientId)
        + block.withClientSecret(clientSecret)
        + block.withIssuer(issuer)
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
      withOnUnauthenticatedRequest(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_unauthenticated_request" expected to be of type "string"';
        {
          on_unauthenticated_request: converted,
        }
      ),
      withScope(value):: (
        local converted = value;
        assert std.isString(converted) : '"scope" expected to be of type "string"';
        {
          scope: converted,
        }
      ),
      withSessionCookieName(value):: (
        local converted = value;
        assert std.isString(converted) : '"session_cookie_name" expected to be of type "string"';
        {
          session_cookie_name: converted,
        }
      ),
      withSessionTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"session_timeout" expected to be of type "number"';
        {
          session_timeout: converted,
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
    fixed_response:: {
      local block = self,
      new(contentType):: (
        {}
        + block.withContentType(contentType)
      ),
      withContentType(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_type" expected to be of type "string"';
        {
          content_type: converted,
        }
      ),
      withMessageBody(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_body" expected to be of type "string"';
        {
          message_body: converted,
        }
      ),
      withStatusCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"status_code" expected to be of type "string"';
        {
          status_code: converted,
        }
      ),
    },
    forward:: {
      local block = self,
      new():: (
        {}
      ),
      stickiness:: {
        local block = self,
        new(duration):: (
          {}
          + block.withDuration(duration)
        ),
        withDuration(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"duration" expected to be of type "number"';
          {
            duration: converted,
          }
        ),
        withEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
          {
            enabled: converted,
          }
        ),
      },
      target_group:: {
        local block = self,
        new(arn):: (
          {}
          + block.withArn(arn)
        ),
        withArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"arn" expected to be of type "string"';
          {
            arn: converted,
          }
        ),
        withWeight(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"weight" expected to be of type "number"';
          {
            weight: converted,
          }
        ),
      },
      withStickiness(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stickiness: value,
        }
      ),
      withTargetGroup(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group: value,
        }
      ),
      withStickinessMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stickiness+: converted,
        }
      ),
      withTargetGroupMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group+: converted,
        }
      ),
    },
    redirect:: {
      local block = self,
      new(statusCode):: (
        {}
        + block.withStatusCode(statusCode)
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isString(converted) : '"port" expected to be of type "string"';
        {
          port: converted,
        }
      ),
      withProtocol(value):: (
        local converted = value;
        assert std.isString(converted) : '"protocol" expected to be of type "string"';
        {
          protocol: converted,
        }
      ),
      withQuery(value):: (
        local converted = value;
        assert std.isString(converted) : '"query" expected to be of type "string"';
        {
          query: converted,
        }
      ),
      withStatusCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"status_code" expected to be of type "string"';
        {
          status_code: converted,
        }
      ),
    },
    withAuthenticateCognito(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_cognito: value,
      }
    ),
    withAuthenticateOidc(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_oidc: value,
      }
    ),
    withFixedResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response: value,
      }
    ),
    withForward(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward: value,
      }
    ),
    withRedirect(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect: value,
      }
    ),
    withAuthenticateCognitoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_cognito+: converted,
      }
    ),
    withAuthenticateOidcMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_oidc+: converted,
      }
    ),
    withFixedResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response+: converted,
      }
    ),
    withForwardMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward+: converted,
      }
    ),
    withRedirectMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect+: converted,
      }
    ),
  },
  condition:: {
    local block = self,
    new():: (
      {}
    ),
    host_header:: {
      local block = self,
      new(values):: (
        {}
        + block.withValues(values)
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    http_header:: {
      local block = self,
      new(httpHeaderName, values):: (
        {}
        + block.withHttpHeaderName(httpHeaderName)
        + block.withValues(values)
      ),
      withHttpHeaderName(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_header_name" expected to be of type "string"';
        {
          http_header_name: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    http_request_method:: {
      local block = self,
      new(values):: (
        {}
        + block.withValues(values)
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    path_pattern:: {
      local block = self,
      new(values):: (
        {}
        + block.withValues(values)
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    query_string:: {
      local block = self,
      new(value):: (
        {}
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
    source_ip:: {
      local block = self,
      new(values):: (
        {}
        + block.withValues(values)
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    withHostHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        host_header: value,
      }
    ),
    withHttpHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header: value,
      }
    ),
    withHttpRequestMethod(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_request_method: value,
      }
    ),
    withPathPattern(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        path_pattern: value,
      }
    ),
    withQueryString(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string: value,
      }
    ),
    withSourceIp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_ip: value,
      }
    ),
    withHostHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        host_header+: converted,
      }
    ),
    withHttpHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header+: converted,
      }
    ),
    withHttpRequestMethodMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_request_method+: converted,
      }
    ),
    withPathPatternMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        path_pattern+: converted,
      }
    ),
    withQueryStringMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string+: converted,
      }
    ),
    withSourceIpMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_ip+: converted,
      }
    ),
  },
  withAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  withCondition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition: value,
    }
  ),
  withActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  withConditionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition+: converted,
    }
  ),
}
