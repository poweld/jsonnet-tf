{
  local block = self,
  new(terraformName, clusterIdentifier, snapshotIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_cluster_snapshot",
          type:: "resource",
          attributes:: ["arn", "cluster_identifier", "id", "kms_key_id", "manual_snapshot_retention_period", "owner_account", "region", "snapshot_identifier", "tags", "tags_all"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
    + block.withSnapshotIdentifier(snapshotIdentifier)
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withManualSnapshotRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"manual_snapshot_retention_period" expected to be of type "number"';
    {
      manual_snapshot_retention_period: converted,
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
  withSnapshotIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_identifier" expected to be of type "string"';
    {
      snapshot_identifier: converted,
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
}
