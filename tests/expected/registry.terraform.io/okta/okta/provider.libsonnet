{
  version:: "~> 5.3.0",
  source:: "okta/okta",
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "registry.terraform.io/okta/okta",
        terraformType:: "provider",
        terraformPrefix:: "",
        terraformAttributes:: ["access_token", "api_token", "backoff", "base_url", "client_id", "http_proxy", "log_level", "max_api_capacity", "max_retries", "max_wait_seconds", "min_wait_seconds", "org_name", "parallelism", "private_key", "private_key_id", "request_timeout", "scopes"],
      },
    }
    + block.withTerraformName(terraformName)
  ),
  "#withAccessToken":: "Bearer token granting privileges to Okta API.",
  withAccessToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_token" expected to be of type "string"';
    {
      access_token: converted,
    }
  ),
  "#withApiToken":: "API Token granting privileges to Okta API.",
  withApiToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_token" expected to be of type "string"';
    {
      api_token: converted,
    }
  ),
  "#withBackoff":: "Use exponential back off strategy for rate limits.",
  withBackoff(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"backoff" expected to be of type "bool"';
    {
      backoff: converted,
    }
  ),
  "#withBaseUrl":: "The Okta url. (Use 'oktapreview.com' for Okta testing)",
  withBaseUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_url" expected to be of type "string"';
    {
      base_url: converted,
    }
  ),
  "#withClientId":: "API Token granting privileges to Okta API.",
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  "#withHttpProxy":: "Alternate HTTP proxy of scheme://hostname or scheme://hostname:port format",
  withHttpProxy(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_proxy" expected to be of type "string"';
    {
      http_proxy: converted,
    }
  ),
  "#withLogLevel":: "providers log level. Minimum is 1 (TRACE), and maximum is 5 (ERROR)",
  withLogLevel(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"log_level" expected to be of type "number"';
    {
      log_level: converted,
    }
  ),
  "#withMaxApiCapacity":: "Sets what percentage of capacity the provider can use of the total rate limit capacity while making calls to the Okta management API endpoints. Okta API operates in one minute buckets. See Okta Management API Rate Limits: https://developer.okta.com/docs/reference/rl-global-mgmt/",
  withMaxApiCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_api_capacity" expected to be of type "number"';
    {
      max_api_capacity: converted,
    }
  ),
  "#withMaxRetries":: "maximum number of retries to attempt before erroring out.",
  withMaxRetries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
    {
      max_retries: converted,
    }
  ),
  "#withMaxWaitSeconds":: "maximum seconds to wait when rate limit is hit. We use exponential backoffs when backoff is enabled.",
  withMaxWaitSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_wait_seconds" expected to be of type "number"';
    {
      max_wait_seconds: converted,
    }
  ),
  "#withMinWaitSeconds":: "minimum seconds to wait when rate limit is hit. We use exponential backoffs when backoff is enabled.",
  withMinWaitSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_wait_seconds" expected to be of type "number"';
    {
      min_wait_seconds: converted,
    }
  ),
  "#withOrgName":: "The organization to manage in Okta.",
  withOrgName(value):: (
    local converted = value;
    assert std.isString(converted) : '"org_name" expected to be of type "string"';
    {
      org_name: converted,
    }
  ),
  "#withParallelism":: "Number of concurrent requests to make within a resource where bulk operations are not possible. Take note of https://developer.okta.com/docs/api/getting_started/rate-limits.",
  withParallelism(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"parallelism" expected to be of type "number"';
    {
      parallelism: converted,
    }
  ),
  "#withPrivateKey":: "API Token granting privileges to Okta API.",
  withPrivateKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
    }
  ),
  "#withPrivateKeyId":: "API Token Id granting privileges to Okta API.",
  withPrivateKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key_id" expected to be of type "string"';
    {
      private_key_id: converted,
    }
  ),
  "#withRequestTimeout":: "Timeout for single request (in seconds) which is made to Okta, the default is `0` (means no limit is set). The maximum value can be `300`.",
  withRequestTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"request_timeout" expected to be of type "number"';
    {
      request_timeout: converted,
    }
  ),
  "#withScopes":: "API Token granting privileges to Okta API.",
  withScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes: converted,
    }
  ),
  "#withScopesMixin":: "API Token granting privileges to Okta API.",
  withScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
