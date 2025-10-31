{
  local block = self,
  new(terraformName, enabled):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_distribution",
          type:: "resource",
          attributes:: ["aliases", "anycast_ip_list_id", "arn", "caller_reference", "comment", "continuous_deployment_policy_id", "default_root_object", "domain_name", "enabled", "etag", "hosted_zone_id", "http_version", "id", "in_progress_validation_batches", "is_ipv6_enabled", "last_modified_time", "price_class", "retain_on_delete", "staging", "status", "tags", "tags_all", "trusted_key_groups", "trusted_signers", "wait_for_deployment", "web_acl_id"],
        },
      },
    }
    + block.withEnabled(enabled)
  ),
  withAliases(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases: converted,
    }
  ),
  withAliasesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases+: converted,
    }
  ),
  withAnycastIpListId(value):: (
    local converted = value;
    assert std.isString(converted) : '"anycast_ip_list_id" expected to be of type "string"';
    {
      anycast_ip_list_id: converted,
    }
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withContinuousDeploymentPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"continuous_deployment_policy_id" expected to be of type "string"';
    {
      continuous_deployment_policy_id: converted,
    }
  ),
  withDefaultRootObject(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_root_object" expected to be of type "string"';
    {
      default_root_object: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withHttpVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_version" expected to be of type "string"';
    {
      http_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIsIpv6Enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_ipv6_enabled" expected to be of type "bool"';
    {
      is_ipv6_enabled: converted,
    }
  ),
  withPriceClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"price_class" expected to be of type "string"';
    {
      price_class: converted,
    }
  ),
  withRetainOnDelete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_on_delete" expected to be of type "bool"';
    {
      retain_on_delete: converted,
    }
  ),
  withStaging(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"staging" expected to be of type "bool"';
    {
      staging: converted,
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
  withWaitForDeployment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_deployment" expected to be of type "bool"';
    {
      wait_for_deployment: converted,
    }
  ),
  withWebAclId(value):: (
    local converted = value;
    assert std.isString(converted) : '"web_acl_id" expected to be of type "string"';
    {
      web_acl_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  custom_error_response:: {
    local block = self,
    new(errorCode):: (
      {}
      + block.withErrorCode(errorCode)
    ),
    withErrorCachingMinTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"error_caching_min_ttl" expected to be of type "number"';
      {
        error_caching_min_ttl: converted,
      }
    ),
    withErrorCode(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"error_code" expected to be of type "number"';
      {
        error_code: converted,
      }
    ),
    withResponseCode(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"response_code" expected to be of type "number"';
      {
        response_code: converted,
      }
    ),
    withResponsePagePath(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_page_path" expected to be of type "string"';
      {
        response_page_path: converted,
      }
    ),
  },
  default_cache_behavior:: {
    local block = self,
    new(allowedMethods, cachedMethods, targetOriginId, viewerProtocolPolicy):: (
      {}
      + block.withAllowedMethods(allowedMethods)
      + block.withCachedMethods(cachedMethods)
      + block.withTargetOriginId(targetOriginId)
      + block.withViewerProtocolPolicy(viewerProtocolPolicy)
    ),
    withAllowedMethods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods: converted,
      }
    ),
    withAllowedMethodsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods+: converted,
      }
    ),
    withCachePolicyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"cache_policy_id" expected to be of type "string"';
      {
        cache_policy_id: converted,
      }
    ),
    withCachedMethods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cached_methods" expected to be of type "set"';
      {
        cached_methods: converted,
      }
    ),
    withCachedMethodsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cached_methods" expected to be of type "set"';
      {
        cached_methods+: converted,
      }
    ),
    withCompress(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"compress" expected to be of type "bool"';
      {
        compress: converted,
      }
    ),
    withDefaultTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"default_ttl" expected to be of type "number"';
      {
        default_ttl: converted,
      }
    ),
    withFieldLevelEncryptionId(value):: (
      local converted = value;
      assert std.isString(converted) : '"field_level_encryption_id" expected to be of type "string"';
      {
        field_level_encryption_id: converted,
      }
    ),
    withMaxTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_ttl" expected to be of type "number"';
      {
        max_ttl: converted,
      }
    ),
    withMinTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_ttl" expected to be of type "number"';
      {
        min_ttl: converted,
      }
    ),
    withOriginRequestPolicyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_request_policy_id" expected to be of type "string"';
      {
        origin_request_policy_id: converted,
      }
    ),
    withRealtimeLogConfigArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"realtime_log_config_arn" expected to be of type "string"';
      {
        realtime_log_config_arn: converted,
      }
    ),
    withResponseHeadersPolicyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_headers_policy_id" expected to be of type "string"';
      {
        response_headers_policy_id: converted,
      }
    ),
    withSmoothStreaming(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"smooth_streaming" expected to be of type "bool"';
      {
        smooth_streaming: converted,
      }
    ),
    withTargetOriginId(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_origin_id" expected to be of type "string"';
      {
        target_origin_id: converted,
      }
    ),
    withTrustedKeyGroups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
      {
        trusted_key_groups: converted,
      }
    ),
    withTrustedKeyGroupsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
      {
        trusted_key_groups+: converted,
      }
    ),
    withTrustedSigners(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
      {
        trusted_signers: converted,
      }
    ),
    withTrustedSignersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
      {
        trusted_signers+: converted,
      }
    ),
    withViewerProtocolPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"viewer_protocol_policy" expected to be of type "string"';
      {
        viewer_protocol_policy: converted,
      }
    ),
    forwarded_values:: {
      local block = self,
      new(queryString):: (
        {}
        + block.withQueryString(queryString)
      ),
      withHeaders(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers" expected to be of type "set"';
        {
          headers: converted,
        }
      ),
      withHeadersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers" expected to be of type "set"';
        {
          headers+: converted,
        }
      ),
      withQueryString(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"query_string" expected to be of type "bool"';
        {
          query_string: converted,
        }
      ),
      withQueryStringCacheKeys(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"query_string_cache_keys" expected to be of type "list"';
        {
          query_string_cache_keys: converted,
        }
      ),
      withQueryStringCacheKeysMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"query_string_cache_keys" expected to be of type "list"';
        {
          query_string_cache_keys+: converted,
        }
      ),
      cookies:: {
        local block = self,
        new(forward):: (
          {}
          + block.withForward(forward)
        ),
        withForward(value):: (
          local converted = value;
          assert std.isString(converted) : '"forward" expected to be of type "string"';
          {
            forward: converted,
          }
        ),
        withWhitelistedNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"whitelisted_names" expected to be of type "set"';
          {
            whitelisted_names: converted,
          }
        ),
        withWhitelistedNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"whitelisted_names" expected to be of type "set"';
          {
            whitelisted_names+: converted,
          }
        ),
      },
      withCookies(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cookies: value,
        }
      ),
      withCookiesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cookies+: converted,
        }
      ),
    },
    function_association:: {
      local block = self,
      new(eventType, functionArn):: (
        {}
        + block.withEventType(eventType)
        + block.withFunctionArn(functionArn)
      ),
      withEventType(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_type" expected to be of type "string"';
        {
          event_type: converted,
        }
      ),
      withFunctionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"function_arn" expected to be of type "string"';
        {
          function_arn: converted,
        }
      ),
    },
    grpc_config:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
    },
    lambda_function_association:: {
      local block = self,
      new(eventType, lambdaArn):: (
        {}
        + block.withEventType(eventType)
        + block.withLambdaArn(lambdaArn)
      ),
      withEventType(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_type" expected to be of type "string"';
        {
          event_type: converted,
        }
      ),
      withIncludeBody(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"include_body" expected to be of type "bool"';
        {
          include_body: converted,
        }
      ),
      withLambdaArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
    },
    withForwardedValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_values: value,
      }
    ),
    withFunctionAssociation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        function_association: value,
      }
    ),
    withGrpcConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_config: value,
      }
    ),
    withLambdaFunctionAssociation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_association: value,
      }
    ),
    withForwardedValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_values+: converted,
      }
    ),
    withFunctionAssociationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        function_association+: converted,
      }
    ),
    withGrpcConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_config+: converted,
      }
    ),
    withLambdaFunctionAssociationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_association+: converted,
      }
    ),
  },
  logging_config:: {
    local block = self,
    new(bucket):: (
      {}
      + block.withBucket(bucket)
    ),
    withBucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket" expected to be of type "string"';
      {
        bucket: converted,
      }
    ),
    withIncludeCookies(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_cookies" expected to be of type "bool"';
      {
        include_cookies: converted,
      }
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  ordered_cache_behavior:: {
    local block = self,
    new(allowedMethods, cachedMethods, pathPattern, targetOriginId, viewerProtocolPolicy):: (
      {}
      + block.withAllowedMethods(allowedMethods)
      + block.withCachedMethods(cachedMethods)
      + block.withPathPattern(pathPattern)
      + block.withTargetOriginId(targetOriginId)
      + block.withViewerProtocolPolicy(viewerProtocolPolicy)
    ),
    withAllowedMethods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods: converted,
      }
    ),
    withAllowedMethodsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods+: converted,
      }
    ),
    withCachePolicyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"cache_policy_id" expected to be of type "string"';
      {
        cache_policy_id: converted,
      }
    ),
    withCachedMethods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cached_methods" expected to be of type "set"';
      {
        cached_methods: converted,
      }
    ),
    withCachedMethodsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cached_methods" expected to be of type "set"';
      {
        cached_methods+: converted,
      }
    ),
    withCompress(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"compress" expected to be of type "bool"';
      {
        compress: converted,
      }
    ),
    withDefaultTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"default_ttl" expected to be of type "number"';
      {
        default_ttl: converted,
      }
    ),
    withFieldLevelEncryptionId(value):: (
      local converted = value;
      assert std.isString(converted) : '"field_level_encryption_id" expected to be of type "string"';
      {
        field_level_encryption_id: converted,
      }
    ),
    withMaxTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_ttl" expected to be of type "number"';
      {
        max_ttl: converted,
      }
    ),
    withMinTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_ttl" expected to be of type "number"';
      {
        min_ttl: converted,
      }
    ),
    withOriginRequestPolicyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_request_policy_id" expected to be of type "string"';
      {
        origin_request_policy_id: converted,
      }
    ),
    withPathPattern(value):: (
      local converted = value;
      assert std.isString(converted) : '"path_pattern" expected to be of type "string"';
      {
        path_pattern: converted,
      }
    ),
    withRealtimeLogConfigArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"realtime_log_config_arn" expected to be of type "string"';
      {
        realtime_log_config_arn: converted,
      }
    ),
    withResponseHeadersPolicyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"response_headers_policy_id" expected to be of type "string"';
      {
        response_headers_policy_id: converted,
      }
    ),
    withSmoothStreaming(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"smooth_streaming" expected to be of type "bool"';
      {
        smooth_streaming: converted,
      }
    ),
    withTargetOriginId(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_origin_id" expected to be of type "string"';
      {
        target_origin_id: converted,
      }
    ),
    withTrustedKeyGroups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
      {
        trusted_key_groups: converted,
      }
    ),
    withTrustedKeyGroupsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_key_groups" expected to be of type "list"';
      {
        trusted_key_groups+: converted,
      }
    ),
    withTrustedSigners(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
      {
        trusted_signers: converted,
      }
    ),
    withTrustedSignersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"trusted_signers" expected to be of type "list"';
      {
        trusted_signers+: converted,
      }
    ),
    withViewerProtocolPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"viewer_protocol_policy" expected to be of type "string"';
      {
        viewer_protocol_policy: converted,
      }
    ),
    forwarded_values:: {
      local block = self,
      new(queryString):: (
        {}
        + block.withQueryString(queryString)
      ),
      withHeaders(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers" expected to be of type "set"';
        {
          headers: converted,
        }
      ),
      withHeadersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers" expected to be of type "set"';
        {
          headers+: converted,
        }
      ),
      withQueryString(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"query_string" expected to be of type "bool"';
        {
          query_string: converted,
        }
      ),
      withQueryStringCacheKeys(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"query_string_cache_keys" expected to be of type "list"';
        {
          query_string_cache_keys: converted,
        }
      ),
      withQueryStringCacheKeysMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"query_string_cache_keys" expected to be of type "list"';
        {
          query_string_cache_keys+: converted,
        }
      ),
      cookies:: {
        local block = self,
        new(forward):: (
          {}
          + block.withForward(forward)
        ),
        withForward(value):: (
          local converted = value;
          assert std.isString(converted) : '"forward" expected to be of type "string"';
          {
            forward: converted,
          }
        ),
        withWhitelistedNames(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"whitelisted_names" expected to be of type "set"';
          {
            whitelisted_names: converted,
          }
        ),
        withWhitelistedNamesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"whitelisted_names" expected to be of type "set"';
          {
            whitelisted_names+: converted,
          }
        ),
      },
      withCookies(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cookies: value,
        }
      ),
      withCookiesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cookies+: converted,
        }
      ),
    },
    function_association:: {
      local block = self,
      new(eventType, functionArn):: (
        {}
        + block.withEventType(eventType)
        + block.withFunctionArn(functionArn)
      ),
      withEventType(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_type" expected to be of type "string"';
        {
          event_type: converted,
        }
      ),
      withFunctionArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"function_arn" expected to be of type "string"';
        {
          function_arn: converted,
        }
      ),
    },
    grpc_config:: {
      local block = self,
      new():: (
        {}
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
    },
    lambda_function_association:: {
      local block = self,
      new(eventType, lambdaArn):: (
        {}
        + block.withEventType(eventType)
        + block.withLambdaArn(lambdaArn)
      ),
      withEventType(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_type" expected to be of type "string"';
        {
          event_type: converted,
        }
      ),
      withIncludeBody(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"include_body" expected to be of type "bool"';
        {
          include_body: converted,
        }
      ),
      withLambdaArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_arn" expected to be of type "string"';
        {
          lambda_arn: converted,
        }
      ),
    },
    withForwardedValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_values: value,
      }
    ),
    withFunctionAssociation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        function_association: value,
      }
    ),
    withGrpcConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_config: value,
      }
    ),
    withLambdaFunctionAssociation(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_association: value,
      }
    ),
    withForwardedValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_values+: converted,
      }
    ),
    withFunctionAssociationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        function_association+: converted,
      }
    ),
    withGrpcConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_config+: converted,
      }
    ),
    withLambdaFunctionAssociationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_association+: converted,
      }
    ),
  },
  origin:: {
    local block = self,
    new(domainName, originId):: (
      {}
      + block.withDomainName(domainName)
      + block.withOriginId(originId)
    ),
    withConnectionAttempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"connection_attempts" expected to be of type "number"';
      {
        connection_attempts: converted,
      }
    ),
    withConnectionTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"connection_timeout" expected to be of type "number"';
      {
        connection_timeout: converted,
      }
    ),
    withDomainName(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    withOriginAccessControlId(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_access_control_id" expected to be of type "string"';
      {
        origin_access_control_id: converted,
      }
    ),
    withOriginId(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_id" expected to be of type "string"';
      {
        origin_id: converted,
      }
    ),
    withOriginPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_path" expected to be of type "string"';
      {
        origin_path: converted,
      }
    ),
    withResponseCompletionTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"response_completion_timeout" expected to be of type "number"';
      {
        response_completion_timeout: converted,
      }
    ),
    custom_header:: {
      local block = self,
      new(name, value):: (
        {}
        + block.withName(name)
        + block.withValue(value)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
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
    custom_origin_config:: {
      local block = self,
      new(httpPort, httpsPort, originProtocolPolicy, originSslProtocols):: (
        {}
        + block.withHttpPort(httpPort)
        + block.withHttpsPort(httpsPort)
        + block.withOriginProtocolPolicy(originProtocolPolicy)
        + block.withOriginSslProtocols(originSslProtocols)
      ),
      withHttpPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"http_port" expected to be of type "number"';
        {
          http_port: converted,
        }
      ),
      withHttpsPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"https_port" expected to be of type "number"';
        {
          https_port: converted,
        }
      ),
      withOriginKeepaliveTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"origin_keepalive_timeout" expected to be of type "number"';
        {
          origin_keepalive_timeout: converted,
        }
      ),
      withOriginProtocolPolicy(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin_protocol_policy" expected to be of type "string"';
        {
          origin_protocol_policy: converted,
        }
      ),
      withOriginReadTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"origin_read_timeout" expected to be of type "number"';
        {
          origin_read_timeout: converted,
        }
      ),
      withOriginSslProtocols(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"origin_ssl_protocols" expected to be of type "set"';
        {
          origin_ssl_protocols: converted,
        }
      ),
      withOriginSslProtocolsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"origin_ssl_protocols" expected to be of type "set"';
        {
          origin_ssl_protocols+: converted,
        }
      ),
    },
    origin_shield:: {
      local block = self,
      new(enabled):: (
        {}
        + block.withEnabled(enabled)
      ),
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      withOriginShieldRegion(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin_shield_region" expected to be of type "string"';
        {
          origin_shield_region: converted,
        }
      ),
    },
    s3_origin_config:: {
      local block = self,
      new(originAccessIdentity):: (
        {}
        + block.withOriginAccessIdentity(originAccessIdentity)
      ),
      withOriginAccessIdentity(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin_access_identity" expected to be of type "string"';
        {
          origin_access_identity: converted,
        }
      ),
    },
    vpc_origin_config:: {
      local block = self,
      new(vpcOriginId):: (
        {}
        + block.withVpcOriginId(vpcOriginId)
      ),
      withOriginKeepaliveTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"origin_keepalive_timeout" expected to be of type "number"';
        {
          origin_keepalive_timeout: converted,
        }
      ),
      withOriginReadTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"origin_read_timeout" expected to be of type "number"';
        {
          origin_read_timeout: converted,
        }
      ),
      withVpcOriginId(value):: (
        local converted = value;
        assert std.isString(converted) : '"vpc_origin_id" expected to be of type "string"';
        {
          vpc_origin_id: converted,
        }
      ),
    },
    withCustomHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_header: value,
      }
    ),
    withCustomOriginConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_origin_config: value,
      }
    ),
    withOriginShield(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        origin_shield: value,
      }
    ),
    withS3OriginConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_origin_config: value,
      }
    ),
    withVpcOriginConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_origin_config: value,
      }
    ),
    withCustomHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_header+: converted,
      }
    ),
    withCustomOriginConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_origin_config+: converted,
      }
    ),
    withOriginShieldMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        origin_shield+: converted,
      }
    ),
    withS3OriginConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_origin_config+: converted,
      }
    ),
    withVpcOriginConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vpc_origin_config+: converted,
      }
    ),
  },
  origin_group:: {
    local block = self,
    new(originId):: (
      {}
      + block.withOriginId(originId)
    ),
    withOriginId(value):: (
      local converted = value;
      assert std.isString(converted) : '"origin_id" expected to be of type "string"';
      {
        origin_id: converted,
      }
    ),
    failover_criteria:: {
      local block = self,
      new(statusCodes):: (
        {}
        + block.withStatusCodes(statusCodes)
      ),
      withStatusCodes(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"status_codes" expected to be of type "set"';
        {
          status_codes: converted,
        }
      ),
      withStatusCodesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"status_codes" expected to be of type "set"';
        {
          status_codes+: converted,
        }
      ),
    },
    member:: {
      local block = self,
      new(originId):: (
        {}
        + block.withOriginId(originId)
      ),
      withOriginId(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin_id" expected to be of type "string"';
        {
          origin_id: converted,
        }
      ),
    },
    withFailoverCriteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failover_criteria: value,
      }
    ),
    withMember(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        member: value,
      }
    ),
    withFailoverCriteriaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failover_criteria+: converted,
      }
    ),
    withMemberMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        member+: converted,
      }
    ),
  },
  restrictions:: {
    local block = self,
    new():: (
      {}
    ),
    geo_restriction:: {
      local block = self,
      new(restrictionType):: (
        {}
        + block.withRestrictionType(restrictionType)
      ),
      withLocations(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"locations" expected to be of type "set"';
        {
          locations: converted,
        }
      ),
      withLocationsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"locations" expected to be of type "set"';
        {
          locations+: converted,
        }
      ),
      withRestrictionType(value):: (
        local converted = value;
        assert std.isString(converted) : '"restriction_type" expected to be of type "string"';
        {
          restriction_type: converted,
        }
      ),
    },
    withGeoRestriction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_restriction: value,
      }
    ),
    withGeoRestrictionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        geo_restriction+: converted,
      }
    ),
  },
  viewer_certificate:: {
    local block = self,
    new():: (
      {}
    ),
    withAcmCertificateArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"acm_certificate_arn" expected to be of type "string"';
      {
        acm_certificate_arn: converted,
      }
    ),
    withCloudfrontDefaultCertificate(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"cloudfront_default_certificate" expected to be of type "bool"';
      {
        cloudfront_default_certificate: converted,
      }
    ),
    withIamCertificateId(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_certificate_id" expected to be of type "string"';
      {
        iam_certificate_id: converted,
      }
    ),
    withMinimumProtocolVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"minimum_protocol_version" expected to be of type "string"';
      {
        minimum_protocol_version: converted,
      }
    ),
    withSslSupportMethod(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssl_support_method" expected to be of type "string"';
      {
        ssl_support_method: converted,
      }
    ),
  },
  withCustomErrorResponse(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_error_response: value,
    }
  ),
  withDefaultCacheBehavior(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_cache_behavior: value,
    }
  ),
  withLoggingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config: value,
    }
  ),
  withOrderedCacheBehavior(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ordered_cache_behavior: value,
    }
  ),
  withOrigin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin: value,
    }
  ),
  withOriginGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin_group: value,
    }
  ),
  withRestrictions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      restrictions: value,
    }
  ),
  withViewerCertificate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      viewer_certificate: value,
    }
  ),
  withCustomErrorResponseMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_error_response+: converted,
    }
  ),
  withDefaultCacheBehaviorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_cache_behavior+: converted,
    }
  ),
  withLoggingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config+: converted,
    }
  ),
  withOrderedCacheBehaviorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ordered_cache_behavior+: converted,
    }
  ),
  withOriginMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin+: converted,
    }
  ),
  withOriginGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin_group+: converted,
    }
  ),
  withRestrictionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      restrictions+: converted,
    }
  ),
  withViewerCertificateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      viewer_certificate+: converted,
    }
  ),
}
