{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_spot_instance_request",
          type:: "resource",
          attributes:: ["ami", "arn", "associate_public_ip_address", "availability_zone", "disable_api_stop", "disable_api_termination", "ebs_optimized", "enable_primary_ipv6", "force_destroy", "get_password_data", "hibernation", "host_id", "host_resource_group_arn", "iam_instance_profile", "id", "instance_initiated_shutdown_behavior", "instance_interruption_behavior", "instance_state", "instance_type", "ipv6_address_count", "ipv6_addresses", "key_name", "launch_group", "monitoring", "outpost_arn", "password_data", "placement_group", "placement_group_id", "placement_partition_number", "primary_network_interface", "primary_network_interface_id", "private_dns", "private_ip", "public_dns", "public_ip", "region", "secondary_private_ips", "security_groups", "source_dest_check", "spot_bid_status", "spot_instance_id", "spot_price", "spot_request_state", "spot_type", "subnet_id", "tags", "tags_all", "tenancy", "user_data", "user_data_base64", "user_data_replace_on_change", "valid_from", "valid_until", "volume_tags", "vpc_security_group_ids", "wait_for_fulfillment"],
        },
      },
    }
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
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  withEnablePrimaryIpv6(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_primary_ipv6" expected to be of type "bool"';
    {
      enable_primary_ipv6: converted,
    }
  ),
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  withGetPasswordData(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"get_password_data" expected to be of type "bool"';
    {
      get_password_data: converted,
    }
  ),
  withHibernation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hibernation" expected to be of type "bool"';
    {
      hibernation: converted,
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
  withIamInstanceProfile(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_instance_profile" expected to be of type "string"';
    {
      iam_instance_profile: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceInitiatedShutdownBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_initiated_shutdown_behavior" expected to be of type "string"';
    {
      instance_initiated_shutdown_behavior: converted,
    }
  ),
  withInstanceInterruptionBehavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_interruption_behavior" expected to be of type "string"';
    {
      instance_interruption_behavior: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
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
    assert std.isArray(converted) : '"ipv6_addresses" expected to be of type "list"';
    {
      ipv6_addresses: converted,
    }
  ),
  withIpv6AddressesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_addresses" expected to be of type "list"';
    {
      ipv6_addresses+: converted,
    }
  ),
  withKeyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  withLaunchGroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_group" expected to be of type "string"';
    {
      launch_group: converted,
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
  withPlacementGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_group_id" expected to be of type "string"';
    {
      placement_group_id: converted,
    }
  ),
  withPlacementPartitionNumber(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"placement_partition_number" expected to be of type "number"';
    {
      placement_partition_number: converted,
    }
  ),
  withPrivateIp(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip" expected to be of type "string"';
    {
      private_ip: converted,
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
  withSecondaryPrivateIps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_private_ips" expected to be of type "set"';
    {
      secondary_private_ips: converted,
    }
  ),
  withSecondaryPrivateIpsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"secondary_private_ips" expected to be of type "set"';
    {
      secondary_private_ips+: converted,
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
  withSourceDestCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"source_dest_check" expected to be of type "bool"';
    {
      source_dest_check: converted,
    }
  ),
  withSpotPrice(value):: (
    local converted = value;
    assert std.isString(converted) : '"spot_price" expected to be of type "string"';
    {
      spot_price: converted,
    }
  ),
  withSpotType(value):: (
    local converted = value;
    assert std.isString(converted) : '"spot_type" expected to be of type "string"';
    {
      spot_type: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withTenancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenancy" expected to be of type "string"';
    {
      tenancy: converted,
    }
  ),
  withUserData(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data" expected to be of type "string"';
    {
      user_data: converted,
    }
  ),
  withUserDataBase64(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data_base64" expected to be of type "string"';
    {
      user_data_base64: converted,
    }
  ),
  withUserDataReplaceOnChange(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"user_data_replace_on_change" expected to be of type "bool"';
    {
      user_data_replace_on_change: converted,
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
  withVolumeTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"volume_tags" expected to be of type "map"';
    {
      volume_tags: converted,
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
  ephemeral_block_device:: {
    local block = self,
    new(deviceName):: (
      {}
      + block.withDeviceName(deviceName)
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
      assert std.isBoolean(converted) : '"no_device" expected to be of type "bool"';
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
  network_interface:: {
    local block = self,
    new(deviceIndex, networkInterfaceId):: (
      {}
      + block.withDeviceIndex(deviceIndex)
      + block.withNetworkInterfaceId(networkInterfaceId)
    ),
    withDeleteOnTermination(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
      {
        delete_on_termination: converted,
      }
    ),
    withDeviceIndex(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"device_index" expected to be of type "number"';
      {
        device_index: converted,
      }
    ),
    withNetworkInterfaceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
      {
        network_interface_id: converted,
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
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
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
  withEbsBlockDevice(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_block_device: value,
    }
  ),
  withEnclaveOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enclave_options: value,
    }
  ),
  withEphemeralBlockDevice(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_block_device: value,
    }
  ),
  withLaunchTemplate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template: value,
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
  withNetworkInterface(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interface: value,
    }
  ),
  withPrivateDnsNameOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_dns_name_options: value,
    }
  ),
  withRootBlockDevice(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_block_device: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
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
  withEbsBlockDeviceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_block_device+: converted,
    }
  ),
  withEnclaveOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enclave_options+: converted,
    }
  ),
  withEphemeralBlockDeviceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_block_device+: converted,
    }
  ),
  withLaunchTemplateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template+: converted,
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
  withNetworkInterfaceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interface+: converted,
    }
  ),
  withPrivateDnsNameOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_dns_name_options+: converted,
    }
  ),
  withRootBlockDeviceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_block_device+: converted,
    }
  ),
}
