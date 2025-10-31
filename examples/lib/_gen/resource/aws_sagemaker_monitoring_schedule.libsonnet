{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_monitoring_schedule",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
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
  monitoring_schedule_config:: {
    local block = self,
    new(monitoringJobDefinitionName, monitoringType):: (
      {}
      + block.withMonitoringJobDefinitionName(monitoringJobDefinitionName)
      + block.withMonitoringType(monitoringType)
    ),
    withMonitoringJobDefinitionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"monitoring_job_definition_name" expected to be of type "string"';
      {
        monitoring_job_definition_name: converted,
      }
    ),
    withMonitoringType(value):: (
      local converted = value;
      assert std.isString(converted) : '"monitoring_type" expected to be of type "string"';
      {
        monitoring_type: converted,
      }
    ),
    schedule_config:: {
      local block = self,
      new(scheduleExpression):: (
        {}
        + block.withScheduleExpression(scheduleExpression)
      ),
      withScheduleExpression(value):: (
        local converted = value;
        assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
        {
          schedule_expression: converted,
        }
      ),
    },
    withScheduleConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule_config: value,
      }
    ),
    withScheduleConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule_config+: converted,
      }
    ),
  },
  withMonitoringScheduleConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring_schedule_config: value,
    }
  ),
  withMonitoringScheduleConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring_schedule_config+: converted,
    }
  ),
}
