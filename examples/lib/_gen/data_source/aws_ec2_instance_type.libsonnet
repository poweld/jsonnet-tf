{
  local block = self,
  new(terraformName, instanceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_instance_type",
          type:: "data",
          attributes:: ["auto_recovery_supported", "bandwidth_weightings", "bare_metal", "boot_modes", "burstable_performance_supported", "current_generation", "dedicated_hosts_supported", "default_cores", "default_network_card_index", "default_threads_per_core", "default_vcpus", "ebs_encryption_support", "ebs_nvme_support", "ebs_optimized_support", "ebs_performance_baseline_bandwidth", "ebs_performance_baseline_iops", "ebs_performance_baseline_throughput", "ebs_performance_maximum_bandwidth", "ebs_performance_maximum_iops", "ebs_performance_maximum_throughput", "efa_maximum_interfaces", "efa_supported", "ena_srd_supported", "ena_support", "encryption_in_transit_supported", "fpgas", "free_tier_eligible", "gpus", "hibernation_supported", "hypervisor", "id", "inference_accelerators", "instance_disks", "instance_storage_supported", "instance_type", "ipv6_supported", "maximum_ipv4_addresses_per_interface", "maximum_ipv6_addresses_per_interface", "maximum_network_cards", "maximum_network_interfaces", "media_accelerators", "memory_size", "network_cards", "network_performance", "neuron_devices", "nitro_enclaves_support", "nitro_tpm_support", "nitro_tpm_supported_versions", "phc_support", "region", "supported_architectures", "supported_cpu_features", "supported_placement_strategies", "supported_root_device_types", "supported_usages_classes", "supported_virtualization_types", "sustained_clock_speed", "total_fpga_memory", "total_gpu_memory", "total_inference_memory", "total_instance_storage", "total_media_memory", "total_neuron_device_memory", "valid_cores", "valid_threads_per_core"],
        },
      },
    }
    + block.withInstanceType(instanceType)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
