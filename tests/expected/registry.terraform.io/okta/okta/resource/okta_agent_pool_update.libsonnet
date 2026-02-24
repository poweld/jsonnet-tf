{
  local block = self,

  new(terraformName, poolId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_agent_pool_update",
          type:: "resource",
          attributes:: ["agent_type", "description", "enabled", "id", "name", "notify_admins", "notify_on_completion", "pool_id", "reason", "sort_order", "status", "target_version"],
        },
      },
    }
    + block.withPoolId(poolId)
  ),

  "#withAgentType":: "Agent types that are being monitored (e.g. AD, IWA, LDAP, MFA, OPP, RUM, Radius).",
  withAgentType(value):: (
    assert std.isString(value) : '"agent_type" expected to be of type "string"';

    {
      agent_type: value,
    }
  ),

  "#withDescription":: "The description of the agent pool update.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withEnabled":: "Indicates if auto-update is enabled for the agent pool.",
  withEnabled(value):: (
    assert std.isBoolean(value) : '"enabled" expected to be of type "bool"';

    {
      enabled: value,
    }
  ),

  "#withName":: "The name of the agent pool update.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withNotifyAdmins":: "Indicates if the admin is notified about the update.",
  withNotifyAdmins(value):: (
    assert std.isBoolean(value) : '"notify_admins" expected to be of type "bool"';

    {
      notify_admins: value,
    }
  ),

  "#withNotifyOnCompletion":: "Whether to send notifications when the update completes.",
  withNotifyOnCompletion(value):: (
    assert std.isBoolean(value) : '"notify_on_completion" expected to be of type "bool"';

    {
      notify_on_completion: value,
    }
  ),

  "#withPoolId":: "The unique identifier of the agent pool to update.",
  withPoolId(value):: (
    assert std.isString(value) : '"pool_id" expected to be of type "string"';

    {
      pool_id: value,
    }
  ),

  "#withReason":: "Reason for the update.",
  withReason(value):: (
    assert std.isString(value) : '"reason" expected to be of type "string"';

    {
      reason: value,
    }
  ),

  "#withSortOrder":: "Specifies the sort order.",
  withSortOrder(value):: (
    assert std.isNumber(value) : '"sort_order" expected to be of type "number"';

    {
      sort_order: value,
    }
  ),

  "#withTargetVersion":: "The agent version to update to.",
  withTargetVersion(value):: (
    assert std.isString(value) : '"target_version" expected to be of type "string"';

    {
      target_version: value,
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

    "#withId":: "The unique identifier of the agent.",
    withId(value):: (
      assert std.isString(value) : '"id" expected to be of type "string"';

      {
        id: value,
      }
    ),

    "#withPoolId":: "Pool ID.",
    withPoolId(value):: (
      assert std.isString(value) : '"pool_id" expected to be of type "string"';

      {
        pool_id: value,
      }
    ),
  },
  schedule:: {
    local block = self,

    new():: (
      {}
    ),

    "#withCron":: "The schedule of the update in cron format.",
    withCron(value):: (
      assert std.isString(value) : '"cron" expected to be of type "string"';

      {
        cron: value,
      }
    ),

    "#withDelay":: "Delay in days.",
    withDelay(value):: (
      assert std.isNumber(value) : '"delay" expected to be of type "number"';

      {
        delay: value,
      }
    ),

    "#withDuration":: "Duration in minutes.",
    withDuration(value):: (
      assert std.isNumber(value) : '"duration" expected to be of type "number"';

      {
        duration: value,
      }
    ),

    "#withLastUpdated":: "Timestamp when the update finished (only for a successful or failed update, not for a cancelled update). Null is returned if the job hasn't finished once yet.",
    withLastUpdated(value):: (
      assert std.isString(value) : '"last_updated" expected to be of type "string"';

      {
        last_updated: value,
      }
    ),

    "#withTimezone":: "Timezone of where the scheduled job takes place.",
    withTimezone(value):: (
      assert std.isString(value) : '"timezone" expected to be of type "string"';

      {
        timezone: value,
      }
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
