{
  local block = self,
  new(terraformName, agentId, collaborationInstruction, collaboratorName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_agent_collaborator",
          type:: "resource",
          attributes:: ["agent_id", "agent_version", "collaboration_instruction", "collaborator_id", "collaborator_name", "id", "prepare_agent", "region", "relay_conversation_history"],
        },
      },
    }
    + block.withAgentId(agentId)
    + block.withCollaborationInstruction(collaborationInstruction)
    + block.withCollaboratorName(collaboratorName)
  ),
  withAgentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_id" expected to be of type "string"';
    {
      agent_id: converted,
    }
  ),
  withAgentVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_version" expected to be of type "string"';
    {
      agent_version: converted,
    }
  ),
  withCollaborationInstruction(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaboration_instruction" expected to be of type "string"';
    {
      collaboration_instruction: converted,
    }
  ),
  withCollaboratorName(value):: (
    local converted = value;
    assert std.isString(converted) : '"collaborator_name" expected to be of type "string"';
    {
      collaborator_name: converted,
    }
  ),
  withPrepareAgent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"prepare_agent" expected to be of type "bool"';
    {
      prepare_agent: converted,
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
  withRelayConversationHistory(value):: (
    local converted = value;
    assert std.isString(converted) : '"relay_conversation_history" expected to be of type "string"';
    {
      relay_conversation_history: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  agent_descriptor:: {
    local block = self,
    new(aliasArn):: (
      {}
      + block.withAliasArn(aliasArn)
    ),
    withAliasArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"alias_arn" expected to be of type "string"';
      {
        alias_arn: converted,
      }
    ),
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
  withAgentDescriptor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_descriptor: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAgentDescriptorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agent_descriptor+: converted,
    }
  ),
}
