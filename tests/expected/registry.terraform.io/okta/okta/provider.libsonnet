{
  version:: "~> 6.5.5",
  source:: "okta/okta",
  local block = self,

  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "registry.terraform.io/okta/okta",
          type:: "provider",
          attributes:: ["access_token", "api_token", "backoff", "base_url", "client_id", "http_proxy", "log_level", "max_api_capacity", "max_retries", "max_wait_seconds", "min_wait_seconds", "org_name", "parallelism", "private_key", "private_key_id", "request_timeout", "scopes"],
        },
      },
    }
  ),

  "#withAccessToken":: "Bearer token granting privileges to Okta API.",
  withAccessToken(value):: (
    assert std.isString(value) : '"access_token" expected to be of type "string"';

    {
      access_token: value,
    }
  ),

  "#withApiToken":: "API Token granting privileges to Okta API.",
  withApiToken(value):: (
    assert std.isString(value) : '"api_token" expected to be of type "string"';

    {
      api_token: value,
    }
  ),

  "#withBackoff":: "Use exponential back off strategy for rate limits.",
  withBackoff(value):: (
    assert std.isBoolean(value) : '"backoff" expected to be of type "bool"';

    {
      backoff: value,
    }
  ),

  "#withBaseUrl":: "The Okta url. (Use 'oktapreview.com' for Okta testing)",
  withBaseUrl(value):: (
    assert std.isString(value) : '"base_url" expected to be of type "string"';

    {
      base_url: value,
    }
  ),

  "#withClientId":: "API Token granting privileges to Okta API.",
  withClientId(value):: (
    assert std.isString(value) : '"client_id" expected to be of type "string"';

    {
      client_id: value,
    }
  ),

  "#withHttpProxy":: "Alternate HTTP proxy of scheme://hostname or scheme://hostname:port format",
  withHttpProxy(value):: (
    assert std.isString(value) : '"http_proxy" expected to be of type "string"';

    {
      http_proxy: value,
    }
  ),

  "#withLogLevel":: "providers log level. Minimum is 1 (TRACE), and maximum is 5 (ERROR)",
  withLogLevel(value):: (
    assert std.isNumber(value) : '"log_level" expected to be of type "number"';

    {
      log_level: value,
    }
  ),

  "#withMaxApiCapacity":: "Sets what percentage of capacity the provider can use of the total rate limit capacity while making calls to the Okta management API endpoints. Okta API operates in one minute buckets. See Okta Management API Rate Limits: https://developer.okta.com/docs/reference/rl-global-mgmt/",
  withMaxApiCapacity(value):: (
    assert std.isNumber(value) : '"max_api_capacity" expected to be of type "number"';

    {
      max_api_capacity: value,
    }
  ),

  "#withMaxRetries":: "maximum number of retries to attempt before erroring out.",
  withMaxRetries(value):: (
    assert std.isNumber(value) : '"max_retries" expected to be of type "number"';

    {
      max_retries: value,
    }
  ),

  "#withMaxWaitSeconds":: "maximum seconds to wait when rate limit is hit. We use exponential backoffs when backoff is enabled.",
  withMaxWaitSeconds(value):: (
    assert std.isNumber(value) : '"max_wait_seconds" expected to be of type "number"';

    {
      max_wait_seconds: value,
    }
  ),

  "#withMinWaitSeconds":: "minimum seconds to wait when rate limit is hit. We use exponential backoffs when backoff is enabled.",
  withMinWaitSeconds(value):: (
    assert std.isNumber(value) : '"min_wait_seconds" expected to be of type "number"';

    {
      min_wait_seconds: value,
    }
  ),

  "#withOrgName":: "The organization to manage in Okta.",
  withOrgName(value):: (
    assert std.isString(value) : '"org_name" expected to be of type "string"';

    {
      org_name: value,
    }
  ),

  "#withParallelism":: "Number of concurrent requests to make within a resource where bulk operations are not possible. Take note of https://developer.okta.com/docs/api/getting_started/rate-limits.",
  withParallelism(value):: (
    assert std.isNumber(value) : '"parallelism" expected to be of type "number"';

    {
      parallelism: value,
    }
  ),

  "#withPrivateKey":: "API Token granting privileges to Okta API.",
  withPrivateKey(value):: (
    assert std.isString(value) : '"private_key" expected to be of type "string"';

    {
      private_key: value,
    }
  ),

  "#withPrivateKeyId":: "API Token Id granting privileges to Okta API.",
  withPrivateKeyId(value):: (
    assert std.isString(value) : '"private_key_id" expected to be of type "string"';

    {
      private_key_id: value,
    }
  ),

  "#withRequestTimeout":: "Timeout for single request (in seconds) which is made to Okta, the default is `0` (means no limit is set). The maximum value can be `300`.",
  withRequestTimeout(value):: (
    assert std.isNumber(value) : '"request_timeout" expected to be of type "number"';

    {
      request_timeout: value,
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
      terraform+:: {
        name:: value,
      },
    },
  },
}
