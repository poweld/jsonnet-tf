{
  local block = self,
  new(terraformName, instanceId, name, timeZone):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_hours_of_operation",
          type:: "resource",
          attributes:: ["arn", "description", "hours_of_operation_id", "id", "instance_id", "name", "region", "tags", "tags_all", "time_zone"],
        },
      },
    }
    + block.withInstanceId(instanceId)
    + block.withName(name)
    + block.withTimeZone(timeZone)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  withTimeZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_zone" expected to be of type "string"';
    {
      time_zone: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  config:: {
    local block = self,
    new(day):: (
      {}
      + block.withDay(day)
    ),
    withDay(value):: (
      local converted = value;
      assert std.isString(converted) : '"day" expected to be of type "string"';
      {
        day: converted,
      }
    ),
    end_time:: {
      local block = self,
      new(hours, minutes):: (
        {}
        + block.withHours(hours)
        + block.withMinutes(minutes)
      ),
      withHours(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"hours" expected to be of type "number"';
        {
          hours: converted,
        }
      ),
      withMinutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
        {
          minutes: converted,
        }
      ),
    },
    start_time:: {
      local block = self,
      new(hours, minutes):: (
        {}
        + block.withHours(hours)
        + block.withMinutes(minutes)
      ),
      withHours(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"hours" expected to be of type "number"';
        {
          hours: converted,
        }
      ),
      withMinutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minutes" expected to be of type "number"';
        {
          minutes: converted,
        }
      ),
    },
    withEndTime(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        end_time: value,
      }
    ),
    withStartTime(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        start_time: value,
      }
    ),
    withEndTimeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        end_time+: converted,
      }
    ),
    withStartTimeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        start_time+: converted,
      }
    ),
  },
  withConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config: value,
    }
  ),
  withConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config+: converted,
    }
  ),
}
