{
  local block = self,
  new(terraformName, name, project):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_evidently_launch",
          type:: "resource",
          attributes:: ["arn", "created_time", "description", "execution", "id", "last_updated_time", "name", "project", "randomization_salt", "region", "status", "status_reason", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withProject(project)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withProject(value):: (
    local converted = value;
    assert std.isString(converted) : '"project" expected to be of type "string"';
    {
      project: converted,
    }
  ),
  withRandomizationSalt(value):: (
    local converted = value;
    assert std.isString(converted) : '"randomization_salt" expected to be of type "string"';
    {
      randomization_salt: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  groups:: {
    local block = self,
    new(feature, name, variation):: (
      {}
      + block.withFeature(feature)
      + block.withName(name)
      + block.withVariation(variation)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withFeature(value):: (
      local converted = value;
      assert std.isString(converted) : '"feature" expected to be of type "string"';
      {
        feature: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withVariation(value):: (
      local converted = value;
      assert std.isString(converted) : '"variation" expected to be of type "string"';
      {
        variation: converted,
      }
    ),
  },
  metric_monitors:: {
    local block = self,
    new():: (
      {}
    ),
    metric_definition:: {
      local block = self,
      new(entityIdKey, name, valueKey):: (
        {}
        + block.withEntityIdKey(entityIdKey)
        + block.withName(name)
        + block.withValueKey(valueKey)
      ),
      withEntityIdKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"entity_id_key" expected to be of type "string"';
        {
          entity_id_key: converted,
        }
      ),
      withEventPattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_pattern" expected to be of type "string"';
        {
          event_pattern: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withUnitLabel(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit_label" expected to be of type "string"';
        {
          unit_label: converted,
        }
      ),
      withValueKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"value_key" expected to be of type "string"';
        {
          value_key: converted,
        }
      ),
    },
    withMetricDefinition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_definition: value,
      }
    ),
    withMetricDefinitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_definition+: converted,
      }
    ),
  },
  scheduled_splits_config:: {
    local block = self,
    new():: (
      {}
    ),
    steps:: {
      local block = self,
      new(groupWeights, startTime):: (
        {}
        + block.withGroupWeights(groupWeights)
        + block.withStartTime(startTime)
      ),
      withGroupWeights(value):: (
        local converted = value;
        assert std.isObject(converted) : '"group_weights" expected to be of type "map"';
        {
          group_weights: converted,
        }
      ),
      withStartTime(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_time" expected to be of type "string"';
        {
          start_time: converted,
        }
      ),
      segment_overrides:: {
        local block = self,
        new(evaluationOrder, segment, weights):: (
          {}
          + block.withEvaluationOrder(evaluationOrder)
          + block.withSegment(segment)
          + block.withWeights(weights)
        ),
        withEvaluationOrder(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"evaluation_order" expected to be of type "number"';
          {
            evaluation_order: converted,
          }
        ),
        withSegment(value):: (
          local converted = value;
          assert std.isString(converted) : '"segment" expected to be of type "string"';
          {
            segment: converted,
          }
        ),
        withWeights(value):: (
          local converted = value;
          assert std.isObject(converted) : '"weights" expected to be of type "map"';
          {
            weights: converted,
          }
        ),
      },
      withSegmentOverrides(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          segment_overrides: value,
        }
      ),
      withSegmentOverridesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          segment_overrides+: converted,
        }
      ),
    },
    withSteps(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        steps: value,
      }
    ),
    withStepsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        steps+: converted,
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
  withGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups: value,
    }
  ),
  withMetricMonitors(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_monitors: value,
    }
  ),
  withScheduledSplitsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scheduled_splits_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups+: converted,
    }
  ),
  withMetricMonitorsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_monitors+: converted,
    }
  ),
  withScheduledSplitsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scheduled_splits_config+: converted,
    }
  ),
}
