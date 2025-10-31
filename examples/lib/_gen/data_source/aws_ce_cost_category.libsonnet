{
  local block = self,
  new(terraformName, costCategoryArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ce_cost_category",
          type:: "data",
          attributes:: ["cost_category_arn", "default_value", "effective_end", "effective_start", "id", "name", "rule", "rule_version", "split_charge_rule", "tags"],
        },
      },
    }
    + block.withCostCategoryArn(costCategoryArn)
  ),
  withCostCategoryArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cost_category_arn" expected to be of type "string"';
    {
      cost_category_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
