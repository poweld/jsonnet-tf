{
  local block = self,
  new(terraformName, name, priority, state):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_batch_job_queue",
          type:: "resource",
          attributes:: ["arn", "id", "name", "priority", "region", "scheduling_policy_arn", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withPriority(priority)
    + block.withState(state)
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  withSchedulingPolicyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"scheduling_policy_arn" expected to be of type "string"';
    {
      scheduling_policy_arn: converted,
    }
  ),
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  compute_environment_order:: {
    local block = self,
    new(computeEnvironment, order):: (
      {}
      + block.withComputeEnvironment(computeEnvironment)
      + block.withOrder(order)
    ),
    withComputeEnvironment(value):: (
      local converted = value;
      assert std.isString(converted) : '"compute_environment" expected to be of type "string"';
      {
        compute_environment: converted,
      }
    ),
    withOrder(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"order" expected to be of type "number"';
      {
        order: converted,
      }
    ),
  },
  job_state_time_limit_action:: {
    local block = self,
    new(action, maxTimeSeconds, reason, state):: (
      {}
      + block.withAction(action)
      + block.withMaxTimeSeconds(maxTimeSeconds)
      + block.withReason(reason)
      + block.withState(state)
    ),
    withAction(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    withMaxTimeSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_time_seconds" expected to be of type "number"';
      {
        max_time_seconds: converted,
      }
    ),
    withReason(value):: (
      local converted = value;
      assert std.isString(converted) : '"reason" expected to be of type "string"';
      {
        reason: converted,
      }
    ),
    withState(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
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
  withComputeEnvironmentOrder(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_environment_order: value,
    }
  ),
  withJobStateTimeLimitAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_state_time_limit_action: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withComputeEnvironmentOrderMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_environment_order+: converted,
    }
  ),
  withJobStateTimeLimitActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_state_time_limit_action+: converted,
    }
  ),
}
