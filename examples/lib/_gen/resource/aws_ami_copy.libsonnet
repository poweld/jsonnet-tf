{
  local block = self,
  new(terraformName, name, sourceAmiId, sourceAmiRegion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ami_copy",
          type:: "resource",
          attributes:: ["architecture", "arn", "boot_mode", "deprecation_time", "description", "destination_outpost_arn", "ena_support", "encrypted", "hypervisor", "id", "image_location", "image_owner_alias", "image_type", "imds_support", "kernel_id", "kms_key_id", "last_launched_time", "manage_ebs_snapshots", "name", "owner_id", "platform", "platform_details", "public", "ramdisk_id", "region", "root_device_name", "root_snapshot_id", "source_ami_id", "source_ami_region", "sriov_net_support", "tags", "tags_all", "tpm_support", "uefi_data", "usage_operation", "virtualization_type"],
        },
      },
    }
    + block.withName(name)
    + block.withSourceAmiId(sourceAmiId)
    + block.withSourceAmiRegion(sourceAmiRegion)
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
  withDestinationOutpostArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_outpost_arn" expected to be of type "string"';
    {
      destination_outpost_arn: converted,
    }
  ),
  withEncrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  withSourceAmiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_ami_id" expected to be of type "string"';
    {
      source_ami_id: converted,
    }
  ),
  withSourceAmiRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_ami_region" expected to be of type "string"';
    {
      source_ami_region: converted,
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
