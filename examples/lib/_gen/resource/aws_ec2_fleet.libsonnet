{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_fleet",
          type:: "resource",
          attributes:: ["arn", "context", "excess_capacity_termination_policy", "fleet_state", "fulfilled_capacity", "fulfilled_on_demand_capacity", "id", "region", "replace_unhealthy_instances", "tags", "tags_all", "terminate_instances", "terminate_instances_with_expiration", "type", "valid_from", "valid_until"],
        },
      },
    }
  ),
  withContext(value):: (
    local converted = value;
    assert std.isString(converted) : '"context" expected to be of type "string"';
    {
      context: converted,
    }
  ),
  withExcessCapacityTerminationPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"excess_capacity_termination_policy" expected to be of type "string"';
    {
      excess_capacity_termination_policy: converted,
    }
  ),
  withFleetState(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_state" expected to be of type "string"';
    {
      fleet_state: converted,
    }
  ),
  withFulfilledCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"fulfilled_capacity" expected to be of type "number"';
    {
      fulfilled_capacity: converted,
    }
  ),
  withFulfilledOnDemandCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"fulfilled_on_demand_capacity" expected to be of type "number"';
    {
      fulfilled_on_demand_capacity: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withReplaceUnhealthyInstances(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"replace_unhealthy_instances" expected to be of type "bool"';
    {
      replace_unhealthy_instances: converted,
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
  withTerminateInstances(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"terminate_instances" expected to be of type "bool"';
    {
      terminate_instances: converted,
    }
  ),
  withTerminateInstancesWithExpiration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"terminate_instances_with_expiration" expected to be of type "bool"';
    {
      terminate_instances_with_expiration: converted,
    }
  ),
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withValidFrom(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_from" expected to be of type "string"';
    {
      valid_from: converted,
    }
  ),
  withValidUntil(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_until" expected to be of type "string"';
    {
      valid_until: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  fleet_instance_set:: {
    local block = self,
    new():: (
      {}
    ),
    withInstanceIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"instance_ids" expected to be of type "list"';
      {
        instance_ids: converted,
      }
    ),
    withInstanceIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"instance_ids" expected to be of type "list"';
      {
        instance_ids+: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withLifecycle(value):: (
      local converted = value;
      assert std.isString(converted) : '"lifecycle" expected to be of type "string"';
      {
        lifecycle: converted,
      }
    ),
    withPlatform(value):: (
      local converted = value;
      assert std.isString(converted) : '"platform" expected to be of type "string"';
      {
        platform: converted,
      }
    ),
  },
  launch_template_config:: {
    local block = self,
    new():: (
      {}
    ),
    launch_template_specification:: {
      local block = self,
      new(version):: (
        {}
        + block.withVersion(version)
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
      withAvailabilityZone(value):: (
        local converted = value;
        assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
        {
          availability_zone: converted,
        }
      ),
      withInstanceType(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_type" expected to be of type "string"';
        {
          instance_type: converted,
        }
      ),
      withMaxPrice(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_price" expected to be of type "string"';
        {
          max_price: converted,
        }
      ),
      withPriority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      withSubnetId(value):: (
        local converted = value;
        assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
        {
          subnet_id: converted,
        }
      ),
      withWeightedCapacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weighted_capacity" expected to be of type "number"';
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
          new(min):: (
            {}
            + block.withMin(min)
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
          new(min):: (
            {}
            + block.withMin(min)
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
      withInstanceRequirements(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          instance_requirements: value,
        }
      ),
      withInstanceRequirementsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          instance_requirements+: converted,
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
  on_demand_options:: {
    local block = self,
    new():: (
      {}
    ),
    withAllocationStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
      {
        allocation_strategy: converted,
      }
    ),
    withMaxTotalPrice(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_total_price" expected to be of type "string"';
      {
        max_total_price: converted,
      }
    ),
    withMinTargetCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_target_capacity" expected to be of type "number"';
      {
        min_target_capacity: converted,
      }
    ),
    withSingleAvailabilityZone(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"single_availability_zone" expected to be of type "bool"';
      {
        single_availability_zone: converted,
      }
    ),
    withSingleInstanceType(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"single_instance_type" expected to be of type "bool"';
      {
        single_instance_type: converted,
      }
    ),
    capacity_reservation_options:: {
      local block = self,
      new():: (
        {}
      ),
      withUsageStrategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"usage_strategy" expected to be of type "string"';
        {
          usage_strategy: converted,
        }
      ),
    },
    withCapacityReservationOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_options: value,
      }
    ),
    withCapacityReservationOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_options+: converted,
      }
    ),
  },
  spot_options:: {
    local block = self,
    new():: (
      {}
    ),
    withAllocationStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
      {
        allocation_strategy: converted,
      }
    ),
    withInstanceInterruptionBehavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_interruption_behavior" expected to be of type "string"';
      {
        instance_interruption_behavior: converted,
      }
    ),
    withInstancePoolsToUseCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_pools_to_use_count" expected to be of type "number"';
      {
        instance_pools_to_use_count: converted,
      }
    ),
    withMaxTotalPrice(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_total_price" expected to be of type "string"';
      {
        max_total_price: converted,
      }
    ),
    withMinTargetCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_target_capacity" expected to be of type "number"';
      {
        min_target_capacity: converted,
      }
    ),
    withSingleAvailabilityZone(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"single_availability_zone" expected to be of type "bool"';
      {
        single_availability_zone: converted,
      }
    ),
    withSingleInstanceType(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"single_instance_type" expected to be of type "bool"';
      {
        single_instance_type: converted,
      }
    ),
    maintenance_strategies:: {
      local block = self,
      new():: (
        {}
      ),
      capacity_rebalance:: {
        local block = self,
        new():: (
          {}
        ),
        withReplacementStrategy(value):: (
          local converted = value;
          assert std.isString(converted) : '"replacement_strategy" expected to be of type "string"';
          {
            replacement_strategy: converted,
          }
        ),
        withTerminationDelay(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"termination_delay" expected to be of type "number"';
          {
            termination_delay: converted,
          }
        ),
      },
      withCapacityRebalance(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_rebalance: value,
        }
      ),
      withCapacityRebalanceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_rebalance+: converted,
        }
      ),
    },
    withMaintenanceStrategies(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maintenance_strategies: value,
      }
    ),
    withMaintenanceStrategiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maintenance_strategies+: converted,
      }
    ),
  },
  target_capacity_specification:: {
    local block = self,
    new(defaultTargetCapacityType, totalTargetCapacity):: (
      {}
      + block.withDefaultTargetCapacityType(defaultTargetCapacityType)
      + block.withTotalTargetCapacity(totalTargetCapacity)
    ),
    withDefaultTargetCapacityType(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_target_capacity_type" expected to be of type "string"';
      {
        default_target_capacity_type: converted,
      }
    ),
    withOnDemandTargetCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"on_demand_target_capacity" expected to be of type "number"';
      {
        on_demand_target_capacity: converted,
      }
    ),
    withSpotTargetCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"spot_target_capacity" expected to be of type "number"';
      {
        spot_target_capacity: converted,
      }
    ),
    withTargetCapacityUnitType(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_capacity_unit_type" expected to be of type "string"';
      {
        target_capacity_unit_type: converted,
      }
    ),
    withTotalTargetCapacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"total_target_capacity" expected to be of type "number"';
      {
        total_target_capacity: converted,
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
  withFleetInstanceSet(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fleet_instance_set: value,
    }
  ),
  withLaunchTemplateConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template_config: value,
    }
  ),
  withOnDemandOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_demand_options: value,
    }
  ),
  withSpotOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spot_options: value,
    }
  ),
  withTargetCapacitySpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_capacity_specification: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withFleetInstanceSetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fleet_instance_set+: converted,
    }
  ),
  withLaunchTemplateConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template_config+: converted,
    }
  ),
  withOnDemandOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_demand_options+: converted,
    }
  ),
  withSpotOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spot_options+: converted,
    }
  ),
  withTargetCapacitySpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_capacity_specification+: converted,
    }
  ),
}
