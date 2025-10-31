{
  local block = self,
  new(terraformName, maxCapacity, minCapacity, resourceId, scalableDimension, serviceNamespace):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appautoscaling_target",
          type:: "resource",
          attributes:: ["arn", "id", "max_capacity", "min_capacity", "region", "resource_id", "role_arn", "scalable_dimension", "service_namespace", "tags", "tags_all"],
        },
      },
    }
    + block.withMaxCapacity(maxCapacity)
    + block.withMinCapacity(minCapacity)
    + block.withResourceId(resourceId)
    + block.withScalableDimension(scalableDimension)
    + block.withServiceNamespace(serviceNamespace)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
    {
      max_capacity: converted,
    }
  ),
  withMinCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_capacity" expected to be of type "number"';
    {
      min_capacity: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withScalableDimension(value):: (
    local converted = value;
    assert std.isString(converted) : '"scalable_dimension" expected to be of type "string"';
    {
      scalable_dimension: converted,
    }
  ),
  withServiceNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_namespace" expected to be of type "string"';
    {
      service_namespace: converted,
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
  suspended_state:: {
    local block = self,
    new():: (
      {}
    ),
    withDynamicScalingInSuspended(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dynamic_scaling_in_suspended" expected to be of type "bool"';
      {
        dynamic_scaling_in_suspended: converted,
      }
    ),
    withDynamicScalingOutSuspended(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dynamic_scaling_out_suspended" expected to be of type "bool"';
      {
        dynamic_scaling_out_suspended: converted,
      }
    ),
    withScheduledScalingSuspended(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"scheduled_scaling_suspended" expected to be of type "bool"';
      {
        scheduled_scaling_suspended: converted,
      }
    ),
  },
  withSuspendedState(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      suspended_state: value,
    }
  ),
  withSuspendedStateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      suspended_state+: converted,
    }
  ),
}
