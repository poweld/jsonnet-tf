{
  local block = self,
  new(terraformName, monitorType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ce_anomaly_monitor",
          type:: "resource",
          attributes:: ["arn", "id", "monitor_dimension", "monitor_specification", "monitor_type", "name", "tags", "tags_all"],
        },
      },
    }
    + block.withMonitorType(monitorType)
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMonitorDimension(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_dimension" expected to be of type "string"';
    {
      monitor_dimension: converted,
    }
  ),
  withMonitorSpecification(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_specification" expected to be of type "string"';
    {
      monitor_specification: converted,
    }
  ),
  withMonitorType(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_type" expected to be of type "string"';
    {
      monitor_type: converted,
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
}
