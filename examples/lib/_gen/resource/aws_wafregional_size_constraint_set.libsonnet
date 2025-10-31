{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafregional_size_constraint_set",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region"],
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
  size_constraints:: {
    local block = self,
    new(comparisonOperator, size, textTransformation):: (
      {}
      + block.withComparisonOperator(comparisonOperator)
      + block.withSize(size)
      + block.withTextTransformation(textTransformation)
    ),
    withComparisonOperator(value):: (
      local converted = value;
      assert std.isString(converted) : '"comparison_operator" expected to be of type "string"';
      {
        comparison_operator: converted,
      }
    ),
    withSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
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
  withSizeConstraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      size_constraints: value,
    }
  ),
  withSizeConstraintsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      size_constraints+: converted,
    }
  ),
}
