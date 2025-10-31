{
  local block = self,
  new(terraformName, action, detectorId, name, rank):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_guardduty_filter",
          type:: "resource",
          attributes:: ["action", "arn", "description", "detector_id", "id", "name", "rank", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAction(action)
    + block.withDetectorId(detectorId)
    + block.withName(name)
    + block.withRank(rank)
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
  withDetectorId(value):: (
    local converted = value;
    assert std.isString(converted) : '"detector_id" expected to be of type "string"';
    {
      detector_id: converted,
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
  withRank(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rank" expected to be of type "number"';
    {
      rank: converted,
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
      withEquals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals: converted,
        }
      ),
      withEqualsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"equals" expected to be of type "list"';
        {
          equals+: converted,
        }
      ),
      withField(value):: (
        local converted = value;
        assert std.isString(converted) : '"field" expected to be of type "string"';
        {
          field: converted,
        }
      ),
      withGreaterThan(value):: (
        local converted = value;
        assert std.isString(converted) : '"greater_than" expected to be of type "string"';
        {
          greater_than: converted,
        }
      ),
      withGreaterThanOrEqual(value):: (
        local converted = value;
        assert std.isString(converted) : '"greater_than_or_equal" expected to be of type "string"';
        {
          greater_than_or_equal: converted,
        }
      ),
      withLessThan(value):: (
        local converted = value;
        assert std.isString(converted) : '"less_than" expected to be of type "string"';
        {
          less_than: converted,
        }
      ),
      withLessThanOrEqual(value):: (
        local converted = value;
        assert std.isString(converted) : '"less_than_or_equal" expected to be of type "string"';
        {
          less_than_or_equal: converted,
        }
      ),
      withNotEquals(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals: converted,
        }
      ),
      withNotEqualsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"not_equals" expected to be of type "list"';
        {
          not_equals+: converted,
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
  withFindingCriteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      finding_criteria: value,
    }
  ),
  withFindingCriteriaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      finding_criteria+: converted,
    }
  ),
}
