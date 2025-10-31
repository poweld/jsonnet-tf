{
  local block = self,
  new(terraformName, gatewayArn, networkInterfaceId, targetName, volumeSizeInBytes):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_cached_iscsi_volume",
          type:: "resource",
          attributes:: ["arn", "chap_enabled", "gateway_arn", "id", "kms_encrypted", "kms_key", "lun_number", "network_interface_id", "network_interface_port", "region", "snapshot_id", "source_volume_arn", "tags", "tags_all", "target_arn", "target_name", "volume_arn", "volume_id", "volume_size_in_bytes"],
        },
      },
    }
    + block.withGatewayArn(gatewayArn)
    + block.withNetworkInterfaceId(networkInterfaceId)
    + block.withTargetName(targetName)
    + block.withVolumeSizeInBytes(volumeSizeInBytes)
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
  withSourceVolumeArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_volume_arn" expected to be of type "string"';
    {
      source_volume_arn: converted,
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
  withVolumeSizeInBytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"volume_size_in_bytes" expected to be of type "number"';
    {
      volume_size_in_bytes: converted,
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
