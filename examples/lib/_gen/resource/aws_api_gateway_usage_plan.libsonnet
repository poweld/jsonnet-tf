{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_usage_plan",
          type:: "resource",
          attributes:: ["arn", "description", "id", "name", "product_code", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withProductCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_code" expected to be of type "string"';
    {
      product_code: converted,
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
  api_stages:: {
    local block = self,
    new(apiId, stage):: (
      {}
      + block.withApiId(apiId)
      + block.withStage(stage)
    ),
    withApiId(value):: (
      local converted = value;
      assert std.isString(converted) : '"api_id" expected to be of type "string"';
      {
        api_id: converted,
      }
    ),
    withStage(value):: (
      local converted = value;
      assert std.isString(converted) : '"stage" expected to be of type "string"';
      {
        stage: converted,
      }
    ),
    throttle:: {
      local block = self,
      new(path):: (
        {}
        + block.withPath(path)
      ),
      withBurstLimit(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"burst_limit" expected to be of type "number"';
        {
          burst_limit: converted,
        }
      ),
      withPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      withRateLimit(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"rate_limit" expected to be of type "number"';
        {
          rate_limit: converted,
        }
      ),
    },
    withThrottle(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        throttle: value,
      }
    ),
    withThrottleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        throttle+: converted,
      }
    ),
  },
  quota_settings:: {
    local block = self,
    new(limit, period):: (
      {}
      + block.withLimit(limit)
      + block.withPeriod(period)
    ),
    withLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"limit" expected to be of type "number"';
      {
        limit: converted,
      }
    ),
    withOffset(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"offset" expected to be of type "number"';
      {
        offset: converted,
      }
    ),
    withPeriod(value):: (
      local converted = value;
      assert std.isString(converted) : '"period" expected to be of type "string"';
      {
        period: converted,
      }
    ),
  },
  throttle_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withBurstLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"burst_limit" expected to be of type "number"';
      {
        burst_limit: converted,
      }
    ),
    withRateLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rate_limit" expected to be of type "number"';
      {
        rate_limit: converted,
      }
    ),
  },
  withApiStages(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      api_stages: value,
    }
  ),
  withQuotaSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quota_settings: value,
    }
  ),
  withThrottleSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      throttle_settings: value,
    }
  ),
  withApiStagesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      api_stages+: converted,
    }
  ),
  withQuotaSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quota_settings+: converted,
    }
  ),
  withThrottleSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      throttle_settings+: converted,
    }
  ),
}
