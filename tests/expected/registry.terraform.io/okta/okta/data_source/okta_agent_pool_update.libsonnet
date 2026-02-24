{
  local block = self,

  new(terraformName, id, poolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_agent_pool_update",
          type:: "data",
          attributes:: ["agent_type", "enabled", "id", "name", "notify_admin", "pool_id", "reason", "sort_order", "status", "target_version"],
        },
      },
    }
    + block.withId(id)
    + block.withPoolId(poolId)
  ),

  "#withId":: "The unique identifier of the agent pool update.",
  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withPoolId":: "The unique identifier of the agent pool.",
  withPoolId(value):: (
    assert std.isString(value) : '"pool_id" expected to be of type "string"';

    {
      pool_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  agents:: {
    local block = self,

    new():: (
      {}
    ),
  },
  schedule:: {
    local block = self,

    new():: (
      {}
    ),
  },
  withAgents(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agents: converted,
    }
  ),
  withSchedule(value):: (
    {
      schedule: value,
    }
  ),
  withAgentsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      agents+: converted,
    }
  ),
}
