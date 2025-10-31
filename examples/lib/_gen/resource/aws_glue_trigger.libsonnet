{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_trigger",
          type:: "resource",
          attributes:: ["arn", "description", "enabled", "id", "name", "region", "schedule", "start_on_creation", "state", "tags", "tags_all", "type", "workflow_name"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSchedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  withStartOnCreation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_on_creation" expected to be of type "bool"';
    {
      start_on_creation: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withWorkflowName(value):: (
    local converted = value;
    assert std.isString(converted) : '"workflow_name" expected to be of type "string"';
    {
      workflow_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  actions:: {
    local block = self,
    new():: (
      {}
    ),
    withArguments(value):: (
      local converted = value;
      assert std.isObject(converted) : '"arguments" expected to be of type "map"';
      {
        arguments: converted,
      }
    ),
    withCrawlerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"crawler_name" expected to be of type "string"';
      {
        crawler_name: converted,
      }
    ),
    withJobName(value):: (
      local converted = value;
      assert std.isString(converted) : '"job_name" expected to be of type "string"';
      {
        job_name: converted,
      }
    ),
    withSecurityConfiguration(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
      {
        security_configuration: converted,
      }
    ),
    withTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
      {
        timeout: converted,
      }
    ),
    notification_property:: {
      local block = self,
      new():: (
        {}
      ),
      withNotifyDelayAfter(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"notify_delay_after" expected to be of type "number"';
        {
          notify_delay_after: converted,
        }
      ),
    },
    withNotificationProperty(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notification_property: value,
      }
    ),
    withNotificationPropertyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notification_property+: converted,
      }
    ),
  },
  event_batching_condition:: {
    local block = self,
    new(batchSize):: (
      {}
      + block.withBatchSize(batchSize)
    ),
    withBatchSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
      {
        batch_size: converted,
      }
    ),
    withBatchWindow(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"batch_window" expected to be of type "number"';
      {
        batch_window: converted,
      }
    ),
  },
  predicate:: {
    local block = self,
    new():: (
      {}
    ),
    withLogical(value):: (
      local converted = value;
      assert std.isString(converted) : '"logical" expected to be of type "string"';
      {
        logical: converted,
      }
    ),
    conditions:: {
      local block = self,
      new():: (
        {}
      ),
      withCrawlState(value):: (
        local converted = value;
        assert std.isString(converted) : '"crawl_state" expected to be of type "string"';
        {
          crawl_state: converted,
        }
      ),
      withCrawlerName(value):: (
        local converted = value;
        assert std.isString(converted) : '"crawler_name" expected to be of type "string"';
        {
          crawler_name: converted,
        }
      ),
      withJobName(value):: (
        local converted = value;
        assert std.isString(converted) : '"job_name" expected to be of type "string"';
        {
          job_name: converted,
        }
      ),
      withLogicalOperator(value):: (
        local converted = value;
        assert std.isString(converted) : '"logical_operator" expected to be of type "string"';
        {
          logical_operator: converted,
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
    withConditions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditions: value,
      }
    ),
    withConditionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditions+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withActions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions: value,
    }
  ),
  withEventBatchingCondition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_batching_condition: value,
    }
  ),
  withPredicate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicate: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withActionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions+: converted,
    }
  ),
  withEventBatchingConditionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_batching_condition+: converted,
    }
  ),
  withPredicateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicate+: converted,
    }
  ),
}
