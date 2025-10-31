{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_response_headers_policy",
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
  cors_config:: {
    local block = self,
    new(accessControlAllowCredentials, originOverride):: (
      {}
      + block.withAccessControlAllowCredentials(accessControlAllowCredentials)
      + block.withOriginOverride(originOverride)
    ),
    withAccessControlAllowCredentials(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"access_control_allow_credentials" expected to be of type "bool"';
      {
        access_control_allow_credentials: converted,
      }
    ),
    withAccessControlMaxAgeSec(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"access_control_max_age_sec" expected to be of type "number"';
      {
        access_control_max_age_sec: converted,
      }
    ),
    withOriginOverride(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"origin_override" expected to be of type "bool"';
      {
        origin_override: converted,
      }
    ),
    access_control_allow_headers:: {
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
    access_control_allow_methods:: {
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
    access_control_allow_origins:: {
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
    access_control_expose_headers:: {
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
    withAccessControlAllowHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_headers: value,
      }
    ),
    withAccessControlAllowMethods(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_methods: value,
      }
    ),
    withAccessControlAllowOrigins(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_origins: value,
      }
    ),
    withAccessControlExposeHeaders(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_expose_headers: value,
      }
    ),
    withAccessControlAllowHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_headers+: converted,
      }
    ),
    withAccessControlAllowMethodsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_methods+: converted,
      }
    ),
    withAccessControlAllowOriginsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_allow_origins+: converted,
      }
    ),
    withAccessControlExposeHeadersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        access_control_expose_headers+: converted,
      }
    ),
  },
  custom_headers_config:: {
    local block = self,
    new():: (
      {}
    ),
    items:: {
      local block = self,
      new(header, override, value):: (
        {}
        + block.withHeader(header)
        + block.withOverride(override)
        + block.withValue(value)
      ),
      withHeader(value):: (
        local converted = value;
        assert std.isString(converted) : '"header" expected to be of type "string"';
        {
          header: converted,
        }
      ),
      withOverride(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
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
    withItems(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items: value,
      }
    ),
    withItemsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items+: converted,
      }
    ),
  },
  remove_headers_config:: {
    local block = self,
    new():: (
      {}
    ),
    items:: {
      local block = self,
      new(header):: (
        {}
        + block.withHeader(header)
      ),
      withHeader(value):: (
        local converted = value;
        assert std.isString(converted) : '"header" expected to be of type "string"';
        {
          header: converted,
        }
      ),
    },
    withItems(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items: value,
      }
    ),
    withItemsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        items+: converted,
      }
    ),
  },
  security_headers_config:: {
    local block = self,
    new():: (
      {}
    ),
    content_security_policy:: {
      local block = self,
      new(contentSecurityPolicy, override):: (
        {}
        + block.withContentSecurityPolicy(contentSecurityPolicy)
        + block.withOverride(override)
      ),
      withContentSecurityPolicy(value):: (
        local converted = value;
        assert std.isString(converted) : '"content_security_policy" expected to be of type "string"';
        {
          content_security_policy: converted,
        }
      ),
      withOverride(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
    },
    content_type_options:: {
      local block = self,
      new(override):: (
        {}
        + block.withOverride(override)
      ),
      withOverride(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
    },
    frame_options:: {
      local block = self,
      new(frameOption, override):: (
        {}
        + block.withFrameOption(frameOption)
        + block.withOverride(override)
      ),
      withFrameOption(value):: (
        local converted = value;
        assert std.isString(converted) : '"frame_option" expected to be of type "string"';
        {
          frame_option: converted,
        }
      ),
      withOverride(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
    },
    referrer_policy:: {
      local block = self,
      new(override, referrerPolicy):: (
        {}
        + block.withOverride(override)
        + block.withReferrerPolicy(referrerPolicy)
      ),
      withOverride(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
      withReferrerPolicy(value):: (
        local converted = value;
        assert std.isString(converted) : '"referrer_policy" expected to be of type "string"';
        {
          referrer_policy: converted,
        }
      ),
    },
    strict_transport_security:: {
      local block = self,
      new(accessControlMaxAgeSec, override):: (
        {}
        + block.withAccessControlMaxAgeSec(accessControlMaxAgeSec)
        + block.withOverride(override)
      ),
      withAccessControlMaxAgeSec(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"access_control_max_age_sec" expected to be of type "number"';
        {
          access_control_max_age_sec: converted,
        }
      ),
      withIncludeSubdomains(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"include_subdomains" expected to be of type "bool"';
        {
          include_subdomains: converted,
        }
      ),
      withOverride(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
      withPreload(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"preload" expected to be of type "bool"';
        {
          preload: converted,
        }
      ),
    },
    xss_protection:: {
      local block = self,
      new(override, protection):: (
        {}
        + block.withOverride(override)
        + block.withProtection(protection)
      ),
      withModeBlock(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"mode_block" expected to be of type "bool"';
        {
          mode_block: converted,
        }
      ),
      withOverride(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"override" expected to be of type "bool"';
        {
          override: converted,
        }
      ),
      withProtection(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"protection" expected to be of type "bool"';
        {
          protection: converted,
        }
      ),
      withReportUri(value):: (
        local converted = value;
        assert std.isString(converted) : '"report_uri" expected to be of type "string"';
        {
          report_uri: converted,
        }
      ),
    },
    withContentSecurityPolicy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_security_policy: value,
      }
    ),
    withContentTypeOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_type_options: value,
      }
    ),
    withFrameOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        frame_options: value,
      }
    ),
    withReferrerPolicy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        referrer_policy: value,
      }
    ),
    withStrictTransportSecurity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        strict_transport_security: value,
      }
    ),
    withXssProtection(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        xss_protection: value,
      }
    ),
    withContentSecurityPolicyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_security_policy+: converted,
      }
    ),
    withContentTypeOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_type_options+: converted,
      }
    ),
    withFrameOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        frame_options+: converted,
      }
    ),
    withReferrerPolicyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        referrer_policy+: converted,
      }
    ),
    withStrictTransportSecurityMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        strict_transport_security+: converted,
      }
    ),
    withXssProtectionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        xss_protection+: converted,
      }
    ),
  },
  server_timing_headers_config:: {
    local block = self,
    new(enabled, samplingRate):: (
      {}
      + block.withEnabled(enabled)
      + block.withSamplingRate(samplingRate)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withSamplingRate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"sampling_rate" expected to be of type "number"';
      {
        sampling_rate: converted,
      }
    ),
  },
  withCorsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_config: value,
    }
  ),
  withCustomHeadersConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_headers_config: value,
    }
  ),
  withRemoveHeadersConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remove_headers_config: value,
    }
  ),
  withSecurityHeadersConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      security_headers_config: value,
    }
  ),
  withServerTimingHeadersConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_timing_headers_config: value,
    }
  ),
  withCorsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_config+: converted,
    }
  ),
  withCustomHeadersConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_headers_config+: converted,
    }
  ),
  withRemoveHeadersConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remove_headers_config+: converted,
    }
  ),
  withSecurityHeadersConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      security_headers_config+: converted,
    }
  ),
  withServerTimingHeadersConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_timing_headers_config+: converted,
    }
  ),
}
