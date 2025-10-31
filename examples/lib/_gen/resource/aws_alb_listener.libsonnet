{
  local block = self,
  new(terraformName, loadBalancerArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_alb_listener",
          type:: "resource",
          attributes:: ["alpn_policy", "arn", "certificate_arn", "id", "load_balancer_arn", "port", "protocol", "region", "routing_http_request_x_amzn_mtls_clientcert_header_name", "routing_http_request_x_amzn_mtls_clientcert_issuer_header_name", "routing_http_request_x_amzn_mtls_clientcert_leaf_header_name", "routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name", "routing_http_request_x_amzn_mtls_clientcert_subject_header_name", "routing_http_request_x_amzn_mtls_clientcert_validity_header_name", "routing_http_request_x_amzn_tls_cipher_suite_header_name", "routing_http_request_x_amzn_tls_version_header_name", "routing_http_response_access_control_allow_credentials_header_value", "routing_http_response_access_control_allow_headers_header_value", "routing_http_response_access_control_allow_methods_header_value", "routing_http_response_access_control_allow_origin_header_value", "routing_http_response_access_control_expose_headers_header_value", "routing_http_response_access_control_max_age_header_value", "routing_http_response_content_security_policy_header_value", "routing_http_response_server_enabled", "routing_http_response_strict_transport_security_header_value", "routing_http_response_x_content_type_options_header_value", "routing_http_response_x_frame_options_header_value", "ssl_policy", "tags", "tags_all", "tcp_idle_timeout_seconds"],
        },
      },
    }
    + block.withLoadBalancerArn(loadBalancerArn)
  ),
  withAlpnPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"alpn_policy" expected to be of type "string"';
    {
      alpn_policy: converted,
    }
  ),
  withCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
    {
      certificate_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLoadBalancerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_arn" expected to be of type "string"';
    {
      load_balancer_arn: converted,
    }
  ),
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withRoutingHttpRequestXAmznMtlsClientcertHeaderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_header_name: converted,
    }
  ),
  withRoutingHttpRequestXAmznMtlsClientcertIssuerHeaderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_issuer_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_issuer_header_name: converted,
    }
  ),
  withRoutingHttpRequestXAmznMtlsClientcertLeafHeaderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_leaf_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_leaf_header_name: converted,
    }
  ),
  withRoutingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name: converted,
    }
  ),
  withRoutingHttpRequestXAmznMtlsClientcertSubjectHeaderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_subject_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_subject_header_name: converted,
    }
  ),
  withRoutingHttpRequestXAmznMtlsClientcertValidityHeaderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_mtls_clientcert_validity_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_mtls_clientcert_validity_header_name: converted,
    }
  ),
  withRoutingHttpRequestXAmznTlsCipherSuiteHeaderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_tls_cipher_suite_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_tls_cipher_suite_header_name: converted,
    }
  ),
  withRoutingHttpRequestXAmznTlsVersionHeaderName(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_request_x_amzn_tls_version_header_name" expected to be of type "string"';
    {
      routing_http_request_x_amzn_tls_version_header_name: converted,
    }
  ),
  withRoutingHttpResponseAccessControlAllowCredentialsHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_allow_credentials_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_allow_credentials_header_value: converted,
    }
  ),
  withRoutingHttpResponseAccessControlAllowHeadersHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_allow_headers_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_allow_headers_header_value: converted,
    }
  ),
  withRoutingHttpResponseAccessControlAllowMethodsHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_allow_methods_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_allow_methods_header_value: converted,
    }
  ),
  withRoutingHttpResponseAccessControlAllowOriginHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_allow_origin_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_allow_origin_header_value: converted,
    }
  ),
  withRoutingHttpResponseAccessControlExposeHeadersHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_expose_headers_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_expose_headers_header_value: converted,
    }
  ),
  withRoutingHttpResponseAccessControlMaxAgeHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_access_control_max_age_header_value" expected to be of type "string"';
    {
      routing_http_response_access_control_max_age_header_value: converted,
    }
  ),
  withRoutingHttpResponseContentSecurityPolicyHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_content_security_policy_header_value" expected to be of type "string"';
    {
      routing_http_response_content_security_policy_header_value: converted,
    }
  ),
  withRoutingHttpResponseServerEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"routing_http_response_server_enabled" expected to be of type "bool"';
    {
      routing_http_response_server_enabled: converted,
    }
  ),
  withRoutingHttpResponseStrictTransportSecurityHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_strict_transport_security_header_value" expected to be of type "string"';
    {
      routing_http_response_strict_transport_security_header_value: converted,
    }
  ),
  withRoutingHttpResponseXContentTypeOptionsHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_x_content_type_options_header_value" expected to be of type "string"';
    {
      routing_http_response_x_content_type_options_header_value: converted,
    }
  ),
  withRoutingHttpResponseXFrameOptionsHeaderValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_http_response_x_frame_options_header_value" expected to be of type "string"';
    {
      routing_http_response_x_frame_options_header_value: converted,
    }
  ),
  withSslPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssl_policy" expected to be of type "string"';
    {
      ssl_policy: converted,
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
  withTcpIdleTimeoutSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"tcp_idle_timeout_seconds" expected to be of type "number"';
    {
      tcp_idle_timeout_seconds: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  default_action:: {
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
  mutual_authentication:: {
    local block = self,
    new(mode):: (
      {}
      + block.withMode(mode)
    ),
    withAdvertiseTrustStoreCaNames(value):: (
      local converted = value;
      assert std.isString(converted) : '"advertise_trust_store_ca_names" expected to be of type "string"';
      {
        advertise_trust_store_ca_names: converted,
      }
    ),
    withIgnoreClientCertificateExpiry(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ignore_client_certificate_expiry" expected to be of type "bool"';
      {
        ignore_client_certificate_expiry: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    withTrustStoreArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"trust_store_arn" expected to be of type "string"';
      {
        trust_store_arn: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withDefaultAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action: value,
    }
  ),
  withMutualAuthentication(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_authentication: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDefaultActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action+: converted,
    }
  ),
  withMutualAuthenticationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mutual_authentication+: converted,
    }
  ),
}
