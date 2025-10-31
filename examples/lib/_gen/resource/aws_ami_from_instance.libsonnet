{
  local block = self,
  new(terraformName, name, sourceInstanceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ami_from_instance",
          type:: "resource",
          attributes:: ["architecture", "arn", "boot_mode", "deprecation_time", "description", "ena_support", "hypervisor", "id", "image_location", "image_owner_alias", "image_type", "imds_support", "kernel_id", "last_launched_time", "manage_ebs_snapshots", "name", "owner_id", "platform", "platform_details", "public", "ramdisk_id", "region", "root_device_name", "root_snapshot_id", "snapshot_without_reboot", "source_instance_id", "sriov_net_support", "tags", "tags_all", "tpm_support", "uefi_data", "usage_operation", "virtualization_type"],
        },
      },
    }
    + block.withName(name)
    + block.withSourceInstanceId(sourceInstanceId)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSnapshotWithoutReboot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"snapshot_without_reboot" expected to be of type "bool"';
    {
      snapshot_without_reboot: converted,
    }
  ),
  withSourceInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_instance_id" expected to be of type "string"';
    {
      source_instance_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  ebs_block_device:: {
    local block = self,
    new():: (
      {}
    ),
  },
  ephemeral_block_device:: {
    local block = self,
    new():: (
      {}
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
