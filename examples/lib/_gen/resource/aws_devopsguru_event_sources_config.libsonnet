{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_devopsguru_event_sources_config",
          type:: "resource",
          attributes:: ["id", "region"],
        },
      },
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  event_sources:: {
    local block = self,
    new():: (
      {}
    ),
    amazon_code_guru_profiler:: {
      local block = self,
      new(status):: (
        {}
        + block.withStatus(status)
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    withAmazonCodeGuruProfiler(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_code_guru_profiler: value,
      }
    ),
    withAmazonCodeGuruProfilerMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_code_guru_profiler+: converted,
      }
    ),
  },
  withEventSources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_sources: value,
    }
  ),
  withEventSourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_sources+: converted,
    }
  ),
}
