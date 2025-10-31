{
  local block = self,
  new(terraformName, methodPath, restApiId, stageName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_method_settings",
          type:: "resource",
          attributes:: ["id", "method_path", "region", "rest_api_id", "stage_name"],
        },
      },
    }
    + block.withMethodPath(methodPath)
    + block.withRestApiId(restApiId)
    + block.withStageName(stageName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMethodPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"method_path" expected to be of type "string"';
    {
      method_path: converted,
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
  withRestApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  withStageName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage_name" expected to be of type "string"';
    {
      stage_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  settings:: {
    local block = self,
    new():: (
      {}
    ),
    withCacheDataEncrypted(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"cache_data_encrypted" expected to be of type "bool"';
      {
        cache_data_encrypted: converted,
      }
    ),
    withCacheTtlInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cache_ttl_in_seconds" expected to be of type "number"';
      {
        cache_ttl_in_seconds: converted,
      }
    ),
    withCachingEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"caching_enabled" expected to be of type "bool"';
      {
        caching_enabled: converted,
      }
    ),
    withDataTraceEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"data_trace_enabled" expected to be of type "bool"';
      {
        data_trace_enabled: converted,
      }
    ),
    withLoggingLevel(value):: (
      local converted = value;
      assert std.isString(converted) : '"logging_level" expected to be of type "string"';
      {
        logging_level: converted,
      }
    ),
    withMetricsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"metrics_enabled" expected to be of type "bool"';
      {
        metrics_enabled: converted,
      }
    ),
    withRequireAuthorizationForCacheControl(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_authorization_for_cache_control" expected to be of type "bool"';
      {
        require_authorization_for_cache_control: converted,
      }
    ),
    withThrottlingBurstLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_burst_limit" expected to be of type "number"';
      {
        throttling_burst_limit: converted,
      }
    ),
    withThrottlingRateLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_rate_limit" expected to be of type "number"';
      {
        throttling_rate_limit: converted,
      }
    ),
    withUnauthorizedCacheControlHeaderStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"unauthorized_cache_control_header_strategy" expected to be of type "string"';
      {
        unauthorized_cache_control_header_strategy: converted,
      }
    ),
  },
  withSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings: value,
    }
  ),
  withSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings+: converted,
    }
  ),
}
