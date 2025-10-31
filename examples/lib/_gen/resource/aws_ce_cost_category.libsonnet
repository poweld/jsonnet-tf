{
  local block = self,
  new(terraformName, name, ruleVersion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ce_cost_category",
          type:: "resource",
          attributes:: ["arn", "default_value", "effective_end", "effective_start", "id", "name", "rule_version", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withRuleVersion(ruleVersion)
  ),
  withDefaultValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_value" expected to be of type "string"';
    {
      default_value: converted,
    }
  ),
  withEffectiveStart(value):: (
    local converted = value;
    assert std.isString(converted) : '"effective_start" expected to be of type "string"';
    {
      effective_start: converted,
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
  withRuleVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_version" expected to be of type "string"';
    {
      rule_version: converted,
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
  rule:: {
    local block = self,
    new():: (
      {}
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
    inherited_value:: {
      local block = self,
      new():: (
        {}
      ),
      withDimensionKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"dimension_key" expected to be of type "string"';
        {
          dimension_key: converted,
        }
      ),
      withDimensionName(value):: (
        local converted = value;
        assert std.isString(converted) : '"dimension_name" expected to be of type "string"';
        {
          dimension_name: converted,
        }
      ),
    },
    rule:: {
      local block = self,
      new():: (
        {}
      ),
      and:: {
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
      or:: {
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
    withInheritedValue(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inherited_value: value,
      }
    ),
    withRule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule: value,
      }
    ),
    withInheritedValueMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inherited_value+: converted,
      }
    ),
    withRuleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule+: converted,
      }
    ),
  },
  split_charge_rule:: {
    local block = self,
    new(method, source, targets):: (
      {}
      + block.withMethod(method)
      + block.withSource(source)
      + block.withTargets(targets)
    ),
    withMethod(value):: (
      local converted = value;
      assert std.isString(converted) : '"method" expected to be of type "string"';
      {
        method: converted,
      }
    ),
    withSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
    withTargets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"targets" expected to be of type "set"';
      {
        targets: converted,
      }
    ),
    withTargetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"targets" expected to be of type "set"';
      {
        targets+: converted,
      }
    ),
    parameter:: {
      local block = self,
      new():: (
        {}
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values: converted,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values+: converted,
        }
      ),
    },
    withParameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter: value,
      }
    ),
    withParameterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter+: converted,
      }
    ),
  },
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withSplitChargeRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      split_charge_rule: value,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
  withSplitChargeRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      split_charge_rule+: converted,
    }
  ),
}
