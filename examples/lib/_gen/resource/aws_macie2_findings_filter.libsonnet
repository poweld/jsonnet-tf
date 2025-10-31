{
  local block = self,
  new(terraformName, action):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_macie2_findings_filter",
          type:: "resource",
          attributes:: ["action", "arn", "description", "id", "name", "name_prefix", "position", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAction(action)
  ),
  withAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
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
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPosition(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"position" expected to be of type "number"';
    {
      position: converted,
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
  finding_criteria:: {
    local block = self,
    new():: (
      {}
    ),
    criterion:: {
      local block = self,
      new(field):: (
        {}
        + block.withField(field)
      ),
      withEq(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"eq" expected to be of type "set"';
        {
          eq: converted,
        }
      ),
      withEqMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"eq" expected to be of type "set"';
        {
          eq+: converted,
        }
      ),
      withEqExactMatch(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"eq_exact_match" expected to be of type "set"';
        {
          eq_exact_match: converted,
        }
      ),
      withEqExactMatchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"eq_exact_match" expected to be of type "set"';
        {
          eq_exact_match+: converted,
        }
      ),
      withField(value):: (
        local converted = value;
        assert std.isString(converted) : '"field" expected to be of type "string"';
        {
          field: converted,
        }
      ),
      withGt(value):: (
        local converted = value;
        assert std.isString(converted) : '"gt" expected to be of type "string"';
        {
          gt: converted,
        }
      ),
      withGte(value):: (
        local converted = value;
        assert std.isString(converted) : '"gte" expected to be of type "string"';
        {
          gte: converted,
        }
      ),
      withLt(value):: (
        local converted = value;
        assert std.isString(converted) : '"lt" expected to be of type "string"';
        {
          lt: converted,
        }
      ),
      withLte(value):: (
        local converted = value;
        assert std.isString(converted) : '"lte" expected to be of type "string"';
        {
          lte: converted,
        }
      ),
      withNeq(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"neq" expected to be of type "set"';
        {
          neq: converted,
        }
      ),
      withNeqMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"neq" expected to be of type "set"';
        {
          neq+: converted,
        }
      ),
    },
    withCriterion(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        criterion: value,
      }
    ),
    withCriterionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        criterion+: converted,
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
  },
  withFindingCriteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      finding_criteria: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withFindingCriteriaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      finding_criteria+: converted,
    }
  ),
}
