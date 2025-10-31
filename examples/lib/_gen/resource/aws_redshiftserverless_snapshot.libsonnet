{
  local block = self,
  new(terraformName, namespaceName, snapshotName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshiftserverless_snapshot",
          type:: "resource",
          attributes:: ["accounts_with_provisioned_restore_access", "accounts_with_restore_access", "admin_username", "arn", "id", "kms_key_id", "namespace_arn", "namespace_name", "owner_account", "region", "retention_period", "snapshot_name"],
        },
      },
    }
    + block.withNamespaceName(namespaceName)
    + block.withSnapshotName(snapshotName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNamespaceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_name" expected to be of type "string"';
    {
      namespace_name: converted,
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
  withSnapshotName(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_name" expected to be of type "string"';
    {
      snapshot_name: converted,
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
