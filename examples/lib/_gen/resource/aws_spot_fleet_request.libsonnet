{
  local block = self,
  new(terraformName, iamFleetRole, targetCapacity):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_spot_fleet_request",
          type:: "resource",
          attributes:: ["allocation_strategy", "client_token", "context", "excess_capacity_termination_policy", "fleet_type", "iam_fleet_role", "id", "instance_interruption_behaviour", "instance_pools_to_use_count", "load_balancers", "on_demand_allocation_strategy", "on_demand_max_total_price", "on_demand_target_capacity", "region", "replace_unhealthy_instances", "spot_price", "spot_request_state", "tags", "tags_all", "target_capacity", "target_capacity_unit_type", "target_group_arns", "terminate_instances_on_delete", "terminate_instances_with_expiration", "valid_from", "valid_until", "wait_for_fulfillment"],
        },
      },
    }
    + block.withIamFleetRole(iamFleetRole)
    + block.withTargetCapacity(targetCapacity)
  ),
  withAllocationStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
    {
      allocation_strategy: converted,
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
  withFleetType(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_type" expected to be of type "string"';
    {
      fleet_type: converted,
    }
  ),
  withIamFleetRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_fleet_role" expected to be of type "string"';
    {
      iam_fleet_role: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceInterruptionBehaviour(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_interruption_behaviour" expected to be of type "string"';
    {
      instance_interruption_behaviour: converted,
    }
  ),
  withInstancePoolsToUseCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_pools_to_use_count" expected to be of type "number"';
    {
      instance_pools_to_use_count: converted,
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
  withOnDemandAllocationStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"on_demand_allocation_strategy" expected to be of type "string"';
    {
      on_demand_allocation_strategy: converted,
    }
  ),
  withOnDemandMaxTotalPrice(value):: (
    local converted = value;
    assert std.isString(converted) : '"on_demand_max_total_price" expected to be of type "string"';
    {
      on_demand_max_total_price: converted,
    }
  ),
  withOnDemandTargetCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"on_demand_target_capacity" expected to be of type "number"';
    {
      on_demand_target_capacity: converted,
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
  withSpotPrice(value):: (
    local converted = value;
    assert std.isString(converted) : '"spot_price" expected to be of type "string"';
    {
      spot_price: converted,
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
  withTargetCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"target_capacity" expected to be of type "number"';
    {
      target_capacity: converted,
    }
  ),
  withTargetCapacityUnitType(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_capacity_unit_type" expected to be of type "string"';
    {
      target_capacity_unit_type: converted,
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
  withTerminateInstancesOnDelete(value):: (
    local converted = value;
    assert std.isString(converted) : '"terminate_instances_on_delete" expected to be of type "string"';
    {
      terminate_instances_on_delete: converted,
    }
  ),
  withTerminateInstancesWithExpiration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"terminate_instances_with_expiration" expected to be of type "bool"';
    {
      terminate_instances_with_expiration: converted,
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
  withWaitForFulfillment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_fulfillment" expected to be of type "bool"';
    {
      wait_for_fulfillment: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  launch_specification:: {
    local block = self,
    new(ami, instanceType):: (
      {}
      + block.withAmi(ami)
      + block.withInstanceType(instanceType)
    ),
    withAmi(value):: (
      local converted = value;
      assert std.isString(converted) : '"ami" expected to be of type "string"';
      {
        ami: converted,
      }
    ),
    withAssociatePublicIpAddress(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"associate_public_ip_address" expected to be of type "bool"';
      {
        associate_public_ip_address: converted,
      }
    ),
    withAvailabilityZone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    withEbsOptimized(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
      {
        ebs_optimized: converted,
      }
    ),
    withIamInstanceProfile(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_instance_profile" expected to be of type "string"';
      {
        iam_instance_profile: converted,
      }
    ),
    withIamInstanceProfileArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_instance_profile_arn" expected to be of type "string"';
      {
        iam_instance_profile_arn: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    withKeyName(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_name" expected to be of type "string"';
      {
        key_name: converted,
      }
    ),
    withMonitoring(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"monitoring" expected to be of type "bool"';
      {
        monitoring: converted,
      }
    ),
    withPlacementGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"placement_group" expected to be of type "string"';
      {
        placement_group: converted,
      }
    ),
    withPlacementTenancy(value):: (
      local converted = value;
      assert std.isString(converted) : '"placement_tenancy" expected to be of type "string"';
      {
        placement_tenancy: converted,
      }
    ),
    withSpotPrice(value):: (
      local converted = value;
      assert std.isString(converted) : '"spot_price" expected to be of type "string"';
      {
        spot_price: converted,
      }
    ),
    withSubnetId(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
      }
    ),
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    withUserData(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_data" expected to be of type "string"';
      {
        user_data: converted,
      }
    ),
    withVpcSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
      {
        vpc_security_group_ids: converted,
      }
    ),
    withVpcSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
      {
        vpc_security_group_ids+: converted,
      }
    ),
    withWeightedCapacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"weighted_capacity" expected to be of type "string"';
      {
        weighted_capacity: converted,
      }
    ),
    ebs_block_device:: {
      local block = self,
      new(deviceName):: (
        {}
        + block.withDeviceName(deviceName)
      ),
      withDeleteOnTermination(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
        {
          delete_on_termination: converted,
        }
      ),
      withDeviceName(value):: (
        local converted = value;
        assert std.isString(converted) : '"device_name" expected to be of type "string"';
        {
          device_name: converted,
        }
      ),
      withEncrypted(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
        {
          encrypted: converted,
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
      withVolumeSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
        {
          volume_size: converted,
        }
      ),
      withVolumeType(value):: (
        local converted = value;
        assert std.isString(converted) : '"volume_type" expected to be of type "string"';
        {
          volume_type: converted,
        }
      ),
    },
    ephemeral_block_device:: {
      local block = self,
      new(deviceName, virtualName):: (
        {}
        + block.withDeviceName(deviceName)
        + block.withVirtualName(virtualName)
      ),
      withDeviceName(value):: (
        local converted = value;
        assert std.isString(converted) : '"device_name" expected to be of type "string"';
        {
          device_name: converted,
        }
      ),
      withVirtualName(value):: (
        local converted = value;
        assert std.isString(converted) : '"virtual_name" expected to be of type "string"';
        {
          virtual_name: converted,
        }
      ),
    },
    root_block_device:: {
      local block = self,
      new():: (
        {}
      ),
      withDeleteOnTermination(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
        {
          delete_on_termination: converted,
        }
      ),
      withEncrypted(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
        {
          encrypted: converted,
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
      withThroughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
        }
      ),
      withVolumeSize(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
        {
          volume_size: converted,
        }
      ),
      withVolumeType(value):: (
        local converted = value;
        assert std.isString(converted) : '"volume_type" expected to be of type "string"';
        {
          volume_type: converted,
        }
      ),
    },
    withEbsBlockDevice(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_block_device: value,
      }
    ),
    withEphemeralBlockDevice(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ephemeral_block_device: value,
      }
    ),
    withRootBlockDevice(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        root_block_device: value,
      }
    ),
    withEbsBlockDeviceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_block_device+: converted,
      }
    ),
    withEphemeralBlockDeviceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ephemeral_block_device+: converted,
      }
    ),
    withRootBlockDeviceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        root_block_device+: converted,
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
    overrides:: {
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
      withPriority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      withSpotPrice(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_price" expected to be of type "string"';
        {
          spot_price: converted,
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
    withOverrides(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        overrides: value,
      }
    ),
    withLaunchTemplateSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template_specification+: converted,
      }
    ),
    withOverridesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        overrides+: converted,
      }
    ),
  },
  spot_maintenance_strategies:: {
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
  withLaunchSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_specification: value,
    }
  ),
  withLaunchTemplateConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template_config: value,
    }
  ),
  withSpotMaintenanceStrategies(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spot_maintenance_strategies: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withLaunchSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_specification+: converted,
    }
  ),
  withLaunchTemplateConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template_config+: converted,
    }
  ),
  withSpotMaintenanceStrategiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spot_maintenance_strategies+: converted,
    }
  ),
}
