{
  local block = self,
  new(terraformName, dbClusterIdentifier, dbClusterSnapshotIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_docdb_cluster_snapshot",
          type:: "resource",
          attributes:: ["availability_zones", "db_cluster_identifier", "db_cluster_snapshot_arn", "db_cluster_snapshot_identifier", "engine", "engine_version", "id", "kms_key_id", "port", "region", "snapshot_type", "source_db_cluster_snapshot_arn", "status", "storage_encrypted", "vpc_id"],
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
