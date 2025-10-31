{
  local block = self,
  new(terraformName, description, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_notifications_notification_configuration",
          type:: "resource",
          attributes:: ["aggregation_duration", "arn", "description", "name", "tags", "tags_all"],
        },
      },
    }
    + block.withDescription(description)
    + block.withName(name)
  ),
  withAggregationDuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"aggregation_duration" expected to be of type "string"';
    {
      aggregation_duration: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
