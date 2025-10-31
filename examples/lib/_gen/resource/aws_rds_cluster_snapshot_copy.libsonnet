{
  local block = self,
  new(terraformName, sourceDbClusterSnapshotIdentifier, targetDbClusterSnapshotIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_cluster_snapshot_copy",
          type:: "resource",
          attributes:: ["allocated_storage", "copy_tags", "db_cluster_snapshot_arn", "destination_region", "engine", "engine_version", "id", "kms_key_id", "license_model", "presigned_url", "region", "shared_accounts", "snapshot_type", "source_db_cluster_snapshot_identifier", "storage_encrypted", "storage_type", "tags", "tags_all", "target_db_cluster_snapshot_identifier", "vpc_id"],
        },
      },
    }
    + block.withSourceDbClusterSnapshotIdentifier(sourceDbClusterSnapshotIdentifier)
    + block.withTargetDbClusterSnapshotIdentifier(targetDbClusterSnapshotIdentifier)
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
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  withSourceDbClusterSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_db_cluster_snapshot_identifier" expected to be of type "string"';
    {
      source_db_cluster_snapshot_identifier: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTargetDbClusterSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_db_cluster_snapshot_identifier" expected to be of type "string"';
    {
      target_db_cluster_snapshot_identifier: converted,
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
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
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
