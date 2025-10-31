{
  local block = self,
  new(terraformName, agentId, description, knowledgeBaseId, knowledgeBaseState):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrockagent_agent_knowledge_base_association",
          type:: "resource",
          attributes:: ["agent_id", "agent_version", "description", "id", "knowledge_base_id", "knowledge_base_state", "region"],
        },
      },
    }
    + block.withAgentId(agentId)
    + block.withDescription(description)
    + block.withKnowledgeBaseId(knowledgeBaseId)
    + block.withKnowledgeBaseState(knowledgeBaseState)
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
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withKnowledgeBaseId(value):: (
    local converted = value;
    assert std.isString(converted) : '"knowledge_base_id" expected to be of type "string"';
    {
      knowledge_base_id: converted,
    }
  ),
  withKnowledgeBaseState(value):: (
    local converted = value;
    assert std.isString(converted) : '"knowledge_base_state" expected to be of type "string"';
    {
      knowledge_base_state: converted,
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
