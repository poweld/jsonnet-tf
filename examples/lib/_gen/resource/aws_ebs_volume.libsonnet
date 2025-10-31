{
  local block = self,
  new(terraformName, availabilityZone):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ebs_volume",
          type:: "resource",
          attributes:: ["arn", "availability_zone", "create_time", "encrypted", "final_snapshot", "id", "iops", "kms_key_id", "multi_attach_enabled", "outpost_arn", "region", "size", "snapshot_id", "tags", "tags_all", "throughput", "type", "volume_initialization_rate"],
        },
      },
    }
    + block.withAvailabilityZone(availabilityZone)
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withEncrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
    }
  ),
  withFinalSnapshot(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"final_snapshot" expected to be of type "bool"';
    {
      final_snapshot: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withMultiAttachEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_attach_enabled" expected to be of type "bool"';
    {
      multi_attach_enabled: converted,
    }
  ),
  withOutpostArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
    {
      outpost_arn: converted,
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
  withSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"size" expected to be of type "number"';
    {
      size: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withVolumeInitializationRate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"volume_initialization_rate" expected to be of type "number"';
    {
      volume_initialization_rate: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
