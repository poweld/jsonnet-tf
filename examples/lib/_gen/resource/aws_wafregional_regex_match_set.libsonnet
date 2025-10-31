{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafregional_regex_match_set",
          type:: "resource",
          attributes:: ["id", "name", "region"],
        },
      },
    }
    + block.withName(name)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  regex_match_tuple:: {
    local block = self,
    new(regexPatternSetId, textTransformation):: (
      {}
      + block.withRegexPatternSetId(regexPatternSetId)
      + block.withTextTransformation(textTransformation)
    ),
    withRegexPatternSetId(value):: (
      local converted = value;
      assert std.isString(converted) : '"regex_pattern_set_id" expected to be of type "string"';
      {
        regex_pattern_set_id: converted,
      }
    ),
    withTextTransformation(value):: (
      local converted = value;
      assert std.isString(converted) : '"text_transformation" expected to be of type "string"';
      {
        text_transformation: converted,
      }
    ),
    field_to_match:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withData(value):: (
        local converted = value;
        assert std.isString(converted) : '"data" expected to be of type "string"';
        {
          data: converted,
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
    withFieldToMatch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_to_match: value,
      }
    ),
    withFieldToMatchMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_to_match+: converted,
      }
    ),
  },
  withRegexMatchTuple(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regex_match_tuple: value,
    }
  ),
  withRegexMatchTupleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regex_match_tuple+: converted,
    }
  ),
}
