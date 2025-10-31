{
  local block = self,
  new(terraformName, gameServerGroupName, maxSize, minSize, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_gamelift_game_server_group",
          type:: "resource",
          attributes:: ["arn", "auto_scaling_group_arn", "balancing_strategy", "game_server_group_name", "game_server_protection_policy", "id", "max_size", "min_size", "region", "role_arn", "tags", "tags_all", "vpc_subnets"],
        },
      },
    }
    + block.withGameServerGroupName(gameServerGroupName)
    + block.withMaxSize(maxSize)
    + block.withMinSize(minSize)
    + block.withRoleArn(roleArn)
  ),
  withBalancingStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"balancing_strategy" expected to be of type "string"';
    {
      balancing_strategy: converted,
    }
  ),
  withGameServerGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"game_server_group_name" expected to be of type "string"';
    {
      game_server_group_name: converted,
    }
  ),
  withGameServerProtectionPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"game_server_protection_policy" expected to be of type "string"';
    {
      game_server_protection_policy: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMaxSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  withMinSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  withVpcSubnets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnets" expected to be of type "set"';
    {
      vpc_subnets: converted,
    }
  ),
  withVpcSubnetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnets" expected to be of type "set"';
    {
      vpc_subnets+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  auto_scaling_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withEstimatedInstanceWarmup(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"estimated_instance_warmup" expected to be of type "number"';
      {
        estimated_instance_warmup: converted,
      }
    ),
    target_tracking_configuration:: {
      local block = self,
      new(targetValue):: (
        {}
        + block.withTargetValue(targetValue)
      ),
      withTargetValue(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_value" expected to be of type "number"';
        {
          target_value: converted,
        }
      ),
    },
    withTargetTrackingConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_configuration: value,
      }
    ),
    withTargetTrackingConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_configuration+: converted,
      }
    ),
  },
  instance_definition:: {
    local block = self,
    new(instanceType):: (
      {}
      + block.withInstanceType(instanceType)
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withWeightedCapacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"weighted_capacity" expected to be of type "string"';
      {
        weighted_capacity: converted,
      }
    ),
  },
  launch_template:: {
    local block = self,
    new():: (
      {}
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
    withVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withAutoScalingPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_policy: value,
    }
  ),
  withInstanceDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_definition: value,
    }
  ),
  withLaunchTemplate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAutoScalingPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_policy+: converted,
    }
  ),
  withInstanceDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_definition+: converted,
    }
  ),
  withLaunchTemplateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template+: converted,
    }
  ),
}
