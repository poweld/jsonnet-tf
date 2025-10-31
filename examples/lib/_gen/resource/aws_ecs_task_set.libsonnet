{
  local block = self,
  new(terraformName, cluster, service, taskDefinition):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_task_set",
          type:: "resource",
          attributes:: ["arn", "cluster", "external_id", "force_delete", "id", "launch_type", "platform_version", "region", "service", "stability_status", "status", "tags", "tags_all", "task_definition", "task_set_id", "wait_until_stable", "wait_until_stable_timeout"],
        },
      },
    }
    + block.withCluster(cluster)
    + block.withService(service)
    + block.withTaskDefinition(taskDefinition)
  ),
  withCluster(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster" expected to be of type "string"';
    {
      cluster: converted,
    }
  ),
  withExternalId(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_id" expected to be of type "string"';
    {
      external_id: converted,
    }
  ),
  withForceDelete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withService(value):: (
    local converted = value;
    assert std.isString(converted) : '"service" expected to be of type "string"';
    {
      service: converted,
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
  withTaskDefinition(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_definition" expected to be of type "string"';
    {
      task_definition: converted,
    }
  ),
  withWaitUntilStable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_until_stable" expected to be of type "bool"';
    {
      wait_until_stable: converted,
    }
  ),
  withWaitUntilStableTimeout(value):: (
    local converted = value;
    assert std.isString(converted) : '"wait_until_stable_timeout" expected to be of type "string"';
    {
      wait_until_stable_timeout: converted,
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
    new(capacityProvider, weight):: (
      {}
      + block.withCapacityProvider(capacityProvider)
      + block.withWeight(weight)
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
  load_balancer:: {
    local block = self,
    new(containerName):: (
      {}
      + block.withContainerName(containerName)
    ),
    withContainerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    withContainerPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_port" expected to be of type "number"';
      {
        container_port: converted,
      }
    ),
    withLoadBalancerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"load_balancer_name" expected to be of type "string"';
      {
        load_balancer_name: converted,
      }
    ),
    withTargetGroupArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_group_arn" expected to be of type "string"';
      {
        target_group_arn: converted,
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
  scale:: {
    local block = self,
    new():: (
      {}
    ),
    withUnit(value):: (
      local converted = value;
      assert std.isString(converted) : '"unit" expected to be of type "string"';
      {
        unit: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"value" expected to be of type "number"';
      {
        value: converted,
      }
    ),
  },
  service_registries:: {
    local block = self,
    new(registryArn):: (
      {}
      + block.withRegistryArn(registryArn)
    ),
    withContainerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    withContainerPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_port" expected to be of type "number"';
      {
        container_port: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    withRegistryArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"registry_arn" expected to be of type "string"';
      {
        registry_arn: converted,
      }
    ),
  },
  withCapacityProviderStrategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy: value,
    }
  ),
  withLoadBalancer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer: value,
    }
  ),
  withNetworkConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  withScale(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scale: value,
    }
  ),
  withServiceRegistries(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_registries: value,
    }
  ),
  withCapacityProviderStrategyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy+: converted,
    }
  ),
  withLoadBalancerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer+: converted,
    }
  ),
  withNetworkConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
  withScaleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scale+: converted,
    }
  ),
  withServiceRegistriesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_registries+: converted,
    }
  ),
}
