{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_lifecycle_policy_document",
          type:: "data",
          attributes:: ["json"],
        },
      },
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
    new(priority):: (
      {}
      + block.withPriority(priority)
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    action:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    selection:: {
      local block = self,
      new(countNumber, countType, tagStatus):: (
        {}
        + block.withCountNumber(countNumber)
        + block.withCountType(countType)
        + block.withTagStatus(tagStatus)
      ),
      withCountNumber(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"count_number" expected to be of type "number"';
        {
          count_number: converted,
        }
      ),
      withCountType(value):: (
        local converted = value;
        assert std.isString(converted) : '"count_type" expected to be of type "string"';
        {
          count_type: converted,
        }
      ),
      withCountUnit(value):: (
        local converted = value;
        assert std.isString(converted) : '"count_unit" expected to be of type "string"';
        {
          count_unit: converted,
        }
      ),
      withTagPatternList(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"tag_pattern_list" expected to be of type "list"';
        {
          tag_pattern_list: converted,
        }
      ),
      withTagPatternListMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"tag_pattern_list" expected to be of type "list"';
        {
          tag_pattern_list+: converted,
        }
      ),
      withTagPrefixList(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"tag_prefix_list" expected to be of type "list"';
        {
          tag_prefix_list: converted,
        }
      ),
      withTagPrefixListMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"tag_prefix_list" expected to be of type "list"';
        {
          tag_prefix_list+: converted,
        }
      ),
      withTagStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"tag_status" expected to be of type "string"';
        {
          tag_status: converted,
        }
      ),
    },
    withAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    withSelection(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        selection: value,
      }
    ),
    withActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    withSelectionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        selection+: converted,
      }
    ),
  },
  withRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  withRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
