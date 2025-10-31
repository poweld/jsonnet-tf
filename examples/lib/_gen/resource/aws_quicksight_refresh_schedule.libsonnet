{
  local block = self,
  new(terraformName, dataSetId, scheduleId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_refresh_schedule",
          type:: "resource",
          attributes:: ["arn", "aws_account_id", "data_set_id", "id", "region", "schedule_id"],
        },
      },
    }
    + block.withDataSetId(dataSetId)
    + block.withScheduleId(scheduleId)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withDataSetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_set_id" expected to be of type "string"';
    {
      data_set_id: converted,
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
  withScheduleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_id" expected to be of type "string"';
    {
      schedule_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  schedule:: {
    local block = self,
    new(refreshType):: (
      {}
      + block.withRefreshType(refreshType)
    ),
    withRefreshType(value):: (
      local converted = value;
      assert std.isString(converted) : '"refresh_type" expected to be of type "string"';
      {
        refresh_type: converted,
      }
    ),
    withStartAfterDateTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"start_after_date_time" expected to be of type "string"';
      {
        start_after_date_time: converted,
      }
    ),
    schedule_frequency:: {
      local block = self,
      new(interval):: (
        {}
        + block.withInterval(interval)
      ),
      withInterval(value):: (
        local converted = value;
        assert std.isString(converted) : '"interval" expected to be of type "string"';
        {
          interval: converted,
        }
      ),
      withTimeOfTheDay(value):: (
        local converted = value;
        assert std.isString(converted) : '"time_of_the_day" expected to be of type "string"';
        {
          time_of_the_day: converted,
        }
      ),
      withTimezone(value):: (
        local converted = value;
        assert std.isString(converted) : '"timezone" expected to be of type "string"';
        {
          timezone: converted,
        }
      ),
      refresh_on_day:: {
        local block = self,
        new():: (
          {}
        ),
        withDayOfMonth(value):: (
          local converted = value;
          assert std.isString(converted) : '"day_of_month" expected to be of type "string"';
          {
            day_of_month: converted,
          }
        ),
        withDayOfWeek(value):: (
          local converted = value;
          assert std.isString(converted) : '"day_of_week" expected to be of type "string"';
          {
            day_of_week: converted,
          }
        ),
      },
      withRefreshOnDay(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          refresh_on_day: value,
        }
      ),
      withRefreshOnDayMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          refresh_on_day+: converted,
        }
      ),
    },
    withScheduleFrequency(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule_frequency: value,
      }
    ),
    withScheduleFrequencyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        schedule_frequency+: converted,
      }
    ),
  },
  withSchedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule: value,
    }
  ),
  withScheduleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule+: converted,
    }
  ),
}
