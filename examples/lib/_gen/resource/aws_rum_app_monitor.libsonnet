{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rum_app_monitor",
          type:: "resource",
          attributes:: ["app_monitor_id", "arn", "cw_log_enabled", "cw_log_group", "domain", "domain_list", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withCwLogEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cw_log_enabled" expected to be of type "bool"';
    {
      cw_log_enabled: converted,
    }
  ),
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withDomainList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_list" expected to be of type "list"';
    {
      domain_list: converted,
    }
  ),
  withDomainListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_list" expected to be of type "list"';
    {
      domain_list+: converted,
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
  app_monitor_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowCookies(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_cookies" expected to be of type "bool"';
      {
        allow_cookies: converted,
      }
    ),
    withEnableXray(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_xray" expected to be of type "bool"';
      {
        enable_xray: converted,
      }
    ),
    withExcludedPages(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_pages" expected to be of type "set"';
      {
        excluded_pages: converted,
      }
    ),
    withExcludedPagesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_pages" expected to be of type "set"';
      {
        excluded_pages+: converted,
      }
    ),
    withFavoritePages(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"favorite_pages" expected to be of type "set"';
      {
        favorite_pages: converted,
      }
    ),
    withFavoritePagesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"favorite_pages" expected to be of type "set"';
      {
        favorite_pages+: converted,
      }
    ),
    withGuestRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"guest_role_arn" expected to be of type "string"';
      {
        guest_role_arn: converted,
      }
    ),
    withIdentityPoolId(value):: (
      local converted = value;
      assert std.isString(converted) : '"identity_pool_id" expected to be of type "string"';
      {
        identity_pool_id: converted,
      }
    ),
    withIncludedPages(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"included_pages" expected to be of type "set"';
      {
        included_pages: converted,
      }
    ),
    withIncludedPagesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"included_pages" expected to be of type "set"';
      {
        included_pages+: converted,
      }
    ),
    withSessionSampleRate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"session_sample_rate" expected to be of type "number"';
      {
        session_sample_rate: converted,
      }
    ),
    withTelemetries(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"telemetries" expected to be of type "set"';
      {
        telemetries: converted,
      }
    ),
    withTelemetriesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"telemetries" expected to be of type "set"';
      {
        telemetries+: converted,
      }
    ),
  },
  custom_events:: {
    local block = self,
    new():: (
      {}
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
  },
  withAppMonitorConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_monitor_configuration: value,
    }
  ),
  withCustomEvents(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_events: value,
    }
  ),
  withAppMonitorConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_monitor_configuration+: converted,
    }
  ),
  withCustomEventsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_events+: converted,
    }
  ),
}
