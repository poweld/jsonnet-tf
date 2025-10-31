{
  local block = self,
  new(terraformName, agentId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_agent_versions",
          type:: "data",
          attributes:: ["agent_id", "region"],
        },
      },
    }
    + block.withAgentId(agentId)
  ),
  withAgentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_id" expected to be of type "string"';
    {
      agent_id: converted,
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
  agent_version_summaries:: {
    local block = self,
    new():: (
      {}
    ),
    guardrail_configuration:: {
      local block = self,
      new():: (
        {}
      ),
    },
    withGuardrailConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        guardrail_configuration: value,
      }
    ),
    withGuardrailConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        guardrail_configuration+: converted,
      }
    ),
  },
  withAgentVersionSummaries(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_version_summaries: value,
    }
  ),
  withAgentVersionSummariesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_version_summaries+: converted,
    }
  ),
}
