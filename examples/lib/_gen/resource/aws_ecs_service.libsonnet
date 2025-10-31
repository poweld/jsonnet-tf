{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_service",
          type:: "resource",
          attributes:: ["arn", "availability_zone_rebalancing", "cluster", "deployment_maximum_percent", "deployment_minimum_healthy_percent", "desired_count", "enable_ecs_managed_tags", "enable_execute_command", "force_delete", "force_new_deployment", "health_check_grace_period_seconds", "iam_role", "id", "launch_type", "name", "platform_version", "propagate_tags", "region", "scheduling_strategy", "sigint_rollback", "tags", "tags_all", "task_definition", "triggers", "wait_for_steady_state"],
        },
      },
    }
    + block.withName(name)
  ),
  withAvailabilityZoneRebalancing(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_rebalancing" expected to be of type "string"';
    {
      availability_zone_rebalancing: converted,
    }
  ),
  withCluster(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster" expected to be of type "string"';
    {
      cluster: converted,
    }
  ),
  withDeploymentMaximumPercent(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deployment_maximum_percent" expected to be of type "number"';
    {
      deployment_maximum_percent: converted,
    }
  ),
  withDeploymentMinimumHealthyPercent(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deployment_minimum_healthy_percent" expected to be of type "number"';
    {
      deployment_minimum_healthy_percent: converted,
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
  withForceDelete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
    }
  ),
  withForceNewDeployment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_new_deployment" expected to be of type "bool"';
    {
      force_new_deployment: converted,
    }
  ),
  withHealthCheckGracePeriodSeconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_grace_period_seconds" expected to be of type "number"';
    {
      health_check_grace_period_seconds: converted,
    }
  ),
  withIamRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role" expected to be of type "string"';
    {
      iam_role: converted,
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSchedulingStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"scheduling_strategy" expected to be of type "string"';
    {
      scheduling_strategy: converted,
    }
  ),
  withSigintRollback(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"sigint_rollback" expected to be of type "bool"';
    {
      sigint_rollback: converted,
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
  withTriggers(value):: (
    local converted = value;
    assert std.isObject(converted) : '"triggers" expected to be of type "map"';
    {
      triggers: converted,
    }
  ),
  withWaitForSteadyState(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_steady_state" expected to be of type "bool"';
    {
      wait_for_steady_state: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  alarms:: {
    local block = self,
    new(alarmNames, enable, rollback):: (
      {}
      + block.withAlarmNames(alarmNames)
      + block.withEnable(enable)
      + block.withRollback(rollback)
    ),
    withAlarmNames(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_names" expected to be of type "set"';
      {
        alarm_names: converted,
      }
    ),
    withAlarmNamesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_names" expected to be of type "set"';
      {
        alarm_names+: converted,
      }
    ),
    withEnable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
      {
        enable: converted,
      }
    ),
    withRollback(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"rollback" expected to be of type "bool"';
      {
        rollback: converted,
      }
    ),
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
  deployment_circuit_breaker:: {
    local block = self,
    new(enable, rollback):: (
      {}
      + block.withEnable(enable)
      + block.withRollback(rollback)
    ),
    withEnable(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
      {
        enable: converted,
      }
    ),
    withRollback(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"rollback" expected to be of type "bool"';
      {
        rollback: converted,
      }
    ),
  },
  deployment_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withBakeTimeInMinutes(value):: (
      local converted = value;
      assert std.isString(converted) : '"bake_time_in_minutes" expected to be of type "string"';
      {
        bake_time_in_minutes: converted,
      }
    ),
    withStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"strategy" expected to be of type "string"';
      {
        strategy: converted,
      }
    ),
    lifecycle_hook:: {
      local block = self,
      new(hookTargetArn, lifecycleStages, roleArn):: (
        {}
        + block.withHookTargetArn(hookTargetArn)
        + block.withLifecycleStages(lifecycleStages)
        + block.withRoleArn(roleArn)
      ),
      withHookTargetArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"hook_target_arn" expected to be of type "string"';
        {
          hook_target_arn: converted,
        }
      ),
      withLifecycleStages(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"lifecycle_stages" expected to be of type "list"';
        {
          lifecycle_stages: converted,
        }
      ),
      withLifecycleStagesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"lifecycle_stages" expected to be of type "list"';
        {
          lifecycle_stages+: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    withLifecycleHook(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle_hook: value,
      }
    ),
    withLifecycleHookMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lifecycle_hook+: converted,
      }
    ),
  },
  deployment_controller:: {
    local block = self,
    new():: (
      {}
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  load_balancer:: {
    local block = self,
    new(containerName, containerPort):: (
      {}
      + block.withContainerName(containerName)
      + block.withContainerPort(containerPort)
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
    withElbName(value):: (
      local converted = value;
      assert std.isString(converted) : '"elb_name" expected to be of type "string"';
      {
        elb_name: converted,
      }
    ),
    withTargetGroupArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_group_arn" expected to be of type "string"';
      {
        target_group_arn: converted,
      }
    ),
    advanced_configuration:: {
      local block = self,
      new(alternateTargetGroupArn, productionListenerRule, roleArn):: (
        {}
        + block.withAlternateTargetGroupArn(alternateTargetGroupArn)
        + block.withProductionListenerRule(productionListenerRule)
        + block.withRoleArn(roleArn)
      ),
      withAlternateTargetGroupArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"alternate_target_group_arn" expected to be of type "string"';
        {
          alternate_target_group_arn: converted,
        }
      ),
      withProductionListenerRule(value):: (
        local converted = value;
        assert std.isString(converted) : '"production_listener_rule" expected to be of type "string"';
        {
          production_listener_rule: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withTestListenerRule(value):: (
        local converted = value;
        assert std.isString(converted) : '"test_listener_rule" expected to be of type "string"';
        {
          test_listener_rule: converted,
        }
      ),
    },
    withAdvancedConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_configuration: value,
      }
    ),
    withAdvancedConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        advanced_configuration+: converted,
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
  ordered_placement_strategy:: {
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
  service_connect_configuration:: {
    local block = self,
    new(enabled):: (
      {}
      + block.withEnabled(enabled)
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    log_configuration:: {
      local block = self,
      new(logDriver):: (
        {}
        + block.withLogDriver(logDriver)
      ),
      withLogDriver(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_driver" expected to be of type "string"';
        {
          log_driver: converted,
        }
      ),
      withOptions(value):: (
        local converted = value;
        assert std.isObject(converted) : '"options" expected to be of type "map"';
        {
          options: converted,
        }
      ),
      secret_option:: {
        local block = self,
        new(name, valueFrom):: (
          {}
          + block.withName(name)
          + block.withValueFrom(valueFrom)
        ),
        withName(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        withValueFrom(value):: (
          local converted = value;
          assert std.isString(converted) : '"value_from" expected to be of type "string"';
          {
            value_from: converted,
          }
        ),
      },
      withSecretOption(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          secret_option: value,
        }
      ),
      withSecretOptionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          secret_option+: converted,
        }
      ),
    },
    service:: {
      local block = self,
      new(portName):: (
        {}
        + block.withPortName(portName)
      ),
      withDiscoveryName(value):: (
        local converted = value;
        assert std.isString(converted) : '"discovery_name" expected to be of type "string"';
        {
          discovery_name: converted,
        }
      ),
      withIngressPortOverride(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"ingress_port_override" expected to be of type "number"';
        {
          ingress_port_override: converted,
        }
      ),
      withPortName(value):: (
        local converted = value;
        assert std.isString(converted) : '"port_name" expected to be of type "string"';
        {
          port_name: converted,
        }
      ),
      client_alias:: {
        local block = self,
        new(port):: (
          {}
          + block.withPort(port)
        ),
        withDnsName(value):: (
          local converted = value;
          assert std.isString(converted) : '"dns_name" expected to be of type "string"';
          {
            dns_name: converted,
          }
        ),
        withPort(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        test_traffic_rules:: {
          local block = self,
          new():: (
            {}
          ),
          header:: {
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
            value:: {
              local block = self,
              new(exact):: (
                {}
                + block.withExact(exact)
              ),
              withExact(value):: (
                local converted = value;
                assert std.isString(converted) : '"exact" expected to be of type "string"';
                {
                  exact: converted,
                }
              ),
            },
            withValue(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value: value,
              }
            ),
            withValueMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                value+: converted,
              }
            ),
          },
          withHeader(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              header: value,
            }
          ),
          withHeaderMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              header+: converted,
            }
          ),
        },
        withTestTrafficRules(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            test_traffic_rules: value,
          }
        ),
        withTestTrafficRulesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            test_traffic_rules+: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        withIdleTimeoutSeconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"idle_timeout_seconds" expected to be of type "number"';
          {
            idle_timeout_seconds: converted,
          }
        ),
        withPerRequestTimeoutSeconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"per_request_timeout_seconds" expected to be of type "number"';
          {
            per_request_timeout_seconds: converted,
          }
        ),
      },
      tls:: {
        local block = self,
        new():: (
          {}
        ),
        withKmsKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"kms_key" expected to be of type "string"';
          {
            kms_key: converted,
          }
        ),
        withRoleArn(value):: (
          local converted = value;
          assert std.isString(converted) : '"role_arn" expected to be of type "string"';
          {
            role_arn: converted,
          }
        ),
        issuer_cert_authority:: {
          local block = self,
          new(awsPcaAuthorityArn):: (
            {}
            + block.withAwsPcaAuthorityArn(awsPcaAuthorityArn)
          ),
          withAwsPcaAuthorityArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"aws_pca_authority_arn" expected to be of type "string"';
            {
              aws_pca_authority_arn: converted,
            }
          ),
        },
        withIssuerCertAuthority(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            issuer_cert_authority: value,
          }
        ),
        withIssuerCertAuthorityMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            issuer_cert_authority+: converted,
          }
        ),
      },
      withClientAlias(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_alias: value,
        }
      ),
      withTimeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
        }
      ),
      withTls(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tls: value,
        }
      ),
      withClientAliasMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_alias+: converted,
        }
      ),
      withTimeoutMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
      withTlsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tls+: converted,
        }
      ),
    },
    withLogConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_configuration: value,
      }
    ),
    withService(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service: value,
      }
    ),
    withLogConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_configuration+: converted,
      }
    ),
    withServiceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service+: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  volume_configuration:: {
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
    managed_ebs_volume:: {
      local block = self,
      new(roleArn):: (
        {}
        + block.withRoleArn(roleArn)
      ),
      withEncrypted(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
        {
          encrypted: converted,
        }
      ),
      withFileSystemType(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_type" expected to be of type "string"';
        {
          file_system_type: converted,
        }
      ),
      withIops(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"iops" expected to be of type "number"';
        {
          iops: converted,
        }
      ),
      withKmsKeyId(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      withSizeInGb(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"size_in_gb" expected to be of type "number"';
        {
          size_in_gb: converted,
        }
      ),
      withSnapshotId(value):: (
        local converted = value;
        assert std.isString(converted) : '"snapshot_id" expected to be of type "string"';
        {
          snapshot_id: converted,
        }
      ),
      withThroughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
        }
      ),
      withVolumeInitializationRate(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_initialization_rate" expected to be of type "number"';
        {
          volume_initialization_rate: converted,
        }
      ),
      withVolumeType(value):: (
        local converted = value;
        assert std.isString(converted) : '"volume_type" expected to be of type "string"';
        {
          volume_type: converted,
        }
      ),
      tag_specifications:: {
        local block = self,
        new(resourceType):: (
          {}
          + block.withResourceType(resourceType)
        ),
        withPropagateTags(value):: (
          local converted = value;
          assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
          {
            propagate_tags: converted,
          }
        ),
        withResourceType(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_type" expected to be of type "string"';
          {
            resource_type: converted,
          }
        ),
        withTags(value):: (
          local converted = value;
          assert std.isObject(converted) : '"tags" expected to be of type "map"';
          {
            tags: converted,
          }
        ),
      },
      withTagSpecifications(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag_specifications: value,
        }
      ),
      withTagSpecificationsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tag_specifications+: converted,
        }
      ),
    },
    withManagedEbsVolume(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_ebs_volume: value,
      }
    ),
    withManagedEbsVolumeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_ebs_volume+: converted,
      }
    ),
  },
  vpc_lattice_configurations:: {
    local block = self,
    new(portName, roleArn, targetGroupArn):: (
      {}
      + block.withPortName(portName)
      + block.withRoleArn(roleArn)
      + block.withTargetGroupArn(targetGroupArn)
    ),
    withPortName(value):: (
      local converted = value;
      assert std.isString(converted) : '"port_name" expected to be of type "string"';
      {
        port_name: converted,
      }
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
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
  withAlarms(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alarms: value,
    }
  ),
  withCapacityProviderStrategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy: value,
    }
  ),
  withDeploymentCircuitBreaker(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_circuit_breaker: value,
    }
  ),
  withDeploymentConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_configuration: value,
    }
  ),
  withDeploymentController(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_controller: value,
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
  withOrderedPlacementStrategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ordered_placement_strategy: value,
    }
  ),
  withPlacementConstraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints: value,
    }
  ),
  withServiceConnectConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_connect_configuration: value,
    }
  ),
  withServiceRegistries(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_registries: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVolumeConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      volume_configuration: value,
    }
  ),
  withVpcLatticeConfigurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_lattice_configurations: value,
    }
  ),
  withAlarmsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alarms+: converted,
    }
  ),
  withCapacityProviderStrategyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy+: converted,
    }
  ),
  withDeploymentCircuitBreakerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_circuit_breaker+: converted,
    }
  ),
  withDeploymentConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_configuration+: converted,
    }
  ),
  withDeploymentControllerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_controller+: converted,
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
  withOrderedPlacementStrategyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ordered_placement_strategy+: converted,
    }
  ),
  withPlacementConstraintsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints+: converted,
    }
  ),
  withServiceConnectConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_connect_configuration+: converted,
    }
  ),
  withServiceRegistriesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_registries+: converted,
    }
  ),
  withVolumeConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      volume_configuration+: converted,
    }
  ),
  withVpcLatticeConfigurationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_lattice_configurations+: converted,
    }
  ),
}
