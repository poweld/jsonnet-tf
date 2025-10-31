{
  local block = self,
  new(terraformName, sourceRegion, sourceSnapshotId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ebs_snapshot_copy",
          type:: "resource",
          attributes:: ["arn", "completion_duration_minutes", "data_encryption_key_id", "description", "encrypted", "id", "kms_key_id", "outpost_arn", "owner_alias", "owner_id", "permanent_restore", "region", "source_region", "source_snapshot_id", "storage_tier", "tags", "tags_all", "temporary_restore_days", "volume_id", "volume_size"],
        },
      },
    }
    + block.withSourceRegion(sourceRegion)
    + block.withSourceSnapshotId(sourceSnapshotId)
  ),
  withCompletionDurationMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"completion_duration_minutes" expected to be of type "number"';
    {
      completion_duration_minutes: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withPermanentRestore(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"permanent_restore" expected to be of type "bool"';
    {
      permanent_restore: converted,
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
  withSourceRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_region" expected to be of type "string"';
    {
      source_region: converted,
    }
  ),
  withSourceSnapshotId(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_snapshot_id" expected to be of type "string"';
    {
      source_snapshot_id: converted,
    }
  ),
  withStorageTier(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_tier" expected to be of type "string"';
    {
      storage_tier: converted,
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
  withTemporaryRestoreDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"temporary_restore_days" expected to be of type "number"';
    {
      temporary_restore_days: converted,
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
