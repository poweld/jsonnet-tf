{
  local block = self,
  new(terraformName, cutoff, duration, name, schedule):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_maintenance_window",
          type:: "resource",
          attributes:: ["allow_unassociated_targets", "cutoff", "description", "duration", "enabled", "end_date", "id", "name", "region", "schedule", "schedule_offset", "schedule_timezone", "start_date", "tags", "tags_all"],
        },
      },
    }
    + block.withCutoff(cutoff)
    + block.withDuration(duration)
    + block.withName(name)
    + block.withSchedule(schedule)
  ),
  withAllowUnassociatedTargets(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_unassociated_targets" expected to be of type "bool"';
    {
      allow_unassociated_targets: converted,
    }
  ),
  withCutoff(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cutoff" expected to be of type "number"';
    {
      cutoff: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDuration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration" expected to be of type "number"';
    {
      duration: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withEndDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date" expected to be of type "string"';
    {
      end_date: converted,
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
  withSchedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  withScheduleOffset(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"schedule_offset" expected to be of type "number"';
    {
      schedule_offset: converted,
    }
  ),
  withScheduleTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_timezone" expected to be of type "string"';
    {
      schedule_timezone: converted,
    }
  ),
  withStartDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_date" expected to be of type "string"';
    {
      start_date: converted,
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
