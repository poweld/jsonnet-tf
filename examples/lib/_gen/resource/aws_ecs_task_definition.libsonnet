{
  local block = self,
  new(terraformName, containerDefinitions, family):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_task_definition",
          type:: "resource",
          attributes:: ["arn", "arn_without_revision", "container_definitions", "cpu", "enable_fault_injection", "execution_role_arn", "family", "id", "ipc_mode", "memory", "network_mode", "pid_mode", "region", "requires_compatibilities", "revision", "skip_destroy", "tags", "tags_all", "task_role_arn", "track_latest"],
        },
      },
    }
    + block.withContainerDefinitions(containerDefinitions)
    + block.withFamily(family)
  ),
  withContainerDefinitions(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_definitions" expected to be of type "string"';
    {
      container_definitions: converted,
    }
  ),
  withCpu(value):: (
    local converted = value;
    assert std.isString(converted) : '"cpu" expected to be of type "string"';
    {
      cpu: converted,
    }
  ),
  withEnableFaultInjection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_fault_injection" expected to be of type "bool"';
    {
      enable_fault_injection: converted,
    }
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  withFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"family" expected to be of type "string"';
    {
      family: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpcMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipc_mode" expected to be of type "string"';
    {
      ipc_mode: converted,
    }
  ),
  withMemory(value):: (
    local converted = value;
    assert std.isString(converted) : '"memory" expected to be of type "string"';
    {
      memory: converted,
    }
  ),
  withNetworkMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_mode" expected to be of type "string"';
    {
      network_mode: converted,
    }
  ),
  withPidMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"pid_mode" expected to be of type "string"';
    {
      pid_mode: converted,
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
  withRequiresCompatibilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"requires_compatibilities" expected to be of type "set"';
    {
      requires_compatibilities: converted,
    }
  ),
  withRequiresCompatibilitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"requires_compatibilities" expected to be of type "set"';
    {
      requires_compatibilities+: converted,
    }
  ),
  withSkipDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
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
  withTaskRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_role_arn" expected to be of type "string"';
    {
      task_role_arn: converted,
    }
  ),
  withTrackLatest(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"track_latest" expected to be of type "bool"';
    {
      track_latest: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  ephemeral_storage:: {
    local block = self,
    new(sizeInGib):: (
      {}
      + block.withSizeInGib(sizeInGib)
    ),
    withSizeInGib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size_in_gib" expected to be of type "number"';
      {
        size_in_gib: converted,
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
  proxy_configuration:: {
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
    withProperties(value):: (
      local converted = value;
      assert std.isObject(converted) : '"properties" expected to be of type "map"';
      {
        properties: converted,
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
  runtime_platform:: {
    local block = self,
    new():: (
      {}
    ),
    withCpuArchitecture(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu_architecture" expected to be of type "string"';
      {
        cpu_architecture: converted,
      }
    ),
    withOperatingSystemFamily(value):: (
      local converted = value;
      assert std.isString(converted) : '"operating_system_family" expected to be of type "string"';
      {
        operating_system_family: converted,
      }
    ),
  },
  volume:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withConfigureAtLaunch(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"configure_at_launch" expected to be of type "bool"';
      {
        configure_at_launch: converted,
      }
    ),
    withHostPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_path" expected to be of type "string"';
      {
        host_path: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    docker_volume_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withAutoprovision(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"autoprovision" expected to be of type "bool"';
        {
          autoprovision: converted,
        }
      ),
      withDriver(value):: (
        local converted = value;
        assert std.isString(converted) : '"driver" expected to be of type "string"';
        {
          driver: converted,
        }
      ),
      withDriverOpts(value):: (
        local converted = value;
        assert std.isObject(converted) : '"driver_opts" expected to be of type "map"';
        {
          driver_opts: converted,
        }
      ),
      withLabels(value):: (
        local converted = value;
        assert std.isObject(converted) : '"labels" expected to be of type "map"';
        {
          labels: converted,
        }
      ),
      withScope(value):: (
        local converted = value;
        assert std.isString(converted) : '"scope" expected to be of type "string"';
        {
          scope: converted,
        }
      ),
    },
    efs_volume_configuration:: {
      local block = self,
      new(fileSystemId):: (
        {}
        + block.withFileSystemId(fileSystemId)
      ),
      withFileSystemId(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
        {
          file_system_id: converted,
        }
      ),
      withRootDirectory(value):: (
        local converted = value;
        assert std.isString(converted) : '"root_directory" expected to be of type "string"';
        {
          root_directory: converted,
        }
      ),
      withTransitEncryption(value):: (
        local converted = value;
        assert std.isString(converted) : '"transit_encryption" expected to be of type "string"';
        {
          transit_encryption: converted,
        }
      ),
      withTransitEncryptionPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"transit_encryption_port" expected to be of type "number"';
        {
          transit_encryption_port: converted,
        }
      ),
      authorization_config:: {
        local block = self,
        new():: (
          {}
        ),
        withAccessPointId(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_point_id" expected to be of type "string"';
          {
            access_point_id: converted,
          }
        ),
        withIam(value):: (
          local converted = value;
          assert std.isString(converted) : '"iam" expected to be of type "string"';
          {
            iam: converted,
          }
        ),
      },
      withAuthorizationConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authorization_config: value,
        }
      ),
      withAuthorizationConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authorization_config+: converted,
        }
      ),
    },
    fsx_windows_file_server_volume_configuration:: {
      local block = self,
      new(fileSystemId, rootDirectory):: (
        {}
        + block.withFileSystemId(fileSystemId)
        + block.withRootDirectory(rootDirectory)
      ),
      withFileSystemId(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
        {
          file_system_id: converted,
        }
      ),
      withRootDirectory(value):: (
        local converted = value;
        assert std.isString(converted) : '"root_directory" expected to be of type "string"';
        {
          root_directory: converted,
        }
      ),
      authorization_config:: {
        local block = self,
        new(credentialsParameter, domain):: (
          {}
          + block.withCredentialsParameter(credentialsParameter)
          + block.withDomain(domain)
        ),
        withCredentialsParameter(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials_parameter" expected to be of type "string"';
          {
            credentials_parameter: converted,
          }
        ),
        withDomain(value):: (
          local converted = value;
          assert std.isString(converted) : '"domain" expected to be of type "string"';
          {
            domain: converted,
          }
        ),
      },
      withAuthorizationConfig(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authorization_config: value,
        }
      ),
      withAuthorizationConfigMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authorization_config+: converted,
        }
      ),
    },
    withDockerVolumeConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_volume_configuration: value,
      }
    ),
    withEfsVolumeConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        efs_volume_configuration: value,
      }
    ),
    withFsxWindowsFileServerVolumeConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fsx_windows_file_server_volume_configuration: value,
      }
    ),
    withDockerVolumeConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_volume_configuration+: converted,
      }
    ),
    withEfsVolumeConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        efs_volume_configuration+: converted,
      }
    ),
    withFsxWindowsFileServerVolumeConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fsx_windows_file_server_volume_configuration+: converted,
      }
    ),
  },
  withEphemeralStorage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_storage: value,
    }
  ),
  withPlacementConstraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints: value,
    }
  ),
  withProxyConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      proxy_configuration: value,
    }
  ),
  withRuntimePlatform(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime_platform: value,
    }
  ),
  withVolume(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      volume: value,
    }
  ),
  withEphemeralStorageMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_storage+: converted,
    }
  ),
  withPlacementConstraintsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints+: converted,
    }
  ),
  withProxyConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      proxy_configuration+: converted,
    }
  ),
  withRuntimePlatformMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime_platform+: converted,
    }
  ),
  withVolumeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      volume+: converted,
    }
  ),
}
