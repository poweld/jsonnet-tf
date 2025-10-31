{
  local block = self,
  new(terraformName, enabled):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_continuous_deployment_policy",
          type:: "resource",
          attributes:: ["arn", "enabled", "etag", "id", "last_modified_time"],
        },
      },
    }
    + block.withEnabled(enabled)
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  staging_distribution_dns_names:: {
    local block = self,
    new(quantity):: (
      {}
      + block.withQuantity(quantity)
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
    withQuantity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"quantity" expected to be of type "number"';
      {
        quantity: converted,
      }
    ),
  },
  traffic_config:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    single_header_config:: {
      local block = self,
      new(header, value):: (
        {}
        + block.withHeader(header)
        + block.withValue(value)
      ),
      withHeader(value):: (
        local converted = value;
        assert std.isString(converted) : '"header" expected to be of type "string"';
        {
          header: converted,
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
    single_weight_config:: {
      local block = self,
      new(weight):: (
        {}
        + block.withWeight(weight)
      ),
      withWeight(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weight" expected to be of type "number"';
        {
          weight: converted,
        }
      ),
      session_stickiness_config:: {
        local block = self,
        new(idleTtl, maximumTtl):: (
          {}
          + block.withIdleTtl(idleTtl)
          + block.withMaximumTtl(maximumTtl)
        ),
        withIdleTtl(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"idle_ttl" expected to be of type "number"';
          {
            idle_ttl: converted,
          }
        ),
        withMaximumTtl(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"maximum_ttl" expected to be of type "number"';
          {
            maximum_ttl: converted,
          }
        ),
      },
      withSessionStickinessConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          session_stickiness_config: value,
        }
      ),
      withSessionStickinessConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          session_stickiness_config+: converted,
        }
      ),
    },
    withSingleHeaderConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_header_config: value,
      }
    ),
    withSingleWeightConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_weight_config: value,
      }
    ),
    withSingleHeaderConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_header_config+: converted,
      }
    ),
    withSingleWeightConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        single_weight_config+: converted,
      }
    ),
  },
  withStagingDistributionDnsNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      staging_distribution_dns_names: value,
    }
  ),
  withTrafficConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_config: value,
    }
  ),
  withStagingDistributionDnsNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      staging_distribution_dns_names+: converted,
    }
  ),
  withTrafficConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_config+: converted,
    }
  ),
}
