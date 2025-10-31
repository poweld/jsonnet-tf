{
  local block = self,
  new(terraformName, sourceDbSnapshotIdentifier, targetDbSnapshotIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_snapshot_copy",
          type:: "resource",
          attributes:: ["allocated_storage", "availability_zone", "copy_tags", "db_snapshot_arn", "destination_region", "encrypted", "engine", "engine_version", "id", "iops", "kms_key_id", "license_model", "option_group_name", "port", "presigned_url", "region", "shared_accounts", "snapshot_type", "source_db_snapshot_identifier", "source_region", "storage_type", "tags", "tags_all", "target_custom_availability_zone", "target_db_snapshot_identifier", "vpc_id"],
        },
      },
    }
    + block.withSourceDbSnapshotIdentifier(sourceDbSnapshotIdentifier)
    + block.withTargetDbSnapshotIdentifier(targetDbSnapshotIdentifier)
  ),
  withCopyTags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags" expected to be of type "bool"';
    {
      copy_tags: converted,
    }
  ),
  withDestinationRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_region" expected to be of type "string"';
    {
      destination_region: converted,
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
  withOptionGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"option_group_name" expected to be of type "string"';
    {
      option_group_name: converted,
    }
  ),
  withPresignedUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"presigned_url" expected to be of type "string"';
    {
      presigned_url: converted,
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
  withSharedAccounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shared_accounts" expected to be of type "set"';
    {
      shared_accounts: converted,
    }
  ),
  withSharedAccountsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shared_accounts" expected to be of type "set"';
    {
      shared_accounts+: converted,
    }
  ),
  withSourceDbSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_db_snapshot_identifier" expected to be of type "string"';
    {
      source_db_snapshot_identifier: converted,
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
  withTargetCustomAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_custom_availability_zone" expected to be of type "string"';
    {
      target_custom_availability_zone: converted,
    }
  ),
  withTargetDbSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_db_snapshot_identifier" expected to be of type "string"';
    {
      target_db_snapshot_identifier: converted,
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
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
