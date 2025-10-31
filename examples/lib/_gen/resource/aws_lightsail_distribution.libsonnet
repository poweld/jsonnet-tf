{
  local block = self,
  new(terraformName, bundleId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_distribution",
          type:: "resource",
          attributes:: ["alternative_domain_names", "arn", "bundle_id", "certificate_name", "created_at", "domain_name", "id", "ip_address_type", "is_enabled", "location", "name", "origin_public_dns", "region", "resource_type", "status", "support_code", "tags", "tags_all"],
        },
      },
    }
    + block.withBundleId(bundleId)
    + block.withName(name)
  ),
  "#withBundleId":: "The bundle ID to use for the distribution.",
  withBundleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  "#withCertificateName":: "The name of the SSL/TLS certificate attached to the distribution, if any.",
  withCertificateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_name" expected to be of type "string"';
    {
      certificate_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIpAddressType":: "The IP address type of the distribution.",
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  "#withIsEnabled":: "Indicates whether the distribution is enabled.",
  withIsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_enabled" expected to be of type "bool"';
    {
      is_enabled: converted,
    }
  ),
  "#withName":: "The name of the distribution.",
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
  cache_behavior:: {
    local block = self,
    new(behavior, path):: (
      {}
      + block.withBehavior(behavior)
      + block.withPath(path)
    ),
    "#withBehavior":: "The cache behavior for the specified path.",
    withBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"behavior" expected to be of type "string"';
      {
        behavior: converted,
      }
    ),
    "#withPath":: "The path to a directory or file to cached, or not cache. Use an asterisk symbol to specify wildcard directories (path/to/assets/*), and file types (*.html, *jpg, *js). Directories and file paths are case-sensitive.",
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
  },
  cache_behavior_settings:: {
    local block = self,
    new():: (
      {}
    ),
    "#withAllowedHttpMethods":: "The HTTP methods that are processed and forwarded to the distribution's origin.",
    withAllowedHttpMethods(value):: (
      local converted = value;
      assert std.isString(converted) : '"allowed_http_methods" expected to be of type "string"';
      {
        allowed_http_methods: converted,
      }
    ),
    "#withCachedHttpMethods":: "The HTTP method responses that are cached by your distribution.",
    withCachedHttpMethods(value):: (
      local converted = value;
      assert std.isString(converted) : '"cached_http_methods" expected to be of type "string"';
      {
        cached_http_methods: converted,
      }
    ),
    "#withDefaultTtl":: "The default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated.",
    withDefaultTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"default_ttl" expected to be of type "number"';
      {
        default_ttl: converted,
      }
    ),
    "#withMaximumTtl":: "The maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.",
    withMaximumTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_ttl" expected to be of type "number"';
      {
        maximum_ttl: converted,
      }
    ),
    "#withMinimumTtl":: "The minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.",
    withMinimumTtl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minimum_ttl" expected to be of type "number"';
      {
        minimum_ttl: converted,
      }
    ),
    forwarded_cookies:: {
      local block = self,
      new():: (
        {}
      ),
      "#withCookiesAllowList":: "The specific cookies to forward to your distribution's origin.",
      withCookiesAllowList(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cookies_allow_list" expected to be of type "set"';
        {
          cookies_allow_list: converted,
        }
      ),
      "#withCookiesAllowListMixin":: "The specific cookies to forward to your distribution's origin.",
      withCookiesAllowListMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cookies_allow_list" expected to be of type "set"';
        {
          cookies_allow_list+: converted,
        }
      ),
      "#withOption":: "Specifies which cookies to forward to the distribution's origin for a cache behavior: all, none, or allow-list to forward only the cookies specified in the cookiesAllowList parameter.",
      withOption(value):: (
        local converted = value;
        assert std.isString(converted) : '"option" expected to be of type "string"';
        {
          option: converted,
        }
      ),
    },
    forwarded_headers:: {
      local block = self,
      new():: (
        {}
      ),
      "#withHeadersAllowList":: "The specific headers to forward to your distribution's origin.",
      withHeadersAllowList(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers_allow_list" expected to be of type "set"';
        {
          headers_allow_list: converted,
        }
      ),
      "#withHeadersAllowListMixin":: "The specific headers to forward to your distribution's origin.",
      withHeadersAllowListMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"headers_allow_list" expected to be of type "set"';
        {
          headers_allow_list+: converted,
        }
      ),
      "#withOption":: "The headers that you want your distribution to forward to your origin and base caching on.",
      withOption(value):: (
        local converted = value;
        assert std.isString(converted) : '"option" expected to be of type "string"';
        {
          option: converted,
        }
      ),
    },
    forwarded_query_strings:: {
      local block = self,
      new():: (
        {}
      ),
      "#withOption":: "Indicates whether the distribution forwards and caches based on query strings.",
      withOption(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"option" expected to be of type "bool"';
        {
          option: converted,
        }
      ),
      "#withQueryStringsAllowedList":: "The specific query strings that the distribution forwards to the origin.",
      withQueryStringsAllowedList(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"query_strings_allowed_list" expected to be of type "set"';
        {
          query_strings_allowed_list: converted,
        }
      ),
      "#withQueryStringsAllowedListMixin":: "The specific query strings that the distribution forwards to the origin.",
      withQueryStringsAllowedListMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"query_strings_allowed_list" expected to be of type "set"';
        {
          query_strings_allowed_list+: converted,
        }
      ),
    },
    withForwardedCookies(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_cookies: value,
      }
    ),
    withForwardedHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_headers: value,
      }
    ),
    withForwardedQueryStrings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_query_strings: value,
      }
    ),
    withForwardedCookiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_cookies+: converted,
      }
    ),
    withForwardedHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_headers+: converted,
      }
    ),
    withForwardedQueryStringsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forwarded_query_strings+: converted,
      }
    ),
  },
  default_cache_behavior:: {
    local block = self,
    new(behavior):: (
      {}
      + block.withBehavior(behavior)
    ),
    "#withBehavior":: "The cache behavior of the distribution.",
    withBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"behavior" expected to be of type "string"';
      {
        behavior: converted,
      }
    ),
  },
  origin:: {
    local block = self,
    new(name, regionName):: (
      {}
      + block.withName(name)
      + block.withRegionName(regionName)
    ),
    "#withName":: "The name of the origin resource.",
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    "#withProtocolPolicy":: "The protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content.",
    withProtocolPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol_policy" expected to be of type "string"';
      {
        protocol_policy: converted,
      }
    ),
    "#withRegionName":: "The AWS Region name of the origin resource.",
    withRegionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"region_name" expected to be of type "string"';
      {
        region_name: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  withCacheBehavior(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_behavior: value,
    }
  ),
  withCacheBehaviorSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_behavior_settings: value,
    }
  ),
  withDefaultCacheBehavior(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_cache_behavior: value,
    }
  ),
  withOrigin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCacheBehaviorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_behavior+: converted,
    }
  ),
  withCacheBehaviorSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_behavior_settings+: converted,
    }
  ),
  withDefaultCacheBehaviorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_cache_behavior+: converted,
    }
  ),
  withOriginMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin+: converted,
    }
  ),
}
