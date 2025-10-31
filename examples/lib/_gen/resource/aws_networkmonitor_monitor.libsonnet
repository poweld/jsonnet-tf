{
  local block = self,
  new(terraformName, monitorName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmonitor_monitor",
          type:: "resource",
          attributes:: ["aggregation_period", "arn", "id", "monitor_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withMonitorName(monitorName)
  ),
  withAggregationPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"aggregation_period" expected to be of type "number"';
    {
      aggregation_period: converted,
    }
  ),
  withMonitorName(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_name" expected to be of type "string"';
    {
      monitor_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
