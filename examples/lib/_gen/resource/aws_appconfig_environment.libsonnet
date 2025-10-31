{
  local block = self,
  new(terraformName, applicationId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appconfig_environment",
          type:: "resource",
          attributes:: ["application_id", "arn", "description", "environment_id", "id", "name", "region", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withApplicationId(applicationId)
    + block.withName(name)
  ),
  withApplicationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
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
  monitor:: {
    local block = self,
    new(alarmArn):: (
      {}
      + block.withAlarmArn(alarmArn)
    ),
    withAlarmArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"alarm_arn" expected to be of type "string"';
      {
        alarm_arn: converted,
      }
    ),
    withAlarmRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"alarm_role_arn" expected to be of type "string"';
      {
        alarm_role_arn: converted,
      }
    ),
  },
  withMonitor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitor: value,
    }
  ),
  withMonitorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitor+: converted,
    }
  ),
}
