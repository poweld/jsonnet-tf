{
  local block = self,
  new(terraformName, dbClusterIdentifier, dbClusterSnapshotIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_cluster_snapshot",
          type:: "resource",
          attributes:: ["allocated_storage", "availability_zones", "db_cluster_identifier", "db_cluster_snapshot_arn", "db_cluster_snapshot_identifier", "engine", "engine_version", "id", "kms_key_id", "license_model", "port", "region", "shared_accounts", "snapshot_type", "source_db_cluster_snapshot_arn", "status", "storage_encrypted", "tags", "tags_all", "vpc_id"],
        },
      },
    }
    + block.withDbClusterIdentifier(dbClusterIdentifier)
    + block.withDbClusterSnapshotIdentifier(dbClusterSnapshotIdentifier)
  ),
  withDbClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_identifier" expected to be of type "string"';
    {
      db_cluster_identifier: converted,
    }
  ),
  withDbClusterSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_snapshot_identifier" expected to be of type "string"';
    {
      db_cluster_snapshot_identifier: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
