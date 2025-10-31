{
  local block = self,
  new(terraformName, maxSize, minSize):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_autoscaling_group",
          type:: "resource",
          attributes:: ["arn", "availability_zones", "capacity_rebalance", "context", "default_cooldown", "default_instance_warmup", "desired_capacity", "desired_capacity_type", "enabled_metrics", "force_delete", "force_delete_warm_pool", "health_check_grace_period", "health_check_type", "id", "ignore_failed_scaling_activities", "launch_configuration", "load_balancers", "max_instance_lifetime", "max_size", "metrics_granularity", "min_elb_capacity", "min_size", "name", "name_prefix", "placement_group", "predicted_capacity", "protect_from_scale_in", "region", "service_linked_role_arn", "suspended_processes", "target_group_arns", "termination_policies", "vpc_zone_identifier", "wait_for_capacity_timeout", "wait_for_elb_capacity", "warm_pool_size"],
        },
      },
    }
    + block.withMaxSize(maxSize)
    + block.withMinSize(minSize)
  ),
  withAvailabilityZones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  withAvailabilityZonesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  withCapacityRebalance(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"capacity_rebalance" expected to be of type "bool"';
    {
      capacity_rebalance: converted,
    }
  ),
  withContext(value):: (
    local converted = value;
    assert std.isString(converted) : '"context" expected to be of type "string"';
    {
      context: converted,
    }
  ),
  withDefaultCooldown(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_cooldown" expected to be of type "number"';
    {
      default_cooldown: converted,
    }
  ),
  withDefaultInstanceWarmup(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_instance_warmup" expected to be of type "number"';
    {
      default_instance_warmup: converted,
    }
  ),
  withDesiredCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_capacity" expected to be of type "number"';
    {
      desired_capacity: converted,
    }
  ),
  withDesiredCapacityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"desired_capacity_type" expected to be of type "string"';
    {
      desired_capacity_type: converted,
    }
  ),
  withEnabledMetrics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_metrics" expected to be of type "set"';
    {
      enabled_metrics: converted,
    }
  ),
  withEnabledMetricsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_metrics" expected to be of type "set"';
    {
      enabled_metrics+: converted,
    }
  ),
  withForceDelete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
    }
  ),
  withForceDeleteWarmPool(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete_warm_pool" expected to be of type "bool"';
    {
      force_delete_warm_pool: converted,
    }
  ),
  withHealthCheckGracePeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_grace_period" expected to be of type "number"';
    {
      health_check_grace_period: converted,
    }
  ),
  withHealthCheckType(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_type" expected to be of type "string"';
    {
      health_check_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIgnoreFailedScalingActivities(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_failed_scaling_activities" expected to be of type "bool"';
    {
      ignore_failed_scaling_activities: converted,
    }
  ),
  withLaunchConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_configuration" expected to be of type "string"';
    {
      launch_configuration: converted,
    }
  ),
  withLoadBalancers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"load_balancers" expected to be of type "set"';
    {
      load_balancers: converted,
    }
  ),
  withLoadBalancersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"load_balancers" expected to be of type "set"';
    {
      load_balancers+: converted,
    }
  ),
  withMaxInstanceLifetime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_instance_lifetime" expected to be of type "number"';
    {
      max_instance_lifetime: converted,
    }
  ),
  withMaxSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  withMetricsGranularity(value):: (
    local converted = value;
    assert std.isString(converted) : '"metrics_granularity" expected to be of type "string"';
    {
      metrics_granularity: converted,
    }
  ),
  withMinElbCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_elb_capacity" expected to be of type "number"';
    {
      min_elb_capacity: converted,
    }
  ),
  withMinSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPlacementGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_group" expected to be of type "string"';
    {
      placement_group: converted,
    }
  ),
  withProtectFromScaleIn(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"protect_from_scale_in" expected to be of type "bool"';
    {
      protect_from_scale_in: converted,
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
  withServiceLinkedRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_linked_role_arn" expected to be of type "string"';
    {
      service_linked_role_arn: converted,
    }
  ),
  withSuspendedProcesses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"suspended_processes" expected to be of type "set"';
    {
      suspended_processes: converted,
    }
  ),
  withSuspendedProcessesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"suspended_processes" expected to be of type "set"';
    {
      suspended_processes+: converted,
    }
  ),
  withTargetGroupArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_group_arns" expected to be of type "set"';
    {
      target_group_arns: converted,
    }
  ),
  withTargetGroupArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_group_arns" expected to be of type "set"';
    {
      target_group_arns+: converted,
    }
  ),
  withTerminationPolicies(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"termination_policies" expected to be of type "list"';
    {
      termination_policies: converted,
    }
  ),
  withTerminationPoliciesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"termination_policies" expected to be of type "list"';
    {
      termination_policies+: converted,
    }
  ),
  withVpcZoneIdentifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_zone_identifier" expected to be of type "set"';
    {
      vpc_zone_identifier: converted,
    }
  ),
  withVpcZoneIdentifierMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_zone_identifier" expected to be of type "set"';
    {
      vpc_zone_identifier+: converted,
    }
  ),
  withWaitForCapacityTimeout(value):: (
    local converted = value;
    assert std.isString(converted) : '"wait_for_capacity_timeout" expected to be of type "string"';
    {
      wait_for_capacity_timeout: converted,
    }
  ),
  withWaitForElbCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"wait_for_elb_capacity" expected to be of type "number"';
    {
      wait_for_elb_capacity: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  availability_zone_distribution:: {
    local block = self,
    new():: (
      {}
    ),
    withCapacityDistributionStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_distribution_strategy" expected to be of type "string"';
      {
        capacity_distribution_strategy: converted,
      }
    ),
  },
  capacity_reservation_specification:: {
    local block = self,
    new():: (
      {}
    ),
    withCapacityReservationPreference(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_reservation_preference" expected to be of type "string"';
      {
        capacity_reservation_preference: converted,
      }
    ),
    capacity_reservation_target:: {
      local block = self,
      new():: (
        {}
      ),
      withCapacityReservationIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"capacity_reservation_ids" expected to be of type "list"';
        {
          capacity_reservation_ids: converted,
        }
      ),
      withCapacityReservationIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"capacity_reservation_ids" expected to be of type "list"';
        {
          capacity_reservation_ids+: converted,
        }
      ),
      withCapacityReservationResourceGroupArns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"capacity_reservation_resource_group_arns" expected to be of type "list"';
        {
          capacity_reservation_resource_group_arns: converted,
        }
      ),
      withCapacityReservationResourceGroupArnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"capacity_reservation_resource_group_arns" expected to be of type "list"';
        {
          capacity_reservation_resource_group_arns+: converted,
        }
      ),
    },
    withCapacityReservationTarget(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_target: value,
      }
    ),
    withCapacityReservationTargetMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_target+: converted,
      }
    ),
  },
  initial_lifecycle_hook:: {
    local block = self,
    new(lifecycleTransition, name):: (
      {}
      + block.withLifecycleTransition(lifecycleTransition)
      + block.withName(name)
    ),
    withDefaultResult(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_result" expected to be of type "string"';
      {
        default_result: converted,
      }
    ),
    withHeartbeatTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"heartbeat_timeout" expected to be of type "number"';
      {
        heartbeat_timeout: converted,
      }
    ),
    withLifecycleTransition(value):: (
      local converted = value;
      assert std.isString(converted) : '"lifecycle_transition" expected to be of type "string"';
      {
        lifecycle_transition: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withNotificationMetadata(value):: (
      local converted = value;
      assert std.isString(converted) : '"notification_metadata" expected to be of type "string"';
      {
        notification_metadata: converted,
      }
    ),
    withNotificationTargetArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"notification_target_arn" expected to be of type "string"';
      {
        notification_target_arn: converted,
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
  instance_maintenance_policy:: {
    local block = self,
    new(maxHealthyPercentage, minHealthyPercentage):: (
      {}
      + block.withMaxHealthyPercentage(maxHealthyPercentage)
      + block.withMinHealthyPercentage(minHealthyPercentage)
    ),
    withMaxHealthyPercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_healthy_percentage" expected to be of type "number"';
      {
        max_healthy_percentage: converted,
      }
    ),
    withMinHealthyPercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_healthy_percentage" expected to be of type "number"';
      {
        min_healthy_percentage: converted,
      }
    ),
  },
  instance_refresh:: {
    local block = self,
    new(strategy):: (
      {}
      + block.withStrategy(strategy)
    ),
    withStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"strategy" expected to be of type "string"';
      {
        strategy: converted,
      }
    ),
    withTriggers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"triggers" expected to be of type "set"';
      {
        triggers: converted,
      }
    ),
    withTriggersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"triggers" expected to be of type "set"';
      {
        triggers+: converted,
      }
    ),
    preferences:: {
      local block = self,
      new():: (
        {}
      ),
      withAutoRollback(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"auto_rollback" expected to be of type "bool"';
        {
          auto_rollback: converted,
        }
      ),
      withCheckpointDelay(value):: (
        local converted = value;
        assert std.isString(converted) : '"checkpoint_delay" expected to be of type "string"';
        {
          checkpoint_delay: converted,
        }
      ),
      withCheckpointPercentages(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"checkpoint_percentages" expected to be of type "list"';
        {
          checkpoint_percentages: converted,
        }
      ),
      withCheckpointPercentagesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"checkpoint_percentages" expected to be of type "list"';
        {
          checkpoint_percentages+: converted,
        }
      ),
      withInstanceWarmup(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_warmup" expected to be of type "string"';
        {
          instance_warmup: converted,
        }
      ),
      withMaxHealthyPercentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_healthy_percentage" expected to be of type "number"';
        {
          max_healthy_percentage: converted,
        }
      ),
      withMinHealthyPercentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_healthy_percentage" expected to be of type "number"';
        {
          min_healthy_percentage: converted,
        }
      ),
      withScaleInProtectedInstances(value):: (
        local converted = value;
        assert std.isString(converted) : '"scale_in_protected_instances" expected to be of type "string"';
        {
          scale_in_protected_instances: converted,
        }
      ),
      withSkipMatching(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"skip_matching" expected to be of type "bool"';
        {
          skip_matching: converted,
        }
      ),
      withStandbyInstances(value):: (
        local converted = value;
        assert std.isString(converted) : '"standby_instances" expected to be of type "string"';
        {
          standby_instances: converted,
        }
      ),
      alarm_specification:: {
        local block = self,
        new():: (
          {}
        ),
        withAlarms(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"alarms" expected to be of type "list"';
          {
            alarms: converted,
          }
        ),
        withAlarmsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"alarms" expected to be of type "list"';
          {
            alarms+: converted,
          }
        ),
      },
      withAlarmSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          alarm_specification: value,
        }
      ),
      withAlarmSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          alarm_specification+: converted,
        }
      ),
    },
    withPreferences(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        preferences: value,
      }
    ),
    withPreferencesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        preferences+: converted,
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
  mixed_instances_policy:: {
    local block = self,
    new():: (
      {}
    ),
    instances_distribution:: {
      local block = self,
      new():: (
        {}
      ),
      withOnDemandAllocationStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_demand_allocation_strategy" expected to be of type "string"';
        {
          on_demand_allocation_strategy: converted,
        }
      ),
      withOnDemandBaseCapacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"on_demand_base_capacity" expected to be of type "number"';
        {
          on_demand_base_capacity: converted,
        }
      ),
      withOnDemandPercentageAboveBaseCapacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"on_demand_percentage_above_base_capacity" expected to be of type "number"';
        {
          on_demand_percentage_above_base_capacity: converted,
        }
      ),
      withSpotAllocationStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_allocation_strategy" expected to be of type "string"';
        {
          spot_allocation_strategy: converted,
        }
      ),
      withSpotInstancePools(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"spot_instance_pools" expected to be of type "number"';
        {
          spot_instance_pools: converted,
        }
      ),
      withSpotMaxPrice(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_max_price" expected to be of type "string"';
        {
          spot_max_price: converted,
        }
      ),
    },
    launch_template:: {
      local block = self,
      new():: (
        {}
      ),
      launch_template_specification:: {
        local block = self,
        new():: (
          {}
        ),
        withLaunchTemplateId(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
          {
            launch_template_id: converted,
          }
        ),
        withLaunchTemplateName(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_name" expected to be of type "string"';
          {
            launch_template_name: converted,
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
      override:: {
        local block = self,
        new():: (
          {}
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
        instance_requirements:: {
          local block = self,
          new():: (
            {}
          ),
          withAcceleratorManufacturers(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_manufacturers" expected to be of type "set"';
            {
              accelerator_manufacturers: converted,
            }
          ),
          withAcceleratorManufacturersMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_manufacturers" expected to be of type "set"';
            {
              accelerator_manufacturers+: converted,
            }
          ),
          withAcceleratorNames(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_names" expected to be of type "set"';
            {
              accelerator_names: converted,
            }
          ),
          withAcceleratorNamesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_names" expected to be of type "set"';
            {
              accelerator_names+: converted,
            }
          ),
          withAcceleratorTypes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_types" expected to be of type "set"';
            {
              accelerator_types: converted,
            }
          ),
          withAcceleratorTypesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_types" expected to be of type "set"';
            {
              accelerator_types+: converted,
            }
          ),
          withAllowedInstanceTypes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_instance_types" expected to be of type "set"';
            {
              allowed_instance_types: converted,
            }
          ),
          withAllowedInstanceTypesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_instance_types" expected to be of type "set"';
            {
              allowed_instance_types+: converted,
            }
          ),
          withBareMetal(value):: (
            local converted = value;
            assert std.isString(converted) : '"bare_metal" expected to be of type "string"';
            {
              bare_metal: converted,
            }
          ),
          withBurstablePerformance(value):: (
            local converted = value;
            assert std.isString(converted) : '"burstable_performance" expected to be of type "string"';
            {
              burstable_performance: converted,
            }
          ),
          withCpuManufacturers(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cpu_manufacturers" expected to be of type "set"';
            {
              cpu_manufacturers: converted,
            }
          ),
          withCpuManufacturersMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cpu_manufacturers" expected to be of type "set"';
            {
              cpu_manufacturers+: converted,
            }
          ),
          withExcludedInstanceTypes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_instance_types" expected to be of type "set"';
            {
              excluded_instance_types: converted,
            }
          ),
          withExcludedInstanceTypesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_instance_types" expected to be of type "set"';
            {
              excluded_instance_types+: converted,
            }
          ),
          withInstanceGenerations(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_generations" expected to be of type "set"';
            {
              instance_generations: converted,
            }
          ),
          withInstanceGenerationsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_generations" expected to be of type "set"';
            {
              instance_generations+: converted,
            }
          ),
          withLocalStorage(value):: (
            local converted = value;
            assert std.isString(converted) : '"local_storage" expected to be of type "string"';
            {
              local_storage: converted,
            }
          ),
          withLocalStorageTypes(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"local_storage_types" expected to be of type "set"';
            {
              local_storage_types: converted,
            }
          ),
          withLocalStorageTypesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"local_storage_types" expected to be of type "set"';
            {
              local_storage_types+: converted,
            }
          ),
          withMaxSpotPriceAsPercentageOfOptimalOnDemandPrice(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_spot_price_as_percentage_of_optimal_on_demand_price" expected to be of type "number"';
            {
              max_spot_price_as_percentage_of_optimal_on_demand_price: converted,
            }
          ),
          withOnDemandMaxPricePercentageOverLowestPrice(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"on_demand_max_price_percentage_over_lowest_price" expected to be of type "number"';
            {
              on_demand_max_price_percentage_over_lowest_price: converted,
            }
          ),
          withRequireHibernateSupport(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"require_hibernate_support" expected to be of type "bool"';
            {
              require_hibernate_support: converted,
            }
          ),
          withSpotMaxPricePercentageOverLowestPrice(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"spot_max_price_percentage_over_lowest_price" expected to be of type "number"';
            {
              spot_max_price_percentage_over_lowest_price: converted,
            }
          ),
          accelerator_count:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          accelerator_total_memory_mib:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          baseline_ebs_bandwidth_mbps:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          memory_gib_per_vcpu:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          memory_mib:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          network_bandwidth_gbps:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          network_interface_count:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          total_local_storage_gb:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          vcpu_count:: {
            local block = self,
            new():: (
              {}
            ),
            withMax(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            withMin(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          withAcceleratorCount(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              accelerator_count: value,
            }
          ),
          withAcceleratorTotalMemoryMib(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              accelerator_total_memory_mib: value,
            }
          ),
          withBaselineEbsBandwidthMbps(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              baseline_ebs_bandwidth_mbps: value,
            }
          ),
          withMemoryGibPerVcpu(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              memory_gib_per_vcpu: value,
            }
          ),
          withMemoryMib(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              memory_mib: value,
            }
          ),
          withNetworkBandwidthGbps(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              network_bandwidth_gbps: value,
            }
          ),
          withNetworkInterfaceCount(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              network_interface_count: value,
            }
          ),
          withTotalLocalStorageGb(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              total_local_storage_gb: value,
            }
          ),
          withVcpuCount(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              vcpu_count: value,
            }
          ),
          withAcceleratorCountMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              accelerator_count+: converted,
            }
          ),
          withAcceleratorTotalMemoryMibMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              accelerator_total_memory_mib+: converted,
            }
          ),
          withBaselineEbsBandwidthMbpsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              baseline_ebs_bandwidth_mbps+: converted,
            }
          ),
          withMemoryGibPerVcpuMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              memory_gib_per_vcpu+: converted,
            }
          ),
          withMemoryMibMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              memory_mib+: converted,
            }
          ),
          withNetworkBandwidthGbpsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              network_bandwidth_gbps+: converted,
            }
          ),
          withNetworkInterfaceCountMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              network_interface_count+: converted,
            }
          ),
          withTotalLocalStorageGbMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              total_local_storage_gb+: converted,
            }
          ),
          withVcpuCountMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              vcpu_count+: converted,
            }
          ),
        },
        launch_template_specification:: {
          local block = self,
          new():: (
            {}
          ),
          withLaunchTemplateId(value):: (
            local converted = value;
            assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
            {
              launch_template_id: converted,
            }
          ),
          withLaunchTemplateName(value):: (
            local converted = value;
            assert std.isString(converted) : '"launch_template_name" expected to be of type "string"';
            {
              launch_template_name: converted,
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
        withInstanceRequirements(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            instance_requirements: value,
          }
        ),
        withLaunchTemplateSpecification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            launch_template_specification: value,
          }
        ),
        withInstanceRequirementsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            instance_requirements+: converted,
          }
        ),
        withLaunchTemplateSpecificationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            launch_template_specification+: converted,
          }
        ),
      },
      withLaunchTemplateSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_template_specification: value,
        }
      ),
      withOverride(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          override: value,
        }
      ),
      withLaunchTemplateSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_template_specification+: converted,
        }
      ),
      withOverrideMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          override+: converted,
        }
      ),
    },
    withInstancesDistribution(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instances_distribution: value,
      }
    ),
    withLaunchTemplate(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template: value,
      }
    ),
    withInstancesDistributionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instances_distribution+: converted,
      }
    ),
    withLaunchTemplateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template+: converted,
      }
    ),
  },
  tag:: {
    local block = self,
    new(key, propagateAtLaunch, value):: (
      {}
      + block.withKey(key)
      + block.withPropagateAtLaunch(propagateAtLaunch)
      + block.withValue(value)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withPropagateAtLaunch(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"propagate_at_launch" expected to be of type "bool"';
      {
        propagate_at_launch: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
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
  traffic_source:: {
    local block = self,
    new(identifier):: (
      {}
      + block.withIdentifier(identifier)
    ),
    withIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"identifier" expected to be of type "string"';
      {
        identifier: converted,
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
  warm_pool:: {
    local block = self,
    new():: (
      {}
    ),
    withMaxGroupPreparedCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_group_prepared_capacity" expected to be of type "number"';
      {
        max_group_prepared_capacity: converted,
      }
    ),
    withMinSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
      {
        min_size: converted,
      }
    ),
    withPoolState(value):: (
      local converted = value;
      assert std.isString(converted) : '"pool_state" expected to be of type "string"';
      {
        pool_state: converted,
      }
    ),
    instance_reuse_policy:: {
      local block = self,
      new():: (
        {}
      ),
      withReuseOnScaleIn(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"reuse_on_scale_in" expected to be of type "bool"';
        {
          reuse_on_scale_in: converted,
        }
      ),
    },
    withInstanceReusePolicy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instance_reuse_policy: value,
      }
    ),
    withInstanceReusePolicyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instance_reuse_policy+: converted,
      }
    ),
  },
  withAvailabilityZoneDistribution(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      availability_zone_distribution: value,
    }
  ),
  withCapacityReservationSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification: value,
    }
  ),
  withInitialLifecycleHook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_lifecycle_hook: value,
    }
  ),
  withInstanceMaintenancePolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_maintenance_policy: value,
    }
  ),
  withInstanceRefresh(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_refresh: value,
    }
  ),
  withLaunchTemplate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template: value,
    }
  ),
  withMixedInstancesPolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mixed_instances_policy: value,
    }
  ),
  withTag(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTrafficSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_source: value,
    }
  ),
  withWarmPool(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      warm_pool: value,
    }
  ),
  withAvailabilityZoneDistributionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      availability_zone_distribution+: converted,
    }
  ),
  withCapacityReservationSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification+: converted,
    }
  ),
  withInitialLifecycleHookMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_lifecycle_hook+: converted,
    }
  ),
  withInstanceMaintenancePolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_maintenance_policy+: converted,
    }
  ),
  withInstanceRefreshMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_refresh+: converted,
    }
  ),
  withLaunchTemplateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template+: converted,
    }
  ),
  withMixedInstancesPolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mixed_instances_policy+: converted,
    }
  ),
  withTagMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag+: converted,
    }
  ),
  withTrafficSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_source+: converted,
    }
  ),
  withWarmPoolMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      warm_pool+: converted,
    }
  ),
}
