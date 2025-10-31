{
  local block = self,
  new(terraformName, analyzerName, ruleName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_accessanalyzer_archive_rule",
          type:: "resource",
          attributes:: ["analyzer_name", "id", "region", "rule_name"],
        },
      },
    }
    + block.withAnalyzerName(analyzerName)
    + block.withRuleName(ruleName)
  ),
  withAnalyzerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"analyzer_name" expected to be of type "string"';
    {
      analyzer_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withRuleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_name" expected to be of type "string"';
    {
      rule_name: converted,
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
    new(criteria):: (
      {}
      + block.withCriteria(criteria)
    ),
    withContains(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"contains" expected to be of type "list"';
      {
        contains: converted,
      }
    ),
    withContainsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"contains" expected to be of type "list"';
      {
        contains+: converted,
      }
    ),
    withCriteria(value):: (
      local converted = value;
      assert std.isString(converted) : '"criteria" expected to be of type "string"';
      {
        criteria: converted,
      }
    ),
    withEq(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"eq" expected to be of type "list"';
      {
        eq: converted,
      }
    ),
    withEqMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"eq" expected to be of type "list"';
      {
        eq+: converted,
      }
    ),
    withExists(value):: (
      local converted = value;
      assert std.isString(converted) : '"exists" expected to be of type "string"';
      {
        exists: converted,
      }
    ),
    withNeq(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"neq" expected to be of type "list"';
      {
        neq: converted,
      }
    ),
    withNeqMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"neq" expected to be of type "list"';
      {
        neq+: converted,
      }
    ),
  },
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
