{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pinpoint_app",
          type:: "resource",
          attributes:: ["application_id", "arn", "id", "name", "name_prefix", "region", "tags", "tags_all"],
        },
      },
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
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  campaign_hook:: {
    local block = self,
    new():: (
      {}
    ),
    withLambdaFunctionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_function_name" expected to be of type "string"';
      {
        lambda_function_name: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    withWebUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"web_url" expected to be of type "string"';
      {
        web_url: converted,
      }
    ),
  },
  limits:: {
    local block = self,
    new():: (
      {}
    ),
    withDaily(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"daily" expected to be of type "number"';
      {
        daily: converted,
      }
    ),
    withMaximumDuration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_duration" expected to be of type "number"';
      {
        maximum_duration: converted,
      }
    ),
    withMessagesPerSecond(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"messages_per_second" expected to be of type "number"';
      {
        messages_per_second: converted,
      }
    ),
    withTotal(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"total" expected to be of type "number"';
      {
        total: converted,
      }
    ),
  },
  quiet_time:: {
    local block = self,
    new():: (
      {}
    ),
    withEnd(value):: (
      local converted = value;
      assert std.isString(converted) : '"end" expected to be of type "string"';
      {
        end: converted,
      }
    ),
    withStart(value):: (
      local converted = value;
      assert std.isString(converted) : '"start" expected to be of type "string"';
      {
        start: converted,
      }
    ),
  },
  withCampaignHook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      campaign_hook: value,
    }
  ),
  withLimits(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      limits: value,
    }
  ),
  withQuietTime(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quiet_time: value,
    }
  ),
  withCampaignHookMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      campaign_hook+: converted,
    }
  ),
  withLimitsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      limits+: converted,
    }
  ),
  withQuietTimeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      quiet_time+: converted,
    }
  ),
}
