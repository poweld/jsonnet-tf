{
  local block = self,
  new(terraformName, filterExpression, groupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_xray_group",
          type:: "resource",
          attributes:: ["arn", "filter_expression", "group_name", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withFilterExpression(filterExpression)
    + block.withGroupName(groupName)
  ),
  withFilterExpression(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_expression" expected to be of type "string"';
    {
      filter_expression: converted,
    }
  ),
  withGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
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
  insights_configuration:: {
    local block = self,
    new(insightsEnabled):: (
      {}
      + block.withInsightsEnabled(insightsEnabled)
    ),
    withInsightsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"insights_enabled" expected to be of type "bool"';
      {
        insights_enabled: converted,
      }
    ),
    withNotificationsEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"notifications_enabled" expected to be of type "bool"';
      {
        notifications_enabled: converted,
      }
    ),
  },
  withInsightsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      insights_configuration: value,
    }
  ),
  withInsightsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      insights_configuration+: converted,
    }
  ),
}
