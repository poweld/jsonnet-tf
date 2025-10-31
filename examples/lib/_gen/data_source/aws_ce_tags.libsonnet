{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ce_tags",
          type:: "data",
          attributes:: ["id", "search_string", "tag_key", "tags"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withSearchString(value):: (
    local converted = value;
    assert std.isString(converted) : '"search_string" expected to be of type "string"';
    {
      search_string: converted,
    }
  ),
  withTagKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_key" expected to be of type "string"';
    {
      tag_key: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filter:: {
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
  sort_by:: {
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
    withSortOrder(value):: (
      local converted = value;
      assert std.isString(converted) : '"sort_order" expected to be of type "string"';
      {
        sort_order: converted,
      }
    ),
  },
  time_period:: {
    local block = self,
    new(end, start):: (
      {}
      + block.withEnd(end)
      + block.withStart(start)
    ),
    withEnd(value):: (
      local converted = value;
      assert std.isString(converted) : '"end" expected to be of type "string"';
      {
        end: converted,
      }
    ),
    withStart(value):: (
      local converted = value;
      assert std.isString(converted) : '"start" expected to be of type "string"';
      {
        start: converted,
      }
    ),
  },
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withSortBy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sort_by: value,
    }
  ),
  withTimePeriod(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      time_period: value,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
  withSortByMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sort_by+: converted,
    }
  ),
  withTimePeriodMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      time_period+: converted,
    }
  ),
}
