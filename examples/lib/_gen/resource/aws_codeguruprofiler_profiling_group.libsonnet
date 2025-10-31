{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codeguruprofiler_profiling_group",
          type:: "resource",
          attributes:: ["arn", "compute_platform", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withComputePlatform(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_platform" expected to be of type "string"';
    {
      compute_platform: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  agent_orchestration_config:: {
    local block = self,
    new(profilingEnabled):: (
      {}
      + block.withProfilingEnabled(profilingEnabled)
    ),
    withProfilingEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"profiling_enabled" expected to be of type "bool"';
      {
        profiling_enabled: converted,
      }
    ),
  },
  withAgentOrchestrationConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_orchestration_config: value,
    }
  ),
  withAgentOrchestrationConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_orchestration_config+: converted,
    }
  ),
}
