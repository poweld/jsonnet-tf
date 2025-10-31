{
  local block = self,
  new(terraformName, agentName, agentResourceRoleArn, foundationModel):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_agent",
          type:: "resource",
          attributes:: ["agent_arn", "agent_collaboration", "agent_id", "agent_name", "agent_resource_role_arn", "agent_version", "customer_encryption_key_arn", "description", "foundation_model", "guardrail_configuration", "id", "idle_session_ttl_in_seconds", "instruction", "memory_configuration", "prepare_agent", "prepared_at", "prompt_override_configuration", "region", "skip_resource_in_use_check", "tags", "tags_all"],
        },
      },
    }
    + block.withAgentName(agentName)
    + block.withAgentResourceRoleArn(agentResourceRoleArn)
    + block.withFoundationModel(foundationModel)
  ),
  withAgentCollaboration(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_collaboration" expected to be of type "string"';
    {
      agent_collaboration: converted,
    }
  ),
  withAgentName(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_name" expected to be of type "string"';
    {
      agent_name: converted,
    }
  ),
  withAgentResourceRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_resource_role_arn" expected to be of type "string"';
    {
      agent_resource_role_arn: converted,
    }
  ),
  withCustomerEncryptionKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_encryption_key_arn" expected to be of type "string"';
    {
      customer_encryption_key_arn: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFoundationModel(value):: (
    local converted = value;
    assert std.isString(converted) : '"foundation_model" expected to be of type "string"';
    {
      foundation_model: converted,
    }
  ),
  withGuardrailConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"guardrail_configuration" expected to be of type "list"';
    {
      guardrail_configuration: converted,
    }
  ),
  withGuardrailConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"guardrail_configuration" expected to be of type "list"';
    {
      guardrail_configuration+: converted,
    }
  ),
  withIdleSessionTtlInSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_session_ttl_in_seconds" expected to be of type "number"';
    {
      idle_session_ttl_in_seconds: converted,
    }
  ),
  withInstruction(value):: (
    local converted = value;
    assert std.isString(converted) : '"instruction" expected to be of type "string"';
    {
      instruction: converted,
    }
  ),
  withMemoryConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"memory_configuration" expected to be of type "list"';
    {
      memory_configuration: converted,
    }
  ),
  withMemoryConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"memory_configuration" expected to be of type "list"';
    {
      memory_configuration+: converted,
    }
  ),
  withPrepareAgent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"prepare_agent" expected to be of type "bool"';
    {
      prepare_agent: converted,
    }
  ),
  withPromptOverrideConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"prompt_override_configuration" expected to be of type "list"';
    {
      prompt_override_configuration: converted,
    }
  ),
  withPromptOverrideConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"prompt_override_configuration" expected to be of type "list"';
    {
      prompt_override_configuration+: converted,
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
  withSkipResourceInUseCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_resource_in_use_check" expected to be of type "bool"';
    {
      skip_resource_in_use_check: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
