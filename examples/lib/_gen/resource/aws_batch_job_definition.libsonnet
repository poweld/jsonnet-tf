{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_batch_job_definition",
          type:: "resource",
          attributes:: ["arn", "arn_prefix", "container_properties", "deregister_on_new_revision", "ecs_properties", "id", "name", "node_properties", "parameters", "platform_capabilities", "propagate_tags", "region", "revision", "scheduling_priority", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  withContainerProperties(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_properties" expected to be of type "string"';
    {
      container_properties: converted,
    }
  ),
  withDeregisterOnNewRevision(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deregister_on_new_revision" expected to be of type "bool"';
    {
      deregister_on_new_revision: converted,
    }
  ),
  withEcsProperties(value):: (
    local converted = value;
    assert std.isString(converted) : '"ecs_properties" expected to be of type "string"';
    {
      ecs_properties: converted,
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
  withNodeProperties(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_properties" expected to be of type "string"';
    {
      node_properties: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  withPlatformCapabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"platform_capabilities" expected to be of type "set"';
    {
      platform_capabilities: converted,
    }
  ),
  withPlatformCapabilitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"platform_capabilities" expected to be of type "set"';
    {
      platform_capabilities+: converted,
    }
  ),
  withPropagateTags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"propagate_tags" expected to be of type "bool"';
    {
      propagate_tags: converted,
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
  withSchedulingPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scheduling_priority" expected to be of type "number"';
    {
      scheduling_priority: converted,
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
  eks_properties:: {
    local block = self,
    new():: (
      {}
    ),
    pod_properties:: {
      local block = self,
      new():: (
        {}
      ),
      withDnsPolicy(value):: (
        local converted = value;
        assert std.isString(converted) : '"dns_policy" expected to be of type "string"';
        {
          dns_policy: converted,
        }
      ),
      withHostNetwork(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"host_network" expected to be of type "bool"';
        {
          host_network: converted,
        }
      ),
      withServiceAccountName(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_account_name" expected to be of type "string"';
        {
          service_account_name: converted,
        }
      ),
      withShareProcessNamespace(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"share_process_namespace" expected to be of type "bool"';
        {
          share_process_namespace: converted,
        }
      ),
      containers:: {
        local block = self,
        new(image):: (
          {}
          + block.withImage(image)
        ),
        withArgs(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"args" expected to be of type "list"';
          {
            args: converted,
          }
        ),
        withArgsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"args" expected to be of type "list"';
          {
            args+: converted,
          }
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
        withImage(value):: (
          local converted = value;
          assert std.isString(converted) : '"image" expected to be of type "string"';
          {
            image: converted,
          }
        ),
        withImagePullPolicy(value):: (
          local converted = value;
          assert std.isString(converted) : '"image_pull_policy" expected to be of type "string"';
          {
            image_pull_policy: converted,
          }
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        env:: {
          local block = self,
          new(name, value):: (
            {}
            + block.withName(name)
            + block.withValue(value)
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
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
        resources:: {
          local block = self,
          new():: (
            {}
          ),
          withLimits(value):: (
            local converted = value;
            assert std.isObject(converted) : '"limits" expected to be of type "map"';
            {
              limits: converted,
            }
          ),
          withRequests(value):: (
            local converted = value;
            assert std.isObject(converted) : '"requests" expected to be of type "map"';
            {
              requests: converted,
            }
          ),
        },
        security_context:: {
          local block = self,
          new():: (
            {}
          ),
          withPrivileged(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"privileged" expected to be of type "bool"';
            {
              privileged: converted,
            }
          ),
          withReadOnlyRootFileSystem(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"read_only_root_file_system" expected to be of type "bool"';
            {
              read_only_root_file_system: converted,
            }
          ),
          withRunAsGroup(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"run_as_group" expected to be of type "number"';
            {
              run_as_group: converted,
            }
          ),
          withRunAsNonRoot(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"run_as_non_root" expected to be of type "bool"';
            {
              run_as_non_root: converted,
            }
          ),
          withRunAsUser(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"run_as_user" expected to be of type "number"';
            {
              run_as_user: converted,
            }
          ),
        },
        volume_mounts:: {
          local block = self,
          new(mountPath, name):: (
            {}
            + block.withMountPath(mountPath)
            + block.withName(name)
          ),
          withMountPath(value):: (
            local converted = value;
            assert std.isString(converted) : '"mount_path" expected to be of type "string"';
            {
              mount_path: converted,
            }
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          withReadOnly(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
            {
              read_only: converted,
            }
          ),
        },
        withEnv(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            env: value,
          }
        ),
        withResources(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resources: value,
          }
        ),
        withSecurityContext(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            security_context: value,
          }
        ),
        withVolumeMounts(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            volume_mounts: value,
          }
        ),
        withEnvMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            env+: converted,
          }
        ),
        withResourcesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resources+: converted,
          }
        ),
        withSecurityContextMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            security_context+: converted,
          }
        ),
        withVolumeMountsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            volume_mounts+: converted,
          }
        ),
      },
      image_pull_secret:: {
        local block = self,
        new(name):: (
          {}
          + block.withName(name)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
      },
      init_containers:: {
        local block = self,
        new(image):: (
          {}
          + block.withImage(image)
        ),
        withArgs(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"args" expected to be of type "list"';
          {
            args: converted,
          }
        ),
        withArgsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"args" expected to be of type "list"';
          {
            args+: converted,
          }
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
        withImage(value):: (
          local converted = value;
          assert std.isString(converted) : '"image" expected to be of type "string"';
          {
            image: converted,
          }
        ),
        withImagePullPolicy(value):: (
          local converted = value;
          assert std.isString(converted) : '"image_pull_policy" expected to be of type "string"';
          {
            image_pull_policy: converted,
          }
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        env:: {
          local block = self,
          new(name, value):: (
            {}
            + block.withName(name)
            + block.withValue(value)
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
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
        resources:: {
          local block = self,
          new():: (
            {}
          ),
          withLimits(value):: (
            local converted = value;
            assert std.isObject(converted) : '"limits" expected to be of type "map"';
            {
              limits: converted,
            }
          ),
          withRequests(value):: (
            local converted = value;
            assert std.isObject(converted) : '"requests" expected to be of type "map"';
            {
              requests: converted,
            }
          ),
        },
        security_context:: {
          local block = self,
          new():: (
            {}
          ),
          withPrivileged(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"privileged" expected to be of type "bool"';
            {
              privileged: converted,
            }
          ),
          withReadOnlyRootFileSystem(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"read_only_root_file_system" expected to be of type "bool"';
            {
              read_only_root_file_system: converted,
            }
          ),
          withRunAsGroup(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"run_as_group" expected to be of type "number"';
            {
              run_as_group: converted,
            }
          ),
          withRunAsNonRoot(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"run_as_non_root" expected to be of type "bool"';
            {
              run_as_non_root: converted,
            }
          ),
          withRunAsUser(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"run_as_user" expected to be of type "number"';
            {
              run_as_user: converted,
            }
          ),
        },
        volume_mounts:: {
          local block = self,
          new(mountPath, name):: (
            {}
            + block.withMountPath(mountPath)
            + block.withName(name)
          ),
          withMountPath(value):: (
            local converted = value;
            assert std.isString(converted) : '"mount_path" expected to be of type "string"';
            {
              mount_path: converted,
            }
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          withReadOnly(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
            {
              read_only: converted,
            }
          ),
        },
        withEnv(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            env: value,
          }
        ),
        withResources(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resources: value,
          }
        ),
        withSecurityContext(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            security_context: value,
          }
        ),
        withVolumeMounts(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            volume_mounts: value,
          }
        ),
        withEnvMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            env+: converted,
          }
        ),
        withResourcesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resources+: converted,
          }
        ),
        withSecurityContextMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            security_context+: converted,
          }
        ),
        withVolumeMountsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            volume_mounts+: converted,
          }
        ),
      },
      metadata:: {
        local block = self,
        new():: (
          {}
        ),
        withLabels(value):: (
          local converted = value;
          assert std.isObject(converted) : '"labels" expected to be of type "map"';
          {
            labels: converted,
          }
        ),
      },
      volumes:: {
        local block = self,
        new():: (
          {}
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        empty_dir:: {
          local block = self,
          new(sizeLimit):: (
            {}
            + block.withSizeLimit(sizeLimit)
          ),
          withMedium(value):: (
            local converted = value;
            assert std.isString(converted) : '"medium" expected to be of type "string"';
            {
              medium: converted,
            }
          ),
          withSizeLimit(value):: (
            local converted = value;
            assert std.isString(converted) : '"size_limit" expected to be of type "string"';
            {
              size_limit: converted,
            }
          ),
        },
        host_path:: {
          local block = self,
          new(path):: (
            {}
            + block.withPath(path)
          ),
          withPath(value):: (
            local converted = value;
            assert std.isString(converted) : '"path" expected to be of type "string"';
            {
              path: converted,
            }
          ),
        },
        secret:: {
          local block = self,
          new(secretName):: (
            {}
            + block.withSecretName(secretName)
          ),
          withOptional(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"optional" expected to be of type "bool"';
            {
              optional: converted,
            }
          ),
          withSecretName(value):: (
            local converted = value;
            assert std.isString(converted) : '"secret_name" expected to be of type "string"';
            {
              secret_name: converted,
            }
          ),
        },
        withEmptyDir(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            empty_dir: value,
          }
        ),
        withHostPath(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            host_path: value,
          }
        ),
        withSecret(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            secret: value,
          }
        ),
        withEmptyDirMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            empty_dir+: converted,
          }
        ),
        withHostPathMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            host_path+: converted,
          }
        ),
        withSecretMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            secret+: converted,
          }
        ),
      },
      withContainers(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          containers: value,
        }
      ),
      withImagePullSecret(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          image_pull_secret: value,
        }
      ),
      withInitContainers(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          init_containers: value,
        }
      ),
      withMetadata(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metadata: value,
        }
      ),
      withVolumes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          volumes: value,
        }
      ),
      withContainersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          containers+: converted,
        }
      ),
      withImagePullSecretMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          image_pull_secret+: converted,
        }
      ),
      withInitContainersMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          init_containers+: converted,
        }
      ),
      withMetadataMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metadata+: converted,
        }
      ),
      withVolumesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          volumes+: converted,
        }
      ),
    },
    withPodProperties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pod_properties: value,
      }
    ),
    withPodPropertiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pod_properties+: converted,
      }
    ),
  },
  retry_strategy:: {
    local block = self,
    new():: (
      {}
    ),
    withAttempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"attempts" expected to be of type "number"';
      {
        attempts: converted,
      }
    ),
    evaluate_on_exit:: {
      local block = self,
      new(action):: (
        {}
        + block.withAction(action)
      ),
      withAction(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
      withOnExitCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_exit_code" expected to be of type "string"';
        {
          on_exit_code: converted,
        }
      ),
      withOnReason(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_reason" expected to be of type "string"';
        {
          on_reason: converted,
        }
      ),
      withOnStatusReason(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_status_reason" expected to be of type "string"';
        {
          on_status_reason: converted,
        }
      ),
    },
    withEvaluateOnExit(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        evaluate_on_exit: value,
      }
    ),
    withEvaluateOnExitMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        evaluate_on_exit+: converted,
      }
    ),
  },
  timeout:: {
    local block = self,
    new():: (
      {}
    ),
    withAttemptDurationSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"attempt_duration_seconds" expected to be of type "number"';
      {
        attempt_duration_seconds: converted,
      }
    ),
  },
  withEksProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      eks_properties: value,
    }
  ),
  withRetryStrategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retry_strategy: value,
    }
  ),
  withTimeout(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      timeout: value,
    }
  ),
  withEksPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      eks_properties+: converted,
    }
  ),
  withRetryStrategyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retry_strategy+: converted,
    }
  ),
  withTimeoutMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      timeout+: converted,
    }
  ),
}
