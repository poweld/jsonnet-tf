{
  local block = self,
  new(terraformName, frequency, monitorArnList, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ce_anomaly_subscription",
          type:: "resource",
          attributes:: ["account_id", "arn", "frequency", "id", "monitor_arn_list", "name", "tags", "tags_all"],
        },
      },
    }
    + block.withFrequency(frequency)
    + block.withMonitorArnList(monitorArnList)
    + block.withName(name)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withFrequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"frequency" expected to be of type "string"';
    {
      frequency: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMonitorArnList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"monitor_arn_list" expected to be of type "list"';
    {
      monitor_arn_list: converted,
    }
  ),
  withMonitorArnListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"monitor_arn_list" expected to be of type "list"';
    {
      monitor_arn_list+: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  subscriber:: {
    local block = self,
    new(address, type):: (
      {}
      + block.withAddress(address)
      + block.withType(type)
    ),
    withAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"address" expected to be of type "string"';
      {
        address: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  threshold_expression:: {
    local block = self,
    new():: (
      {}
    ),
    and:: {
      local block = self,
      new():: (
        {}
      ),
      cost_category:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      dimension:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      tags:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      withCostCategory(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category: value,
        }
      ),
      withDimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension: value,
        }
      ),
      withTags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      withCostCategoryMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category+: converted,
        }
      ),
      withDimensionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension+: converted,
        }
      ),
      withTagsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    cost_category:: {
      local block = self,
      new():: (
        {}
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withMatchOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options: converted,
        }
      ),
      withMatchOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options+: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    dimension:: {
      local block = self,
      new():: (
        {}
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withMatchOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options: converted,
        }
      ),
      withMatchOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options+: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    not:: {
      local block = self,
      new():: (
        {}
      ),
      cost_category:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      dimension:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      tags:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      withCostCategory(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category: value,
        }
      ),
      withDimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension: value,
        }
      ),
      withTags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      withCostCategoryMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category+: converted,
        }
      ),
      withDimensionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension+: converted,
        }
      ),
      withTagsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    or:: {
      local block = self,
      new():: (
        {}
      ),
      cost_category:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      dimension:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      tags:: {
        local block = self,
        new():: (
          {}
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withMatchOptions(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        withMatchOptionsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        withValues(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        withValuesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      withCostCategory(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category: value,
        }
      ),
      withDimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension: value,
        }
      ),
      withTags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      withCostCategoryMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category+: converted,
        }
      ),
      withDimensionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension+: converted,
        }
      ),
      withTagsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    tags:: {
      local block = self,
      new():: (
        {}
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withMatchOptions(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options: converted,
        }
      ),
      withMatchOptionsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options+: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    withAnd(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        and: value,
      }
    ),
    withCostCategory(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cost_category: value,
      }
    ),
    withDimension(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dimension: value,
      }
    ),
    withNot(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        not: value,
      }
    ),
    withOr(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        or: value,
      }
    ),
    withTags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tags: value,
      }
    ),
    withAndMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        and+: converted,
      }
    ),
    withCostCategoryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cost_category+: converted,
      }
    ),
    withDimensionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dimension+: converted,
      }
    ),
    withNotMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        not+: converted,
      }
    ),
    withOrMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        or+: converted,
      }
    ),
    withTagsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tags+: converted,
      }
    ),
  },
  withSubscriber(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber: value,
    }
  ),
  withThresholdExpression(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      threshold_expression: value,
    }
  ),
  withSubscriberMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber+: converted,
    }
  ),
  withThresholdExpressionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      threshold_expression+: converted,
    }
  ),
}
