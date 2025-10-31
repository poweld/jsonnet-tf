{
  local block = self,
  new(terraformName, httpMethod, resourceId, restApiId, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_integration",
          type:: "resource",
          attributes:: ["cache_key_parameters", "cache_namespace", "connection_id", "connection_type", "content_handling", "credentials", "http_method", "id", "integration_http_method", "passthrough_behavior", "region", "request_parameters", "request_templates", "resource_id", "rest_api_id", "timeout_milliseconds", "type", "uri"],
        },
      },
    }
    + block.withHttpMethod(httpMethod)
    + block.withResourceId(resourceId)
    + block.withRestApiId(restApiId)
    + block.withType(type)
  ),
  withCacheKeyParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cache_key_parameters" expected to be of type "set"';
    {
      cache_key_parameters: converted,
    }
  ),
  withCacheKeyParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cache_key_parameters" expected to be of type "set"';
    {
      cache_key_parameters+: converted,
    }
  ),
  withCacheNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_namespace" expected to be of type "string"';
    {
      cache_namespace: converted,
    }
  ),
  withConnectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
    }
  ),
  withConnectionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_type" expected to be of type "string"';
    {
      connection_type: converted,
    }
  ),
  withContentHandling(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_handling" expected to be of type "string"';
    {
      content_handling: converted,
    }
  ),
  withCredentials(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials" expected to be of type "string"';
    {
      credentials: converted,
    }
  ),
  withHttpMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_method" expected to be of type "string"';
    {
      http_method: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIntegrationHttpMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_http_method" expected to be of type "string"';
    {
      integration_http_method: converted,
    }
  ),
  withPassthroughBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"passthrough_behavior" expected to be of type "string"';
    {
      passthrough_behavior: converted,
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
  withRequestParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_parameters" expected to be of type "map"';
    {
      request_parameters: converted,
    }
  ),
  withRequestTemplates(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_templates" expected to be of type "map"';
    {
      request_templates: converted,
    }
  ),
  withResourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  withRestApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  withTimeoutMilliseconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout_milliseconds" expected to be of type "number"';
    {
      timeout_milliseconds: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  tls_config:: {
    local block = self,
    new():: (
      {}
    ),
    withInsecureSkipVerification(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"insecure_skip_verification" expected to be of type "bool"';
      {
        insecure_skip_verification: converted,
      }
    ),
  },
  withTlsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config: value,
    }
  ),
  withTlsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config+: converted,
    }
  ),
}
