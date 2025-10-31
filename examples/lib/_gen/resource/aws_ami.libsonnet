{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ami",
          type:: "resource",
          attributes:: ["architecture", "arn", "boot_mode", "deprecation_time", "description", "ena_support", "hypervisor", "id", "image_location", "image_owner_alias", "image_type", "imds_support", "kernel_id", "last_launched_time", "manage_ebs_snapshots", "name", "owner_id", "platform", "platform_details", "public", "ramdisk_id", "region", "root_device_name", "root_snapshot_id", "sriov_net_support", "tags", "tags_all", "tpm_support", "uefi_data", "usage_operation", "virtualization_type"],
        },
      },
    }
    + block.withName(name)
  ),
  withArchitecture(value):: (
    local converted = value;
    assert std.isString(converted) : '"architecture" expected to be of type "string"';
    {
      architecture: converted,
    }
  ),
  withBootMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"boot_mode" expected to be of type "string"';
    {
      boot_mode: converted,
    }
  ),
  withDeprecationTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"deprecation_time" expected to be of type "string"';
    {
      deprecation_time: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnaSupport(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ena_support" expected to be of type "bool"';
    {
      ena_support: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageLocation(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_location" expected to be of type "string"';
    {
      image_location: converted,
    }
  ),
  withImdsSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"imds_support" expected to be of type "string"';
    {
      imds_support: converted,
    }
  ),
  withKernelId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kernel_id" expected to be of type "string"';
    {
      kernel_id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withRamdiskId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ramdisk_id" expected to be of type "string"';
    {
      ramdisk_id: converted,
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
  withRootDeviceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_device_name" expected to be of type "string"';
    {
      root_device_name: converted,
    }
  ),
  withSriovNetSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"sriov_net_support" expected to be of type "string"';
    {
      sriov_net_support: converted,
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
  withTpmSupport(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpm_support" expected to be of type "string"';
    {
      tpm_support: converted,
    }
  ),
  withUefiData(value):: (
    local converted = value;
    assert std.isString(converted) : '"uefi_data" expected to be of type "string"';
    {
      uefi_data: converted,
    }
  ),
  withVirtualizationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtualization_type" expected to be of type "string"';
    {
      virtualization_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
    withOutpostArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
      {
        outpost_arn: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
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
}
