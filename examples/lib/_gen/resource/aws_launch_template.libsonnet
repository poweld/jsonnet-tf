{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_launch_template",
          type:: "resource",
          attributes:: ["arn", "default_version", "description", "disable_api_stop", "disable_api_termination", "ebs_optimized", "id", "image_id", "instance_initiated_shutdown_behavior", "instance_type", "kernel_id", "key_name", "latest_version", "name", "name_prefix", "ram_disk_id", "region", "security_group_names", "tags", "tags_all", "update_default_version", "user_data", "vpc_security_group_ids"],
        },
      },
    }
  ),
  withDefaultVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_version" expected to be of type "number"';
    {
      default_version: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDisableApiStop(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_api_stop" expected to be of type "bool"';
    {
      disable_api_stop: converted,
    }
  ),
  withDisableApiTermination(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_api_termination" expected to be of type "bool"';
    {
      disable_api_termination: converted,
    }
  ),
  withEbsOptimized(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_optimized" expected to be of type "string"';
    {
      ebs_optimized: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageId(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  withInstanceInitiatedShutdownBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_initiated_shutdown_behavior" expected to be of type "string"';
    {
      instance_initiated_shutdown_behavior: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  withKernelId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kernel_id" expected to be of type "string"';
    {
      kernel_id: converted,
    }
  ),
  withKeyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
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
  withRamDiskId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ram_disk_id" expected to be of type "string"';
    {
      ram_disk_id: converted,
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
  withSecurityGroupNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_names" expected to be of type "set"';
    {
      security_group_names: converted,
    }
  ),
  withSecurityGroupNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_names" expected to be of type "set"';
    {
      security_group_names+: converted,
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
  withUpdateDefaultVersion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"update_default_version" expected to be of type "bool"';
    {
      update_default_version: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  block_device_mappings:: {
    local block = self,
    new():: (
      {}
    ),
    withDeviceName(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    withNoDevice(value):: (
      local converted = value;
      assert std.isString(converted) : '"no_device" expected to be of type "string"';
      {
        no_device: converted,
      }
    ),
    withVirtualName(value):: (
      local converted = value;
      assert std.isString(converted) : '"virtual_name" expected to be of type "string"';
      {
        virtual_name: converted,
      }
    ),
    ebs:: {
      local block = self,
      new():: (
        {}
      ),
      withDeleteOnTermination(value):: (
        local converted = value;
        assert std.isString(converted) : '"delete_on_termination" expected to be of type "string"';
        {
          delete_on_termination: converted,
        }
      ),
      withEncrypted(value):: (
        local converted = value;
        assert std.isString(converted) : '"encrypted" expected to be of type "string"';
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
      withVolumeInitializationRate(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_initialization_rate" expected to be of type "number"';
        {
          volume_initialization_rate: converted,
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
    withEbs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs: value,
      }
    ),
    withEbsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs+: converted,
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
      withCapacityReservationId(value):: (
        local converted = value;
        assert std.isString(converted) : '"capacity_reservation_id" expected to be of type "string"';
        {
          capacity_reservation_id: converted,
        }
      ),
      withCapacityReservationResourceGroupArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"capacity_reservation_resource_group_arn" expected to be of type "string"';
        {
          capacity_reservation_resource_group_arn: converted,
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
  cpu_options:: {
    local block = self,
    new():: (
      {}
    ),
    withAmdSevSnp(value):: (
      local converted = value;
      assert std.isString(converted) : '"amd_sev_snp" expected to be of type "string"';
      {
        amd_sev_snp: converted,
      }
    ),
    withCoreCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"core_count" expected to be of type "number"';
      {
        core_count: converted,
      }
    ),
    withThreadsPerCore(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threads_per_core" expected to be of type "number"';
      {
        threads_per_core: converted,
      }
    ),
  },
  credit_specification:: {
    local block = self,
    new():: (
      {}
    ),
    withCpuCredits(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu_credits" expected to be of type "string"';
      {
        cpu_credits: converted,
      }
    ),
  },
  enclave_options:: {
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
  hibernation_options:: {
    local block = self,
    new(configured):: (
      {}
      + block.withConfigured(configured)
    ),
    withConfigured(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"configured" expected to be of type "bool"';
      {
        configured: converted,
      }
    ),
  },
  iam_instance_profile:: {
    local block = self,
    new():: (
      {}
    ),
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  instance_market_options:: {
    local block = self,
    new():: (
      {}
    ),
    withMarketType(value):: (
      local converted = value;
      assert std.isString(converted) : '"market_type" expected to be of type "string"';
      {
        market_type: converted,
      }
    ),
    spot_options:: {
      local block = self,
      new():: (
        {}
      ),
      withBlockDurationMinutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"block_duration_minutes" expected to be of type "number"';
        {
          block_duration_minutes: converted,
        }
      ),
      withInstanceInterruptionBehavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_interruption_behavior" expected to be of type "string"';
        {
          instance_interruption_behavior: converted,
        }
      ),
      withMaxPrice(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_price" expected to be of type "string"';
        {
          max_price: converted,
        }
      ),
      withSpotInstanceType(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_instance_type" expected to be of type "string"';
        {
          spot_instance_type: converted,
        }
      ),
      withValidUntil(value):: (
        local converted = value;
        assert std.isString(converted) : '"valid_until" expected to be of type "string"';
        {
          valid_until: converted,
        }
      ),
    },
    withSpotOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_options: value,
      }
    ),
    withSpotOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_options+: converted,
      }
    ),
  },
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
  license_specification:: {
    local block = self,
    new(licenseConfigurationArn):: (
      {}
      + block.withLicenseConfigurationArn(licenseConfigurationArn)
    ),
    withLicenseConfigurationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"license_configuration_arn" expected to be of type "string"';
      {
        license_configuration_arn: converted,
      }
    ),
  },
  maintenance_options:: {
    local block = self,
    new():: (
      {}
    ),
    withAutoRecovery(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_recovery" expected to be of type "string"';
      {
        auto_recovery: converted,
      }
    ),
  },
  metadata_options:: {
    local block = self,
    new():: (
      {}
    ),
    withHttpEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_endpoint" expected to be of type "string"';
      {
        http_endpoint: converted,
      }
    ),
    withHttpProtocolIpv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_protocol_ipv6" expected to be of type "string"';
      {
        http_protocol_ipv6: converted,
      }
    ),
    withHttpPutResponseHopLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"http_put_response_hop_limit" expected to be of type "number"';
      {
        http_put_response_hop_limit: converted,
      }
    ),
    withHttpTokens(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_tokens" expected to be of type "string"';
      {
        http_tokens: converted,
      }
    ),
    withInstanceMetadataTags(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_metadata_tags" expected to be of type "string"';
      {
        instance_metadata_tags: converted,
      }
    ),
  },
  monitoring:: {
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
  network_interfaces:: {
    local block = self,
    new():: (
      {}
    ),
    withAssociateCarrierIpAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"associate_carrier_ip_address" expected to be of type "string"';
      {
        associate_carrier_ip_address: converted,
      }
    ),
    withAssociatePublicIpAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"associate_public_ip_address" expected to be of type "string"';
      {
        associate_public_ip_address: converted,
      }
    ),
    withDeleteOnTermination(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete_on_termination" expected to be of type "string"';
      {
        delete_on_termination: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withDeviceIndex(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"device_index" expected to be of type "number"';
      {
        device_index: converted,
      }
    ),
    withInterfaceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"interface_type" expected to be of type "string"';
      {
        interface_type: converted,
      }
    ),
    withIpv4AddressCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ipv4_address_count" expected to be of type "number"';
      {
        ipv4_address_count: converted,
      }
    ),
    withIpv4Addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_addresses" expected to be of type "set"';
      {
        ipv4_addresses: converted,
      }
    ),
    withIpv4AddressesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_addresses" expected to be of type "set"';
      {
        ipv4_addresses+: converted,
      }
    ),
    withIpv4PrefixCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ipv4_prefix_count" expected to be of type "number"';
      {
        ipv4_prefix_count: converted,
      }
    ),
    withIpv4Prefixes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_prefixes" expected to be of type "set"';
      {
        ipv4_prefixes: converted,
      }
    ),
    withIpv4PrefixesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_prefixes" expected to be of type "set"';
      {
        ipv4_prefixes+: converted,
      }
    ),
    withIpv6AddressCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ipv6_address_count" expected to be of type "number"';
      {
        ipv6_address_count: converted,
      }
    ),
    withIpv6Addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
      {
        ipv6_addresses: converted,
      }
    ),
    withIpv6AddressesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
      {
        ipv6_addresses+: converted,
      }
    ),
    withIpv6PrefixCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ipv6_prefix_count" expected to be of type "number"';
      {
        ipv6_prefix_count: converted,
      }
    ),
    withIpv6Prefixes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_prefixes" expected to be of type "set"';
      {
        ipv6_prefixes: converted,
      }
    ),
    withIpv6PrefixesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_prefixes" expected to be of type "set"';
      {
        ipv6_prefixes+: converted,
      }
    ),
    withNetworkCardIndex(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"network_card_index" expected to be of type "number"';
      {
        network_card_index: converted,
      }
    ),
    withNetworkInterfaceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
      {
        network_interface_id: converted,
      }
    ),
    withPrimaryIpv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"primary_ipv6" expected to be of type "string"';
      {
        primary_ipv6: converted,
      }
    ),
    withPrivateIpAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"private_ip_address" expected to be of type "string"';
      {
        private_ip_address: converted,
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
    withSubnetId(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
      }
    ),
    connection_tracking_specification:: {
      local block = self,
      new():: (
        {}
      ),
      withTcpEstablishedTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"tcp_established_timeout" expected to be of type "number"';
        {
          tcp_established_timeout: converted,
        }
      ),
      withUdpStreamTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"udp_stream_timeout" expected to be of type "number"';
        {
          udp_stream_timeout: converted,
        }
      ),
      withUdpTimeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"udp_timeout" expected to be of type "number"';
        {
          udp_timeout: converted,
        }
      ),
    },
    ena_srd_specification:: {
      local block = self,
      new():: (
        {}
      ),
      withEnaSrdEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"ena_srd_enabled" expected to be of type "bool"';
        {
          ena_srd_enabled: converted,
        }
      ),
      ena_srd_udp_specification:: {
        local block = self,
        new():: (
          {}
        ),
        withEnaSrdUdpEnabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"ena_srd_udp_enabled" expected to be of type "bool"';
          {
            ena_srd_udp_enabled: converted,
          }
        ),
      },
      withEnaSrdUdpSpecification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ena_srd_udp_specification: value,
        }
      ),
      withEnaSrdUdpSpecificationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ena_srd_udp_specification+: converted,
        }
      ),
    },
    withConnectionTrackingSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_tracking_specification: value,
      }
    ),
    withEnaSrdSpecification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ena_srd_specification: value,
      }
    ),
    withConnectionTrackingSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_tracking_specification+: converted,
      }
    ),
    withEnaSrdSpecificationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ena_srd_specification+: converted,
      }
    ),
  },
  placement:: {
    local block = self,
    new():: (
      {}
    ),
    withAffinity(value):: (
      local converted = value;
      assert std.isString(converted) : '"affinity" expected to be of type "string"';
      {
        affinity: converted,
      }
    ),
    withAvailabilityZone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    withGroupId(value):: (
      local converted = value;
      assert std.isString(converted) : '"group_id" expected to be of type "string"';
      {
        group_id: converted,
      }
    ),
    withGroupName(value):: (
      local converted = value;
      assert std.isString(converted) : '"group_name" expected to be of type "string"';
      {
        group_name: converted,
      }
    ),
    withHostId(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_id" expected to be of type "string"';
      {
        host_id: converted,
      }
    ),
    withHostResourceGroupArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_resource_group_arn" expected to be of type "string"';
      {
        host_resource_group_arn: converted,
      }
    ),
    withPartitionNumber(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"partition_number" expected to be of type "number"';
      {
        partition_number: converted,
      }
    ),
    withSpreadDomain(value):: (
      local converted = value;
      assert std.isString(converted) : '"spread_domain" expected to be of type "string"';
      {
        spread_domain: converted,
      }
    ),
    withTenancy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenancy" expected to be of type "string"';
      {
        tenancy: converted,
      }
    ),
  },
  private_dns_name_options:: {
    local block = self,
    new():: (
      {}
    ),
    withEnableResourceNameDnsARecord(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_resource_name_dns_a_record" expected to be of type "bool"';
      {
        enable_resource_name_dns_a_record: converted,
      }
    ),
    withEnableResourceNameDnsAaaaRecord(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_resource_name_dns_aaaa_record" expected to be of type "bool"';
      {
        enable_resource_name_dns_aaaa_record: converted,
      }
    ),
    withHostnameType(value):: (
      local converted = value;
      assert std.isString(converted) : '"hostname_type" expected to be of type "string"';
      {
        hostname_type: converted,
      }
    ),
  },
  tag_specifications:: {
    local block = self,
    new():: (
      {}
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
  withBlockDeviceMappings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      block_device_mappings: value,
    }
  ),
  withCapacityReservationSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification: value,
    }
  ),
  withCpuOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cpu_options: value,
    }
  ),
  withCreditSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credit_specification: value,
    }
  ),
  withEnclaveOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enclave_options: value,
    }
  ),
  withHibernationOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hibernation_options: value,
    }
  ),
  withIamInstanceProfile(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iam_instance_profile: value,
    }
  ),
  withInstanceMarketOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_market_options: value,
    }
  ),
  withInstanceRequirements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_requirements: value,
    }
  ),
  withLicenseSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      license_specification: value,
    }
  ),
  withMaintenanceOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_options: value,
    }
  ),
  withMetadataOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_options: value,
    }
  ),
  withMonitoring(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring: value,
    }
  ),
  withNetworkInterfaces(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interfaces: value,
    }
  ),
  withPlacement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement: value,
    }
  ),
  withPrivateDnsNameOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_dns_name_options: value,
    }
  ),
  withTagSpecifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag_specifications: value,
    }
  ),
  withBlockDeviceMappingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      block_device_mappings+: converted,
    }
  ),
  withCapacityReservationSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification+: converted,
    }
  ),
  withCpuOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cpu_options+: converted,
    }
  ),
  withCreditSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credit_specification+: converted,
    }
  ),
  withEnclaveOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enclave_options+: converted,
    }
  ),
  withHibernationOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hibernation_options+: converted,
    }
  ),
  withIamInstanceProfileMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iam_instance_profile+: converted,
    }
  ),
  withInstanceMarketOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_market_options+: converted,
    }
  ),
  withInstanceRequirementsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_requirements+: converted,
    }
  ),
  withLicenseSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      license_specification+: converted,
    }
  ),
  withMaintenanceOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_options+: converted,
    }
  ),
  withMetadataOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_options+: converted,
    }
  ),
  withMonitoringMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring+: converted,
    }
  ),
  withNetworkInterfacesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interfaces+: converted,
    }
  ),
  withPlacementMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement+: converted,
    }
  ),
  withPrivateDnsNameOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_dns_name_options+: converted,
    }
  ),
  withTagSpecificationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag_specifications+: converted,
    }
  ),
}
