{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_origin_request_policy",
          type:: "resource",
          attributes:: ["arn", "comment", "etag", "id", "name"],
        },
      },
    }
    + block.withName(name)
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cookies_config:: {
    local block = self,
    new(cookieBehavior):: (
      {}
      + block.withCookieBehavior(cookieBehavior)
    ),
    withCookieBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"cookie_behavior" expected to be of type "string"';
      {
        cookie_behavior: converted,
      }
    ),
    cookies:: {
      local block = self,
      new():: (
        {}
      ),
      withItems(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items: converted,
        }
      ),
      withItemsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items+: converted,
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
  headers_config:: {
    local block = self,
    new():: (
      {}
    ),
    withHeaderBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"header_behavior" expected to be of type "string"';
      {
        header_behavior: converted,
      }
    ),
    headers:: {
      local block = self,
      new():: (
        {}
      ),
      withItems(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items: converted,
        }
      ),
      withItemsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items+: converted,
        }
      ),
    },
    withHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        headers: value,
      }
    ),
    withHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        headers+: converted,
      }
    ),
  },
  query_strings_config:: {
    local block = self,
    new(queryStringBehavior):: (
      {}
      + block.withQueryStringBehavior(queryStringBehavior)
    ),
    withQueryStringBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"query_string_behavior" expected to be of type "string"';
      {
        query_string_behavior: converted,
      }
    ),
    query_strings:: {
      local block = self,
      new():: (
        {}
      ),
      withItems(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items: converted,
        }
      ),
      withItemsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"items" expected to be of type "set"';
        {
          items+: converted,
        }
      ),
    },
    withQueryStrings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_strings: value,
      }
    ),
    withQueryStringsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_strings+: converted,
      }
    ),
  },
  withCookiesConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cookies_config: value,
    }
  ),
  withHeadersConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers_config: value,
    }
  ),
  withQueryStringsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      query_strings_config: value,
    }
  ),
  withCookiesConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cookies_config+: converted,
    }
  ),
  withHeadersConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      headers_config+: converted,
    }
  ),
  withQueryStringsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      query_strings_config+: converted,
    }
  ),
}
