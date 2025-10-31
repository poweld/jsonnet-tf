{
  local block = self,
  new(terraformName, metricName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafregional_rule",
          type:: "resource",
          attributes:: ["arn", "id", "metric_name", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withMetricName(metricName)
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMetricName(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric_name" expected to be of type "string"';
    {
      metric_name: converted,
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
  predicate:: {
    local block = self,
    new(dataId, negated, type):: (
      {}
      + block.withDataId(dataId)
      + block.withNegated(negated)
      + block.withType(type)
    ),
    withDataId(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_id" expected to be of type "string"';
      {
        data_id: converted,
      }
    ),
    withNegated(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"negated" expected to be of type "bool"';
      {
        negated: converted,
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
  withPredicate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicate: value,
    }
  ),
  withPredicateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicate+: converted,
    }
  ),
}
