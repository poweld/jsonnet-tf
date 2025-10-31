{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_capacity_provider",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
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
  auto_scaling_group_provider:: {
    local block = self,
    new(autoScalingGroupArn):: (
      {}
      + block.withAutoScalingGroupArn(autoScalingGroupArn)
    ),
    withAutoScalingGroupArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_scaling_group_arn" expected to be of type "string"';
      {
        auto_scaling_group_arn: converted,
      }
    ),
    withManagedDraining(value):: (
      local converted = value;
      assert std.isString(converted) : '"managed_draining" expected to be of type "string"';
      {
        managed_draining: converted,
      }
    ),
    withManagedTerminationProtection(value):: (
      local converted = value;
      assert std.isString(converted) : '"managed_termination_protection" expected to be of type "string"';
      {
        managed_termination_protection: converted,
      }
    ),
    managed_scaling:: {
      local block = self,
      new():: (
        {}
      ),
      withInstanceWarmupPeriod(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"instance_warmup_period" expected to be of type "number"';
        {
          instance_warmup_period: converted,
        }
      ),
      withMaximumScalingStepSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_scaling_step_size" expected to be of type "number"';
        {
          maximum_scaling_step_size: converted,
        }
      ),
      withMinimumScalingStepSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minimum_scaling_step_size" expected to be of type "number"';
        {
          minimum_scaling_step_size: converted,
        }
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
      withTargetCapacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_capacity" expected to be of type "number"';
        {
          target_capacity: converted,
        }
      ),
    },
    withManagedScaling(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_scaling: value,
      }
    ),
    withManagedScalingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_scaling+: converted,
      }
    ),
  },
  withAutoScalingGroupProvider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_group_provider: value,
    }
  ),
  withAutoScalingGroupProviderMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_group_provider+: converted,
    }
  ),
}
