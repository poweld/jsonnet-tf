{
  local block = self,
  new(terraformName, name, releaseLabel, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emrserverless_application",
          type:: "resource",
          attributes:: ["architecture", "arn", "id", "name", "region", "release_label", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withReleaseLabel(releaseLabel)
    + block.withType(type)
  ),
  withArchitecture(value):: (
    local converted = value;
    assert std.isString(converted) : '"architecture" expected to be of type "string"';
    {
      architecture: converted,
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
  withReleaseLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_label" expected to be of type "string"';
    {
      release_label: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  auto_start_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  auto_stop_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withIdleTimeoutMinutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"idle_timeout_minutes" expected to be of type "number"';
      {
        idle_timeout_minutes: converted,
      }
    ),
  },
  image_configuration:: {
    local block = self,
    new(imageUri):: (
      {}
      + block.withImageUri(imageUri)
    ),
    withImageUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"image_uri" expected to be of type "string"';
      {
        image_uri: converted,
      }
    ),
  },
  initial_capacity:: {
    local block = self,
    new(initialCapacityType):: (
      {}
      + block.withInitialCapacityType(initialCapacityType)
    ),
    withInitialCapacityType(value):: (
      local converted = value;
      assert std.isString(converted) : '"initial_capacity_type" expected to be of type "string"';
      {
        initial_capacity_type: converted,
      }
    ),
    initial_capacity_config:: {
      local block = self,
      new(workerCount):: (
        {}
        + block.withWorkerCount(workerCount)
      ),
      withWorkerCount(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"worker_count" expected to be of type "number"';
        {
          worker_count: converted,
        }
      ),
      worker_configuration:: {
        local block = self,
        new(cpu, memory):: (
          {}
          + block.withCpu(cpu)
          + block.withMemory(memory)
        ),
        withCpu(value):: (
          local converted = value;
          assert std.isString(converted) : '"cpu" expected to be of type "string"';
          {
            cpu: converted,
          }
        ),
        withDisk(value):: (
          local converted = value;
          assert std.isString(converted) : '"disk" expected to be of type "string"';
          {
            disk: converted,
          }
        ),
        withMemory(value):: (
          local converted = value;
          assert std.isString(converted) : '"memory" expected to be of type "string"';
          {
            memory: converted,
          }
        ),
      },
      withWorkerConfiguration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          worker_configuration: value,
        }
      ),
      withWorkerConfigurationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          worker_configuration+: converted,
        }
      ),
    },
    withInitialCapacityConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        initial_capacity_config: value,
      }
    ),
    withInitialCapacityConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        initial_capacity_config+: converted,
      }
    ),
  },
  interactive_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withLivyEndpointEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"livy_endpoint_enabled" expected to be of type "bool"';
      {
        livy_endpoint_enabled: converted,
      }
    ),
    withStudioEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"studio_enabled" expected to be of type "bool"';
      {
        studio_enabled: converted,
      }
    ),
  },
  maximum_capacity:: {
    local block = self,
    new(cpu, memory):: (
      {}
      + block.withCpu(cpu)
      + block.withMemory(memory)
    ),
    withCpu(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu" expected to be of type "string"';
      {
        cpu: converted,
      }
    ),
    withDisk(value):: (
      local converted = value;
      assert std.isString(converted) : '"disk" expected to be of type "string"';
      {
        disk: converted,
      }
    ),
    withMemory(value):: (
      local converted = value;
      assert std.isString(converted) : '"memory" expected to be of type "string"';
      {
        memory: converted,
      }
    ),
  },
  network_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  withAutoStartConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_start_configuration: value,
    }
  ),
  withAutoStopConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_stop_configuration: value,
    }
  ),
  withImageConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_configuration: value,
    }
  ),
  withInitialCapacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_capacity: value,
    }
  ),
  withInteractiveConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      interactive_configuration: value,
    }
  ),
  withMaximumCapacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maximum_capacity: value,
    }
  ),
  withNetworkConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  withAutoStartConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_start_configuration+: converted,
    }
  ),
  withAutoStopConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_stop_configuration+: converted,
    }
  ),
  withImageConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_configuration+: converted,
    }
  ),
  withInitialCapacityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_capacity+: converted,
    }
  ),
  withInteractiveConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      interactive_configuration+: converted,
    }
  ),
  withMaximumCapacityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maximum_capacity+: converted,
    }
  ),
  withNetworkConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
}
