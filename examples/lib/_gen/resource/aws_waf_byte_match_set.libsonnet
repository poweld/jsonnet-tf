{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_waf_byte_match_set",
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
  byte_match_tuples:: {
    local block = self,
    new(positionalConstraint, textTransformation):: (
      {}
      + block.withPositionalConstraint(positionalConstraint)
      + block.withTextTransformation(textTransformation)
    ),
    withPositionalConstraint(value):: (
      local converted = value;
      assert std.isString(converted) : '"positional_constraint" expected to be of type "string"';
      {
        positional_constraint: converted,
      }
    ),
    withTargetString(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_string" expected to be of type "string"';
      {
        target_string: converted,
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
  withByteMatchTuples(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      byte_match_tuples: value,
    }
  ),
  withByteMatchTuplesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      byte_match_tuples+: converted,
    }
  ),
}
