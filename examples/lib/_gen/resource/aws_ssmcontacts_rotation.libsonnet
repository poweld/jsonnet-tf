{
  local block = self,
  new(terraformName, contactIds, name, timeZoneId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssmcontacts_rotation",
          type:: "resource",
          attributes:: ["arn", "contact_ids", "id", "name", "region", "start_time", "tags", "tags_all", "time_zone_id"],
        },
      },
    }
    + block.withContactIds(contactIds)
    + block.withName(name)
    + block.withTimeZoneId(timeZoneId)
  ),
  withContactIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"contact_ids" expected to be of type "list"';
    {
      contact_ids: converted,
    }
  ),
  withContactIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"contact_ids" expected to be of type "list"';
    {
      contact_ids+: converted,
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
  withStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTimeZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_zone_id" expected to be of type "string"';
    {
      time_zone_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  recurrence:: {
    local block = self,
    new(numberOfOnCalls, recurrenceMultiplier):: (
      {}
      + block.withNumberOfOnCalls(numberOfOnCalls)
      + block.withRecurrenceMultiplier(recurrenceMultiplier)
    ),
    withNumberOfOnCalls(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"number_of_on_calls" expected to be of type "number"';
      {
        number_of_on_calls: converted,
      }
    ),
    withRecurrenceMultiplier(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"recurrence_multiplier" expected to be of type "number"';
      {
        recurrence_multiplier: converted,
      }
    ),
    daily_settings:: {
      local block = self,
      new(hourOfDay, minuteOfHour):: (
        {}
        + block.withHourOfDay(hourOfDay)
        + block.withMinuteOfHour(minuteOfHour)
      ),
      withHourOfDay(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
        {
          hour_of_day: converted,
        }
      ),
      withMinuteOfHour(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
        {
          minute_of_hour: converted,
        }
      ),
    },
    monthly_settings:: {
      local block = self,
      new(dayOfMonth):: (
        {}
        + block.withDayOfMonth(dayOfMonth)
      ),
      withDayOfMonth(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"day_of_month" expected to be of type "number"';
        {
          day_of_month: converted,
        }
      ),
      hand_off_time:: {
        local block = self,
        new(hourOfDay, minuteOfHour):: (
          {}
          + block.withHourOfDay(hourOfDay)
          + block.withMinuteOfHour(minuteOfHour)
        ),
        withHourOfDay(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
          {
            hour_of_day: converted,
          }
        ),
        withMinuteOfHour(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
          {
            minute_of_hour: converted,
          }
        ),
      },
      withHandOffTime(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hand_off_time: value,
        }
      ),
      withHandOffTimeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hand_off_time+: converted,
        }
      ),
    },
    shift_coverages:: {
      local block = self,
      new(mapBlockKey):: (
        {}
        + block.withMapBlockKey(mapBlockKey)
      ),
      withMapBlockKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
        {
          map_block_key: converted,
        }
      ),
      coverage_times:: {
        local block = self,
        new():: (
          {}
        ),
        end:: {
          local block = self,
          new(hourOfDay, minuteOfHour):: (
            {}
            + block.withHourOfDay(hourOfDay)
            + block.withMinuteOfHour(minuteOfHour)
          ),
          withHourOfDay(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
            {
              hour_of_day: converted,
            }
          ),
          withMinuteOfHour(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
            {
              minute_of_hour: converted,
            }
          ),
        },
        start:: {
          local block = self,
          new(hourOfDay, minuteOfHour):: (
            {}
            + block.withHourOfDay(hourOfDay)
            + block.withMinuteOfHour(minuteOfHour)
          ),
          withHourOfDay(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
            {
              hour_of_day: converted,
            }
          ),
          withMinuteOfHour(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
            {
              minute_of_hour: converted,
            }
          ),
        },
        withEnd(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            end: value,
          }
        ),
        withStart(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            start: value,
          }
        ),
        withEndMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            end+: converted,
          }
        ),
        withStartMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            start+: converted,
          }
        ),
      },
      withCoverageTimes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          coverage_times: value,
        }
      ),
      withCoverageTimesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          coverage_times+: converted,
        }
      ),
    },
    weekly_settings:: {
      local block = self,
      new(dayOfWeek):: (
        {}
        + block.withDayOfWeek(dayOfWeek)
      ),
      withDayOfWeek(value):: (
        local converted = value;
        assert std.isString(converted) : '"day_of_week" expected to be of type "string"';
        {
          day_of_week: converted,
        }
      ),
      hand_off_time:: {
        local block = self,
        new(hourOfDay, minuteOfHour):: (
          {}
          + block.withHourOfDay(hourOfDay)
          + block.withMinuteOfHour(minuteOfHour)
        ),
        withHourOfDay(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
          {
            hour_of_day: converted,
          }
        ),
        withMinuteOfHour(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
          {
            minute_of_hour: converted,
          }
        ),
      },
      withHandOffTime(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hand_off_time: value,
        }
      ),
      withHandOffTimeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          hand_off_time+: converted,
        }
      ),
    },
    withDailySettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        daily_settings: value,
      }
    ),
    withMonthlySettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        monthly_settings: value,
      }
    ),
    withShiftCoverages(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        shift_coverages: value,
      }
    ),
    withWeeklySettings(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        weekly_settings: value,
      }
    ),
    withDailySettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        daily_settings+: converted,
      }
    ),
    withMonthlySettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        monthly_settings+: converted,
      }
    ),
    withShiftCoveragesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        shift_coverages+: converted,
      }
    ),
    withWeeklySettingsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        weekly_settings+: converted,
      }
    ),
  },
  withRecurrence(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recurrence: value,
    }
  ),
  withRecurrenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recurrence+: converted,
    }
  ),
}
