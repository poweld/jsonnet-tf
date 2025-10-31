{
  local block = self,
  new(terraformName, cluster, taskDefinition):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_task_execution",
          type:: "data",
          attributes:: ["client_token", "cluster", "desired_count", "enable_ecs_managed_tags", "enable_execute_command", "group", "id", "launch_type", "platform_version", "propagate_tags", "reference_id", "region", "started_by", "tags", "task_arns", "task_definition"],
        },
      },
    }
    + block.withCluster(cluster)
    + block.withTaskDefinition(taskDefinition)
  ),
  withClientToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_token" expected to be of type "string"';
    {
      client_token: converted,
    }
  ),
  withCluster(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster" expected to be of type "string"';
    {
      cluster: converted,
    }
  ),
  withDesiredCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_count" expected to be of type "number"';
    {
      desired_count: converted,
    }
  ),
  withEnableEcsManagedTags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_ecs_managed_tags" expected to be of type "bool"';
    {
      enable_ecs_managed_tags: converted,
    }
  ),
  withEnableExecuteCommand(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_execute_command" expected to be of type "bool"';
    {
      enable_execute_command: converted,
    }
  ),
  withGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"group" expected to be of type "string"';
    {
      group: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLaunchType(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_type" expected to be of type "string"';
    {
      launch_type: converted,
    }
  ),
  withPlatformVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_version" expected to be of type "string"';
    {
      platform_version: converted,
    }
  ),
  withPropagateTags(value):: (
    local converted = value;
    assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
    {
      propagate_tags: converted,
    }
  ),
  withReferenceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"reference_id" expected to be of type "string"';
    {
      reference_id: converted,
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
  withStartedBy(value):: (
    local converted = value;
    assert std.isString(converted) : '"started_by" expected to be of type "string"';
    {
      started_by: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTaskDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_definition" expected to be of type "string"';
    {
      task_definition: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  capacity_provider_strategy:: {
    local block = self,
    new(capacityProvider):: (
      {}
      + block.withCapacityProvider(capacityProvider)
    ),
    withBase(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"base" expected to be of type "number"';
      {
        base: converted,
      }
    ),
    withCapacityProvider(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
      {
        capacity_provider: converted,
      }
    ),
    withWeight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  network_configuration:: {
    local block = self,
    new(subnets):: (
      {}
      + block.withSubnets(subnets)
    ),
    withAssignPublicIp(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"assign_public_ip" expected to be of type "bool"';
      {
        assign_public_ip: converted,
      }
    ),
    withSecurityGroups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
      {
        security_groups: converted,
      }
    ),
    withSecurityGroupsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
      {
        security_groups+: converted,
      }
    ),
    withSubnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    withSubnetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
  },
  overrides:: {
    local block = self,
    new():: (
      {}
    ),
    withCpu(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu" expected to be of type "string"';
      {
        cpu: converted,
      }
    ),
    withExecutionRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
      {
        execution_role_arn: converted,
      }
    ),
    withMemory(value):: (
      local converted = value;
      assert std.isString(converted) : '"memory" expected to be of type "string"';
      {
        memory: converted,
      }
    ),
    withTaskRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_role_arn" expected to be of type "string"';
      {
        task_role_arn: converted,
      }
    ),
    container_overrides:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      withCommand(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"command" expected to be of type "list"';
        {
          command: converted,
        }
      ),
      withCommandMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"command" expected to be of type "list"';
        {
          command+: converted,
        }
      ),
      withCpu(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"cpu" expected to be of type "number"';
        {
          cpu: converted,
        }
      ),
      withMemory(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"memory" expected to be of type "number"';
        {
          memory: converted,
        }
      ),
      withMemoryReservation(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"memory_reservation" expected to be of type "number"';
        {
          memory_reservation: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      environment:: {
        local block = self,
        new(key, value):: (
          {}
          + block.withKey(key)
          + block.withValue(value)
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      resource_requirements:: {
        local block = self,
        new(type, value):: (
          {}
          + block.withType(type)
          + block.withValue(value)
        ),
        withType(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        withValue(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      withEnvironment(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          environment: value,
        }
      ),
      withResourceRequirements(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          resource_requirements: value,
        }
      ),
      withEnvironmentMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          environment+: converted,
        }
      ),
      withResourceRequirementsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          resource_requirements+: converted,
        }
      ),
    },
    withContainerOverrides(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_overrides: value,
      }
    ),
    withContainerOverridesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_overrides+: converted,
      }
    ),
  },
  placement_constraints:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withExpression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  placement_strategy:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withField(value):: (
      local converted = value;
      assert std.isString(converted) : '"field" expected to be of type "string"';
      {
        field: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  withCapacityProviderStrategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy: value,
    }
  ),
  withNetworkConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  withOverrides(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      overrides: value,
    }
  ),
  withPlacementConstraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints: value,
    }
  ),
  withPlacementStrategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_strategy: value,
    }
  ),
  withCapacityProviderStrategyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy+: converted,
    }
  ),
  withNetworkConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
  withOverridesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      overrides+: converted,
    }
  ),
  withPlacementConstraintsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints+: converted,
    }
  ),
  withPlacementStrategyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_strategy+: converted,
    }
  ),
}
