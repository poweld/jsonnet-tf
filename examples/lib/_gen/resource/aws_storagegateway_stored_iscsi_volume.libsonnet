{
  local block = self,
  new(terraformName, diskId, gatewayArn, networkInterfaceId, preserveExistingData, targetName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_stored_iscsi_volume",
          type:: "resource",
          attributes:: ["arn", "chap_enabled", "disk_id", "gateway_arn", "id", "kms_encrypted", "kms_key", "lun_number", "network_interface_id", "network_interface_port", "preserve_existing_data", "region", "snapshot_id", "tags", "tags_all", "target_arn", "target_name", "volume_attachment_status", "volume_id", "volume_size_in_bytes", "volume_status", "volume_type"],
        },
      },
    }
    + block.withDiskId(diskId)
    + block.withGatewayArn(gatewayArn)
    + block.withNetworkInterfaceId(networkInterfaceId)
    + block.withPreserveExistingData(preserveExistingData)
    + block.withTargetName(targetName)
  ),
  withDiskId(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_id" expected to be of type "string"';
    {
      disk_id: converted,
    }
  ),
  withGatewayArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_arn" expected to be of type "string"';
    {
      gateway_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKmsEncrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"kms_encrypted" expected to be of type "bool"';
    {
      kms_encrypted: converted,
    }
  ),
  withKmsKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key" expected to be of type "string"';
    {
      kms_key: converted,
    }
  ),
  withNetworkInterfaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
    }
  ),
  withPreserveExistingData(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"preserve_existing_data" expected to be of type "bool"';
    {
      preserve_existing_data: converted,
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
  withTargetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_name" expected to be of type "string"';
    {
      target_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
