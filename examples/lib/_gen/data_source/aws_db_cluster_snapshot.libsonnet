{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_cluster_snapshot",
          type:: "data",
          attributes:: ["allocated_storage", "availability_zones", "db_cluster_identifier", "db_cluster_snapshot_arn", "db_cluster_snapshot_identifier", "engine", "engine_version", "id", "include_public", "include_shared", "kms_key_id", "license_model", "most_recent", "port", "region", "snapshot_create_time", "snapshot_type", "source_db_cluster_snapshot_arn", "status", "storage_encrypted", "tags", "vpc_id"],
        },
      },
    }
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
  withIncludePublic(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_public" expected to be of type "bool"';
    {
      include_public: converted,
    }
  ),
  withIncludeShared(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_shared" expected to be of type "bool"';
    {
      include_shared: converted,
    }
  ),
  withMostRecent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"most_recent" expected to be of type "bool"';
    {
      most_recent: converted,
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
  withSnapshotType(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_type" expected to be of type "string"';
    {
      snapshot_type: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
