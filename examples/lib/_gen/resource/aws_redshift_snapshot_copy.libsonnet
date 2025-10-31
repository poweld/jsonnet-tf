{
  local block = self,
  new(terraformName, clusterIdentifier, destinationRegion):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_snapshot_copy",
          type:: "resource",
          attributes:: ["cluster_identifier", "destination_region", "id", "manual_snapshot_retention_period", "region", "retention_period", "snapshot_copy_grant_name"],
        },
      },
    }
    + block.withClusterIdentifier(clusterIdentifier)
    + block.withDestinationRegion(destinationRegion)
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withDestinationRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_region" expected to be of type "string"';
    {
      destination_region: converted,
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
  withRetentionPeriod(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period" expected to be of type "number"';
    {
      retention_period: converted,
    }
  ),
  withSnapshotCopyGrantName(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_copy_grant_name" expected to be of type "string"';
    {
      snapshot_copy_grant_name: converted,
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
