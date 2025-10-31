{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_waf_xss_match_set",
          type:: "resource",
          attributes:: ["arn", "id", "name"],
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  xss_match_tuples:: {
    local block = self,
    new(textTransformation):: (
      {}
      + block.withTextTransformation(textTransformation)
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
  withXssMatchTuples(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xss_match_tuples: value,
    }
  ),
  withXssMatchTuplesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xss_match_tuples+: converted,
    }
  ),
}
