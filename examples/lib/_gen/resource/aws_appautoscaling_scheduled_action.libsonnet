{
  local block = self,
  new(terraformName, name, resourceId, scalableDimension, schedule, serviceNamespace):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appautoscaling_scheduled_action",
          type:: "resource",
          attributes:: ["arn", "end_time", "id", "name", "region", "resource_id", "scalable_dimension", "schedule", "service_namespace", "start_time", "timezone"],
        },
      },
    }
    + block.withName(name)
    + block.withResourceId(resourceId)
    + block.withScalableDimension(scalableDimension)
    + block.withSchedule(schedule)
    + block.withServiceNamespace(serviceNamespace)
  ),
  withEndTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_time" expected to be of type "string"';
    {
      end_time: converted,
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
  withResourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  withScalableDimension(value):: (
    local converted = value;
    assert std.isString(converted) : '"scalable_dimension" expected to be of type "string"';
    {
      scalable_dimension: converted,
    }
  ),
  withSchedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  withServiceNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_namespace" expected to be of type "string"';
    {
      service_namespace: converted,
    }
  ),
  withStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  withTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  scalable_target_action:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxCapacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_capacity" expected to be of type "string"';
      {
        max_capacity: converted,
      }
    ),
    withMinCapacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"min_capacity" expected to be of type "string"';
      {
        min_capacity: converted,
      }
    ),
  },
  withScalableTargetAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scalable_target_action: value,
    }
  ),
  withScalableTargetActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scalable_target_action+: converted,
    }
  ),
}
